SELECT question,reponse,path_photo
  FROM question
  WHERE type_questionnaire IN('easy')
  ORDER BY rand()
  LIMIT 10;