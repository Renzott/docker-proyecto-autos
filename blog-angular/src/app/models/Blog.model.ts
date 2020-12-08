export interface Blog{
    codigo?: String,
    titulo?: String,
    fecha?: Date,
    tipo?:{
      codigo: Number,
      descripcion: String,
    },
    foto?: String,
    texto?: String,
    comentarioList?:[
        {
            id?: String,
            nombre?: String,
            correo?: String,
            comentario?: String
        }
    ]
} 