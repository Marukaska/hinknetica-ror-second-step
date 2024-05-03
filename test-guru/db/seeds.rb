# Создание категорий
categories = Category.create([
                               { title: 'Программирование' },
                               { title: 'Операционные системы' }
                             ])

# Создание тестов
tests = Test.create([
                      { title: 'Основы Ruby', level: 0, category_id: categories[0].id },
                      { title: 'Ruby-on-Rails', level: 2, category_id: categories[0].id },
                      { title: 'ОС - Linux', level: 1, category_id: categories[1].id },
                      { title: 'ОС - Windows', level: 0, category_id: categories[1].id }
                    ])

# Создание пользователей
users = User.create([
                      { name: 'Иванов Иван', email: 'user1@example.com' },
                      { name: 'Петров Геннадий', email: 'user2@example.com' }
                    ])

# Создание вопросов
questions = Question.create([
                              { body: 'Для перебора элементов списка лучше использовать?', test: tests[0].id  },
                              { body: 'Расшифровать аббревиатуру ERB?', test: tests[1].id },
                              { body: 'Какой командой найти количество памяти и используемую подкачку?', test: tests[2].id },
                              { body: 'Какая компания выпускает Windows?', test: tests[3].id }
                            ])

# Создание ответов
answers = Answer.create([
                          { body: 'Метод each', correct: true, question: questions[0].id},
                          { body: 'Цикл for', correct: false, question: questions[0].id},
                          { body: 'Embedded Ruby', correct: true, question: questions[1].id},
                          { body: 'Epic Rap Battles', correct: false, question: questions[1].id },
                          { body: 'Команда: free', correct: true, question: questions[2].id},
                          { body: 'Команда: mkdir', correct: false, question: questions[2].id},
                          { body: 'Microsoft', correct: true, question: questions[3].id},
                          { body: 'Apple', correct: false, question: questions[3].id }
                        ])