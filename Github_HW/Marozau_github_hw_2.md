_1. На локальном репозитории сделать ветки для:_
- _Postman_ - __git branch Postman__
- _Jmeter_ - __git branch Jmeter__
- _CheckLists_ - __git branch Chechlists__
- _Bag Reports_ - __git branch Bugreports__
- _SQL_ - __git branch SQL__
- _Charles_ - __git branch Charles__
- _Mobile testing_ - __git branch Mobile_testing__

_2. Запушить все ветки на внешний репозиторий:_
- __git push --all__

_3. В ветке Bugreports сделать текстовый документ со структурой баг репорта:_ 
- __git checkout Bugreports__ 
- __cat> bugreports.txt__
- __заполнить файл__
- __ctrl+c__  

_4. Запушить структуру багрепорта на внешний репозиторий_ 
- __git add .__   
- __git commit -m "Create bugrreport.txt"__
- __git push -u origin Bugreports__  

_5. Вмержить ветку Bag Reports в Main:_ 
- __git checkout main__
- __git merge Bugreports__  

_6. Запушить main на внешний репозиторий:_ 
- __git push__

_7. В ветке Checklists набросать структуру чек листа:_ 
- __git_checkout Checklists__
- __cat> checklist.md__
- __заполнить файл__
- __ctrl+c__  

_8. Запушить структуру на внешний репозиторий_
- __git add .__   
- __git commit -m "Create checklist.md"__
- __git push -u origin CheckLists__  

_9. На внешнем репозитории сделать Pull Request ветки Checklists в main:_
- __на внешнем репозитории кликнуть кнопку "Compare&Pull request"__
- __в поле для комментария оставить комментарий "Branch is ready to be merged"__
- __кликнуть кнопку "Create pull request"__
- __кликнуть кнопку "Merge pull request"__
- __кликнуть кнопку "Confirm merge"__  

_10. Синхронизировать Внешнюю и Локальную ветки Main:_
- __git checkout main__
- __git fetch__
- __git pull__