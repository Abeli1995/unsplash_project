# unsplash_project


<h3>Задача:</h3>
<em>сделать галерею с фотографиями и авторами в виде списка.<br>
 При нажатии фотография увеличивается.<br>
 Фотографии нужно добавлять с помощью API</em> <br><br>
 
  У меня получилось вывести подписи к изображениям и сделать список, пускай и с одинаковыми фотографиями. 
  Сейчас я пытаюсь вместо id вывести имена авторов, и вместо одной повторяющейся фотографии, добавить разные. 
  Далее я буду работать над функционалом при нажатии. 
  
   <img src="https://user-images.githubusercontent.com/67687533/232718012-4aca25e3-5c3a-477e-ad63-35d694f4e0a4.png" alt="screenshot" width="10%" height="40%" style="display: inline-block;">
  
<img src="https://user-images.githubusercontent.com/67687533/232718090-6123a4c9-c499-41c9-898f-81b38ab0bbc6.png" alt="screenshot" width="10%" height="50%" style="display: inline-block;">
 

Получилось вывести фотографии и имена их авторов. 
Оказалось, что проблема в неправильном вызове параметров api: 
я вызывал links, а нужно было вызывать ['urls']['small'],
а имена были здесь: ['user']['name'] <br>
Далее мне нужно сделать фотографии одинаковыми по величине и реализовать функционал: 
увеличение фотографии при нажатии. 

<img src="https://user-images.githubusercontent.com/67687533/233353504-3fa53480-d3c1-4bc4-a4ca-4a09bb299e3b.png" alt="screenshot" width="10%" height="50%">

Сделал фотографии одинаковыми по размеру и обернул их в рамки.
Сделал отступы, чтобы это выглядело красиво. 
Так же добавил приятный, фиолетовый фон. 
<img src="https://user-images.githubusercontent.com/67687533/233393490-263d84d9-f88c-44bc-8620-7ce97f28a91f.png" alt="screenshot" width="10%" height="50%">

Сделал функционал перехода по нажатию на кнопку. Осталось сделать кнопку, ведущую обратно на страницу. Дополнительно можно добавить фон изображения другой страницы с полным изображением. 
<img src="https://user-images.githubusercontent.com/67687533/233429187-d3fd57f2-4bc4-4cfb-9e91-19e72124fdc7.png" alt="screenshot" width="10%">

Добавлена кнопка перехода со второй страницы обратно. Теперь её нужно стилизовать. 

<img src ="https://user-images.githubusercontent.com/67687533/233440106-6bf191d7-895e-4a5a-be5c-e1632e573978.png" alt="screenshot" width="10%">

Внес все изменения: сделал всё в одном стиле, оформил кнопку, ведущую на стартовую страницу. 


<img src="https://user-images.githubusercontent.com/67687533/233449372-47dfd199-1b48-4a2d-b777-4f584d2523bc.png" alt="screenshot" width="40%">

<img src="https://user-images.githubusercontent.com/67687533/233449420-a0af96e7-53c6-4223-93ed-056226c07153.png" alt="screenshot" width="40%">


This project is written in Dart.

