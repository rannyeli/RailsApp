10.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "10 Topics post created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        topic_id: Topic.last.id
    )
end

puts "10 Blogs post created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        precent_utilized: rand(5..10)
    )
end

puts "5 Skills created"

6.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}",
        subtitle: "Ruby on Rails",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
        main_image: "http://placehold.it/600x200",
        thumb_image: "http://placehold.it/350x200",
    )
end

2.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio}",
        subtitle: "React",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
        main_image: "http://placehold.it/600x200",
        thumb_image: "http://placehold.it/350x200",
    )
end

puts "9 Portfolio created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 Technology created"
