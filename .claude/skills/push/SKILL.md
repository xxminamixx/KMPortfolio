---
name: push
description: Use when the user asks to push the current branch to the remote (e.g. "プッシュして", "push this", "リモートに反映して"). Checks the current branch/remote state, shows a short summary of what will be pushed, waits for the user's confirmation, then runs `git push` (using `git push -u origin <branch>` for a branch with no upstream yet). May use the GitHub CLI (`gh`) to look up or report an associated pull request. Never force-pushes unless explicitly asked.
---

# push — 現在のブランチをリモートにプッシュする

ユーザーが「プッシュして」などと依頼したときに起動するスキル。
状況を確認し、何をプッシュするかを簡潔に提示してから、確認を得て実行する。
diverge(リモートに自分にない履歴がある)している場合や force push が必要な場合は、
勝手に解決せず必ずユーザーに確認する。

## Step 1 — 現状を把握する

以下を並列で実行する。

- `git status -sb`(現在のブランチ、upstreamとの関係、未コミットの変更の有無)
- `git remote -v`(push先のリモートを確認)
- `git branch -vv`(upstream設定の有無を確認)

## Step 2 — 未コミットの変更をチェックする

`git status` に未コミット・未ステージの変更がある場合は、それらはpushされないことをユーザーに伝える。
コミットしてからpushしたいかどうかをユーザーに確認する(自動でコミットはしない。コミットが必要な場合は
既存の `commit` スキルの利用を提案してよい)。

## Step 3 — push内容を確認する

upstreamの設定有無で分岐する。

- **upstreamが設定済みの場合**: `git log @{u}..HEAD --oneline` でリモートにまだ無いコミット一覧を取得する
  - リモート側にローカルにないコミットがある(diverge / non-fast-forward)場合は `git log HEAD..@{u} --oneline` で確認し、
    その旨をユーザーに伝えて、`git pull --rebase` 等で取り込むかどうかを確認する。**このスキール内で自動的に
    force push はしない**
- **upstreamが未設定の場合(新規ブランチ)**: ローカルの全コミット(例: `git log <default-branch>..HEAD --oneline`)を
  一覧化し、新規に `origin/<branch>` を作成してpushする旨を伝える

以下を簡潔にユーザーへ提示する:
- push先: `<remote> <branch>`(新規ブランチかどうか)
- pushされるコミット一覧(ハッシュ短縮形 + コメント)

## Step 4 — 承認を待つ

ユーザーの明示的な承認があるまで `git push` を実行しない。
diverge していて対応方針の確認が必要な場合は、その回答を待ってから次に進む。

## Step 5 — push を実行する

- upstream設定済み: `git push`
- upstream未設定: `git push -u origin <branch>`

**force push (`--force` / `--force-with-lease`) は、ユーザーが明示的に依頼した場合のみ**実行する。
依頼がない状況でnon-fast-forwardエラーになった場合は、force pushで押し切らず、Step 3の分岐に従って
ユーザーに確認する。

## Step 6 — GitHub CLI で関連PRを確認する(任意)

`gh` コマンドが利用可能であれば、push後に以下を行ってよい:
- `gh pr view --json url,number,title 2>/dev/null` などで現在のブランチに紐づくPRの有無を確認する
- 既存のPRがあればそのURLをユーザーに伝える
- PRが無い場合、新規に作成するかどうかは**ユーザーから明示的に依頼された場合のみ** `gh pr create` を実行する
  (push依頼だけでPR作成まで自動では行わない)

## Step 7 — 結果を報告する

push結果(成功したリモート/ブランチ、pushされたコミット数)と、関連PRがあればそのURLを簡潔に報告する。

## 注意事項

- `master`/`main` など保護されがちなブランチへのpushは、特に慎重に確認する
- force push は明示的な依頼がない限り絶対に行わない
- push前にuntrackedな機密ファイル(.env等)が誤ってコミットに含まれていないか、
  Step 1〜3の過程で気づいた場合はユーザーに伝える
- コミット自体はこのスキールの範囲外(必要なら `commit` スキールを案内する)
