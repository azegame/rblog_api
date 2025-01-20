# 既存のデータをクリア
Comment.delete_all
Post.delete_all

posts = []
10.times do |i|
  posts << Post.create!(
    title: "タイトル#{i + 1}", 
    content: "content#{i + 1}"
  )
end

# コメントを作成
comments = [
  "comment1",
  "comment2",
  "comment3",
  "comment4",
  "comment5",
  "comment6",
  "comment7",
  "comment8",
  "comment9",
  "comment10",
]

100.times do |i|
  post = posts.sample # ランダムに投稿を選択
  Comment.create!(
    comment: comments.sample, # ランダムにコメントを選択
    post: post
  )
end
