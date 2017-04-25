# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#u = User.new
#u.email = "admin@test.com"           # 可以改成自己的 email

#u.password = "123456"                # 最少要六码

#u.password_confirmation = "123456"   # 最少要六码

#u.is_admin = true
#u.save


 fenlei = '程序员,技术,产品,运营,设计,市场与营销,职能,金融,管理'.split(',')
city = '北京,上海,广州,深圳,杭州'.split(',')
name = '迅达科技有限公司,中智控股中心,IWOT,腾讯控股有限公司,友宝移动有限公司'.split(',')
create_jobs = for x in 1..5 do
    case x
    when 1
for i in 1..9 do
  Job.create!([title: "Job no.#{i}", description: "这是用种子建立的第 #{i} 个Hidden工作",sort: fenlei[i-1] ,CompanyName: name[x-1] ,CompanyLocation: city[x-1] , wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false"])
end
    when 2
for i in 1..9 do
  Job.create!([title: "Job no.#{i}", description: "这是用种子建立的第 #{i} 个Hidden工作",sort: fenlei[i-1] ,CompanyName: name[x-1] ,CompanyLocation: city[x-1] , wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false"])
end

    when 3
for i in 1..9 do
  Job.create!([title: "Job no.#{i}", description: "这是用种子建立的第 #{i} 个Hidden工作",sort: fenlei[i-1] ,CompanyName: name[x-1] ,CompanyLocation: city[x-1] , wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false"])
end

    when 4
for i in 1..9 do
  Job.create!([title: "Job no.#{i}", description: "这是用种子建立的第 #{i} 个Hidden工作",sort: fenlei[i-1] ,CompanyName: name[x-1] ,CompanyLocation: city[x-1] , wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false"])
end

    when 5
for i in 1..9 do
  Job.create!([title: "Job no.#{i}", description: "这是用种子建立的第 #{i} 个Hidden工作",sort: fenlei[i-1] ,CompanyName: name[x-1] ,CompanyLocation: city[x-1] , wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false"])
end
    else
  end
end
