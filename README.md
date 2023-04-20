# unsplash_project

<div style="display:flex;">
Задача: сделать галерею с фотографиями и авторами в виде списка. При нажатии фотография увеличивается. Фотографии нужно добавлять с помощью API
 
  <div style="flex: 1;">
   <img src="https://user-images.githubusercontent.com/67687533/232718012-4aca25e3-5c3a-477e-ad63-35d694f4e0a4.png" alt="screenshot" width="20%" />
  </div>
 
 <div style="flex: 1;">
   У меня получилось вывести подписи к изображениям и сделать список, пускай и с одинаковыми фотографиями. Сейчас я пытаюсь вместо id вывести имена авторов, и вместо одной повторяющейся фотографии, добавить разные. Далее я буду работать над функционалом при нажатии. 
 </div>

</div>

<img src="https://user-images.githubusercontent.com/67687533/232718090-6123a4c9-c499-41c9-898f-81b38ab0bbc6.png" alt="screenshot" width="50%" />

Получилось вывести фотографии и имена их авторов. Оказалось, что проблема в неправильном вызове параметров api: я вызывал links, а нужно было вызывать ['urls']['small'], а имена были здесь: ['user']['name']

<img src="https://user-images.githubusercontent.com/67687533/233353504-3fa53480-d3c1-4bc4-a4ca-4a09bb299e3b.png" alt="screenshot" width="50%" />
