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
                              { body: 'Для перебора элементов списка лучше использовать?', test_id: tests[0].id  },
                              { body: 'Расшифровать аббревиатуру ERB?', test_id: tests[1].id },
                              { body: 'Какой командой найти количество памяти и используемую подкачку?', test_id: tests[2].id },
                              { body: 'Какая компания выпускает Windows?', test_id: tests[3].id }
                            ])

# Создание ответов
answers = Answer.create([
                          { body: 'Метод each', correct: true, question_id: questions[0].id},
                          { body: 'Цикл for', correct: false, question_id: questions[0].id},
                          { body: 'Embedded Ruby', correct: true, question_id: questions[1].id},
                          { body: 'Epic Rap Battles', correct: false, question_id: questions[1].id },
                          { body: 'Команда: free', correct: true, question_id: questions[2].id},
                          { body: 'Команда: mkdir', correct: false, question_id: questions[2].id},
                          { body: 'Microsoft', correct: true, question_id: questions[3].id},
                          { body: 'Apple', correct: false, question_id: questions[3].id }
                        ])

# Создание статуса тестов
status_tests = StatusTest.create([
                                 { status: 'done', user_id: users[0].id, test_id: tests[0].id },
                                 { status: 'in process', user_id: users[0].id, test_id: tests[1].id },
                                 { status: 'done', user_id: users[0].id, test_id: tests[3].id },
                                 { status: 'in process', user_id: users[1].id, test_id: tests[3].id }
                               ])