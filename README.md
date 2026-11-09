# Fortran 1 加到 N 作業

## 第一題：編譯與執行
```bash
gfortran -Wall -Wextra -fcheck=all sum_1_to_n.f90 -o sum_1_to_n
printf '10\n' | ./sum_1_to_n
```

## 第二題：三次隨機驗證
見 `test_results.txt`，程式結果與數學公式 `N*(N+1)/2` 比較。

## 第三題：Git 版本控制
`git log --oneline` 可查看原版及逐行註解版兩個 Commit。編譯註解版：
```bash
gfortran -Wall -Wextra -fcheck=all sum_1_to_n_commented.f90 -o sum_commented
printf '10\n' | ./sum_commented
```

## 第四題：上傳 GitHub
請先在 GitHub 建立空白 repository，然後執行：
```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
git branch -M main
git push -u origin main
```
需自行登入 GitHub；本專案尚未上傳。

## 第五題：網頁評分系統
用瀏覽器開啟 `grade.html`，填寫姓名、學號及四題完成情形，按「計算總分」。第五題網頁功能以 20 分計入自評；實際得分由教師認定。
