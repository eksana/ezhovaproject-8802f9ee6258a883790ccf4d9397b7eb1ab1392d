Image.delete_all
Image.reset_pk_sequence
Image.create(
    [
        {name: 'Нулевой', file: '0.jpg', theme_id: 1},
        {name: 'Первый', file: '1.jpg', theme_id: 2},
        {name: 'Второй', file: '2.jpg', theme_id: 2},
        {name: 'Третий', file: '3.jpg', theme_id: 1}
    ]
)

Theme.delete_all
Theme.reset_pk_sequence
Theme.create(
    [
        {name: 'Тест'},
        {name: 'Тема'}
    ]
)

Genre.delete_all
Genre.reset_pk_sequence
Genre.create(
    [
        {name: 'Классика'},
        {name: 'Поп'},
        {name: 'Рок'},
        {name: 'Джаз'},
        {name: 'Панк'}
    ]
)

User.delete_all
User.reset_pk_sequence
User.create(
    [
        {name: "Michael Hartl", email: "mhartl@example.com", password: "foobar", password_confirmation: "foobar"}
    ]
)

Value.delete_all
Value.reset_pk_sequence
Value.create(
    [
        {user_id: 1, image_id: 1, value: 10 },
        {user_id: 2, image_id: 2, value: 9 },
        {user_id: 3, image_id: 2, value: 8 }
    ]
)

Platter.delete_all
Platter.reset_pk_sequence
Platter.create(
    [
        {name: 'Князь Тишины', singer: 'Наутилус Помпилиус', year: 1989, genre_id: 3, image_id: 1, user_id: 1, description: 'Nautilus Pompilius - советская и российская рок-группа. Основана в Свердловске, официально в 1982—1983 годах.' },
        {name: 'Родившийся в эту ночь', singer: 'Наутилус Помпилиус', year: 1991, genre_id: 3, image_id: 2, user_id: 3, description: 'Известно о существовании трех вариантов пластинки: с красным, белым и черным яблоком. Согласно выходным данным, диск был выпущен тиражом 100 000 экземпляров.' }
    ]
)