APP_VALUE_LAYOUT_DEFAUT = "list"
APP_VALUE_STATUS_DEFAUT ='draft'

TABLE_CATEGOGY_SHOW = 'Category'
TABLE_ARTICLE_SHOW = 'Articles'
TABLE_FEED_SHOW = 'Feeds'

APP_VALUE_STATUS_CHOICES =(
        ('draft','Draft'),
        ('published','Published')
    )

APP_VALUE_LAYOUT_CHOICE =(
        ('list','List'),
        ('grid','Grid')
    )

ADMIN_SRC_JS = ('my_admin/js/general.js', 'my_admin/js/jquery-3.6.0.min.js','my_admin/js/slugify.min.js')
ADMIN_SRC_CSS = {'all': ('my_admin/css/custom.css',)}

ADMIN_HEADER_NAME =  "Managing News Content CĐ TH 22DĐ D"