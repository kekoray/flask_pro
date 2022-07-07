controller ： MVC 中的 C， 主要存放 视图函数。
model   ： MVC 中的 M ， 主要存放 实体类文件，映射数据库表
templates ： MVC 中的V， 主要存放 html 文件
static ： 静态文件， 主要存放 css， js 等文件
setting.py  ： 配置文件，数据库用户名密码等等1
__init__.py : 模块初始化文件,Flask程序对象的创建必须在__init__.py文件里完成，然后就可以安全的导入引用每个包。