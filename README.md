


![PrintDER](https://github.com/user-attachments/assets/fc76ab0b-4f7a-4108-9962-515abbf219f0)

Produtor
-id -> cardinalidade min/max 1
-nome -> cardinaliade min/max 1
-propriedade -> cardinalidade min 0, max 1
-localizacao -> cardinaliade min 0, max 1

Cultura
-id -> cardinalidade min/max 1
-produtor_id -> cardinalidade min/max 1
-nome -> cardinalidade min/max 1

Ajuste
-id -> cardinalidade min/max 1
-cultura_id -> cardinalidade min/max 1
-data_hora -> cardinalidade min 0, max 1
-quantidade_agua -> cardinalidade min 0, max 1
-quantidade_nutrientes -> cardinalidade min 0, max 1

Cultura_Sensro
-id -> cardinalidade min/max 1
-cultura_id -> cardinalidade min/max 1
-sensor_id -> cardinalidade min/max 1
data_inicio_monitoramento -> cardinalidade min/max 1

Sensor
-id -> cardinalidade min/max 1
-sensortipo_id -> cardinalidade min/max 1
-descricao -> cardinalidade cardinalidade min 0, max 1
-valor1 -> cardinalidade min 0, max 1
-valor2 -> cardinalidade min 0, max 1

SensorTipo
-id -> cardinalidade min/max 1
-nome-> cardinalidade min/max 1

Leitura
-id -> cardinalidade min/max 1
-cultura_sensor_id -> cardinalidade min/max 1
-data_hora-> cardinalidade cardinalidade min 0, max 1
-valor_umidade -> cardinalidade min 0, max 1
-valor_ph -> cardinalidade min 0, max 1
-valor_fosforo -> cardinalidade min 0, max 1
-valor_potassio -> cardinalidade min 0, max 1
