# -- auto-generated definition
# create table ims_hr_album_baby
# (
#   id       int(10) auto_increment
#     primary key,
#   uniacid  int(10)                not null,
#   openid   varchar(255)           not null,
#   nickname varchar(50)            not null,
#   avatar   varchar(200)           not null,
#     title    varchar(50)            not null,
#
#   name     varchar(50)            not null,
#   num      varchar(50)            not null
#   comment '编号',
#   click    int(10)                not null,
#   share    int(10)                not null,
#   best     int(10) default '0'    not null,
#   isshow   tinyint(1) default '0' not null
#   comment '是否展示，0否，1是',
#   isverify tinyint(1) default '0' not null
#   comment '0不开启默认，1开启',
#   addtime  int(10)                not null
# )
#   engine = MyISAM;
#
# create index index_openid
#   on ims_hr_album_baby (openid);
#
# create index index_uniacid
#   on ims_hr_album_baby (uniacid);
#


#
# create table ims_hr_album_school_class
# (
#   id      int(10) auto_increment
#     primary key comment  '以班级为单位，共用 1 张表',
#   title   varchar(50) not null,
#   schoolid   int(10),
#   schoolname    varchar(50) not null,
#   schooladdress      varchar(50) not null,
#   classname  varchar(50) not null,
#   addtime int(10)     not null
# )
#   engine = MyISAM;
#
#
# INSERT INTO wx4_tmp.ims_hr_album_baby (id, uniacid, openid, nickname, avatar, title,name, num, click, share, best, isshow, isverify, addtime) VALUES (1, 2, 'oYYSe4rLo-tZRloaCqVKz2ZIa8MA', '刘靖',
# 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132', '刘靖的头像', '刘小靖', '45022199107211930',
# 0,0, 1, 0, 1556720660);


# CREATE INDEX index_classid ON ims_hr_album_school_class (id);

-- auto-generated definition
# create table ims_hr_album_photos
# (
#   id       int(10) auto_increment
#     primary key,
#   uniacid  int(10)                null,
#   openid   varchar(255)           null,
#   classify varchar(50)            null comment '分类名，目前是日期',
#   title    varchar(50)            null comment '显示标题',
#   name     varchar(50)            null comment '照片名字',
#   url      varchar(50)            null comment '图片 url',
#   click    int(10)                null,
#   share    int(10)                null,
#   best     int(10) default '0'    null,
#   isshow   tinyint(1) default '0' not null
#   comment '是否展示，0否，1是',
#   isverify tinyint(1) default '0' not null
#   comment '0不开启默认，1开启',
#   addtime  int(10)                not null,
#   schoolid int(10)                null,
#   babyid int(10)                null,
#   tags varchar(255)                null comment ',分隔',
#   classid  int(10)                null
# )
#   engine = MyISAM;
#
# create index photos_index_openid
#   on ims_hr_album_baby (openid);
#
# create index photos_index_uniacid
#   on ims_hr_album_baby (uniacid);
#
# create index photos_index_classid
#   on ims_hr_album_school_class (id);
#
# create index photos_index_babyid
#   on ims_hr_album_baby(id);
#

# INSERT INTO wx4_tmp.ims_hr_album_school_class (id, title, schoolid, schoolname, schooladdress, classname, addtime) VALUES (2, '小龙人幼儿园', 3, '小龙人幼儿园', '上海市杨浦区军工路 100 号', '大班', 1556720660);