.class public Lcom/evernote/edam/limits/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EDAM_APPLICATIONDATA_ENTRY_LEN_MAX:I = 0xfff

.field public static final EDAM_APPLICATIONDATA_NAME_LEN_MAX:I = 0x20

.field public static final EDAM_APPLICATIONDATA_NAME_LEN_MIN:I = 0x3

.field public static final EDAM_APPLICATIONDATA_NAME_REGEX:Ljava/lang/String; = "^[A-Za-z0-9_.-]{3,32}$"

.field public static final EDAM_APPLICATIONDATA_VALUE_LEN_MAX:I = 0xffc

.field public static final EDAM_APPLICATIONDATA_VALUE_LEN_MIN:I = 0x0

.field public static final EDAM_APPLICATIONDATA_VALUE_REGEX:Ljava/lang/String; = "^[^\\p{Cc}]{0,4092}$"

.field public static final EDAM_ATTRIBUTE_LEN_MAX:I = 0x1000

.field public static final EDAM_ATTRIBUTE_LEN_MIN:I = 0x1

.field public static final EDAM_ATTRIBUTE_LIST_MAX:I = 0x64

.field public static final EDAM_ATTRIBUTE_MAP_MAX:I = 0x64

.field public static final EDAM_ATTRIBUTE_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Zl}\\p{Zp}]{1,4096}$"

.field public static final EDAM_BUSINESS_NOTEBOOKS_MAX:I = 0x1388

.field public static final EDAM_BUSINESS_NOTEBOOK_DESCRIPTION_LEN_MAX:I = 0xc8

.field public static final EDAM_BUSINESS_NOTEBOOK_DESCRIPTION_LEN_MIN:I = 0x1

.field public static final EDAM_BUSINESS_NOTEBOOK_DESCRIPTION_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,198}[^\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_BUSINESS_NOTES_MAX:I = 0x7a120

.field public static final EDAM_BUSINESS_PHONE_NUMBER_LEN_MAX:I = 0x14

.field public static final EDAM_BUSINESS_TAGS_MAX:I = 0x186a0

.field public static final EDAM_BUSINESS_URI_LEN_MAX:I = 0x20

.field public static final EDAM_CONTENT_CLASS_FOOD_MEAL:Ljava/lang/String; = "evernote.food.meal"

.field public static final EDAM_CONTENT_CLASS_HELLO_ENCOUNTER:Ljava/lang/String; = "evernote.hello.encounter"

.field public static final EDAM_CONTENT_CLASS_HELLO_PROFILE:Ljava/lang/String; = "evernote.hello.profile"

.field public static final EDAM_CONTENT_CLASS_PENULTIMATE_NOTEBOOK:Ljava/lang/String; = "evernote.penultimate.notebook"

.field public static final EDAM_CONTENT_CLASS_PENULTIMATE_PREFIX:Ljava/lang/String; = "evernote.penultimate."

.field public static final EDAM_CONTENT_CLASS_SKITCH:Ljava/lang/String; = "evernote.skitch"

.field public static final EDAM_CONTENT_CLASS_SKITCH_PDF:Ljava/lang/String; = "evernote.skitch.pdf"

.field public static final EDAM_CONTENT_CLASS_SKITCH_PREFIX:Ljava/lang/String; = "evernote.skitch"

.field public static final EDAM_DEVICE_DESCRIPTION_LEN_MAX:I = 0x40

.field public static final EDAM_DEVICE_DESCRIPTION_REGEX:Ljava/lang/String; = "^[^\\p{Cc}]{1,64}$"

.field public static final EDAM_DEVICE_ID_LEN_MAX:I = 0x20

.field public static final EDAM_DEVICE_ID_REGEX:Ljava/lang/String; = "^[^\\p{Cc}]{1,32}$"

.field public static final EDAM_EMAIL_DOMAIN_REGEX:Ljava/lang/String; = "^[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*\\.([A-Za-z]{2,})$"

.field public static final EDAM_EMAIL_LEN_MAX:I = 0xff

.field public static final EDAM_EMAIL_LEN_MIN:I = 0x6

.field public static final EDAM_EMAIL_LOCAL_REGEX:Ljava/lang/String; = "^[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*$"

.field public static final EDAM_EMAIL_REGEX:Ljava/lang/String; = "^[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*\\.([A-Za-z]{2,})$"

.field public static final EDAM_FOOD_APP_CONTENT_CLASS_PREFIX:Ljava/lang/String; = "evernote.food."

.field public static final EDAM_GUID_LEN_MAX:I = 0x24

.field public static final EDAM_GUID_LEN_MIN:I = 0x24

.field public static final EDAM_GUID_REGEX:Ljava/lang/String; = "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"

.field public static final EDAM_HASH_LEN:I = 0x10

.field public static final EDAM_HELLO_APP_CONTENT_CLASS_PREFIX:Ljava/lang/String; = "evernote.hello."

.field public static final EDAM_INDEXABLE_RESOURCE_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDAM_MAX_PREFERENCES:I = 0x64

.field public static final EDAM_MAX_VALUES_PER_PREFERENCE:I = 0x100

.field public static final EDAM_MIME_LEN_MAX:I = 0xff

.field public static final EDAM_MIME_LEN_MIN:I = 0x3

.field public static final EDAM_MIME_REGEX:Ljava/lang/String; = "^[A-Za-z]+/[A-Za-z0-9._+-]+$"

.field public static final EDAM_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDAM_MIME_TYPE_AAC:Ljava/lang/String; = "audio/aac"

.field public static final EDAM_MIME_TYPE_AMR:Ljava/lang/String; = "audio/amr"

.field public static final EDAM_MIME_TYPE_DEFAULT:Ljava/lang/String; = "application/octet-stream"

.field public static final EDAM_MIME_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field public static final EDAM_MIME_TYPE_INK:Ljava/lang/String; = "application/vnd.evernote.ink"

.field public static final EDAM_MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final EDAM_MIME_TYPE_M4A:Ljava/lang/String; = "audio/mp4"

.field public static final EDAM_MIME_TYPE_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static final EDAM_MIME_TYPE_MP4_VIDEO:Ljava/lang/String; = "video/mp4"

.field public static final EDAM_MIME_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field public static final EDAM_MIME_TYPE_PNG:Ljava/lang/String; = "image/png"

.field public static final EDAM_MIME_TYPE_WAV:Ljava/lang/String; = "audio/wav"

.field public static final EDAM_NOTEBOOK_NAME_LEN_MAX:I = 0x64

.field public static final EDAM_NOTEBOOK_NAME_LEN_MIN:I = 0x1

.field public static final EDAM_NOTEBOOK_NAME_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_NOTEBOOK_SHARED_NOTEBOOK_MAX:I = 0xfa

.field public static final EDAM_NOTEBOOK_STACK_LEN_MAX:I = 0x64

.field public static final EDAM_NOTEBOOK_STACK_LEN_MIN:I = 0x1

.field public static final EDAM_NOTEBOOK_STACK_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_NOTE_CONTENT_CLASS_LEN_MAX:I = 0x20

.field public static final EDAM_NOTE_CONTENT_CLASS_LEN_MIN:I = 0x3

.field public static final EDAM_NOTE_CONTENT_CLASS_REGEX:Ljava/lang/String; = "^[A-Za-z0-9_.-]{3,32}$"

.field public static final EDAM_NOTE_CONTENT_LEN_MAX:I = 0x500000

.field public static final EDAM_NOTE_CONTENT_LEN_MIN:I = 0x0

.field public static final EDAM_NOTE_RESOURCES_MAX:I = 0x3e8

.field public static final EDAM_NOTE_SIZE_MAX_FREE:I = 0x1900000

.field public static final EDAM_NOTE_SIZE_MAX_PREMIUM:I = 0x6400000

.field public static final EDAM_NOTE_TAGS_MAX:I = 0x64

.field public static final EDAM_NOTE_TITLE_LEN_MAX:I = 0xff

.field public static final EDAM_NOTE_TITLE_LEN_MIN:I = 0x1

.field public static final EDAM_NOTE_TITLE_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,253}[^\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_PREFERENCE_NAME_LEN_MAX:I = 0x20

.field public static final EDAM_PREFERENCE_NAME_LEN_MIN:I = 0x3

.field public static final EDAM_PREFERENCE_NAME_REGEX:Ljava/lang/String; = "^[A-Za-z0-9_.-]{3,32}$"

.field public static final EDAM_PREFERENCE_SHORTCUTS:Ljava/lang/String; = "evernote.shortcuts"

.field public static final EDAM_PREFERENCE_SHORTCUTS_MAX_VALUES:I = 0xfa

.field public static final EDAM_PREFERENCE_VALUE_LEN_MAX:I = 0x400

.field public static final EDAM_PREFERENCE_VALUE_LEN_MIN:I = 0x1

.field public static final EDAM_PREFERENCE_VALUE_REGEX:Ljava/lang/String; = "^[^\\p{Cc}]{1,1024}$"

.field public static final EDAM_PUBLISHING_DESCRIPTION_LEN_MAX:I = 0xc8

.field public static final EDAM_PUBLISHING_DESCRIPTION_LEN_MIN:I = 0x1

.field public static final EDAM_PUBLISHING_DESCRIPTION_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,198}[^\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_PUBLISHING_URI_LEN_MAX:I = 0xff

.field public static final EDAM_PUBLISHING_URI_LEN_MIN:I = 0x1

.field public static final EDAM_PUBLISHING_URI_PROHIBITED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDAM_PUBLISHING_URI_REGEX:Ljava/lang/String; = "^[a-zA-Z0-9.~_+-]{1,255}$"

.field public static final EDAM_RELATED_MAX_NOTEBOOKS:I = 0x1

.field public static final EDAM_RELATED_MAX_NOTES:I = 0x19

.field public static final EDAM_RELATED_MAX_TAGS:I = 0x19

.field public static final EDAM_RELATED_PLAINTEXT_LEN_MAX:I = 0x20000

.field public static final EDAM_RELATED_PLAINTEXT_LEN_MIN:I = 0x1

.field public static final EDAM_RESOURCE_SIZE_MAX_FREE:I = 0x1900000

.field public static final EDAM_RESOURCE_SIZE_MAX_PREMIUM:I = 0x6400000

.field public static final EDAM_SAVED_SEARCH_NAME_LEN_MAX:I = 0x64

.field public static final EDAM_SAVED_SEARCH_NAME_LEN_MIN:I = 0x1

.field public static final EDAM_SAVED_SEARCH_NAME_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Z}]([^\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_SEARCH_QUERY_LEN_MAX:I = 0x400

.field public static final EDAM_SEARCH_QUERY_LEN_MIN:I = 0x0

.field public static final EDAM_SEARCH_QUERY_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Zl}\\p{Zp}]{0,1024}$"

.field public static final EDAM_SEARCH_SUGGESTIONS_MAX:I = 0xa

.field public static final EDAM_SEARCH_SUGGESTIONS_PREFIX_LEN_MAX:I = 0x400

.field public static final EDAM_SEARCH_SUGGESTIONS_PREFIX_LEN_MIN:I = 0x2

.field public static final EDAM_TAG_NAME_LEN_MAX:I = 0x64

.field public static final EDAM_TAG_NAME_LEN_MIN:I = 0x1

.field public static final EDAM_TAG_NAME_REGEX:Ljava/lang/String; = "^[^,\\p{Cc}\\p{Z}]([^,\\p{Cc}\\p{Zl}\\p{Zp}]{0,98}[^,\\p{Cc}\\p{Z}])?$"

.field public static final EDAM_TIMEZONE_LEN_MAX:I = 0x20

.field public static final EDAM_TIMEZONE_LEN_MIN:I = 0x1

.field public static final EDAM_TIMEZONE_REGEX:Ljava/lang/String; = "^([A-Za-z_-]+(/[A-Za-z_-]+)*)|(GMT(-|\\+)[0-9]{1,2}(:[0-9]{2})?)$"

.field public static final EDAM_USER_LINKED_NOTEBOOK_MAX:I = 0x64

.field public static final EDAM_USER_LINKED_NOTEBOOK_MAX_PREMIUM:I = 0xfa

.field public static final EDAM_USER_MAIL_LIMIT_DAILY_FREE:I = 0x32

.field public static final EDAM_USER_MAIL_LIMIT_DAILY_PREMIUM:I = 0xc8

.field public static final EDAM_USER_NAME_LEN_MAX:I = 0xff

.field public static final EDAM_USER_NAME_LEN_MIN:I = 0x1

.field public static final EDAM_USER_NAME_REGEX:Ljava/lang/String; = "^[^\\p{Cc}\\p{Zl}\\p{Zp}]{1,255}$"

.field public static final EDAM_USER_NOTEBOOKS_MAX:I = 0xfa

.field public static final EDAM_USER_NOTES_MAX:I = 0x186a0

.field public static final EDAM_USER_PASSWORD_LEN_MAX:I = 0x40

.field public static final EDAM_USER_PASSWORD_LEN_MIN:I = 0x6

.field public static final EDAM_USER_PASSWORD_REGEX:Ljava/lang/String; = "^[A-Za-z0-9!#$%&\'()*+,./:;<=>?@^_`{|}~\\[\\]\\\\-]{6,64}$"

.field public static final EDAM_USER_RECENT_MAILED_ADDRESSES_MAX:I = 0xa

.field public static final EDAM_USER_SAVED_SEARCHES_MAX:I = 0x64

.field public static final EDAM_USER_TAGS_MAX:I = 0x186a0

.field public static final EDAM_USER_UPLOAD_LIMIT_BUSINESS:J = 0x7fffffffL

.field public static final EDAM_USER_UPLOAD_LIMIT_FREE:J = 0x3c00000L

.field public static final EDAM_USER_UPLOAD_LIMIT_PREMIUM:J = 0x40000000L

.field public static final EDAM_USER_USERNAME_LEN_MAX:I = 0x40

.field public static final EDAM_USER_USERNAME_LEN_MIN:I = 0x1

.field public static final EDAM_USER_USERNAME_REGEX:Ljava/lang/String; = "^[a-z0-9]([a-z0-9_-]{0,62}[a-z0-9])?$"

.field public static final EDAM_VAT_REGEX:Ljava/lang/String; = "^((AT)?U[0-9]{8}|(BE)?0?[0-9]{9}|(BG)?[0-9]{9,10}|(CY)?[0-9]{8}L|(CZ)?[0-9]{8,10}|(DE)?[0-9]{9}|(DK)?[0-9]{8}|(EE)?[0-9]{9}|(EL|GR)?[0-9]{9}|(ES)?[0-9A-Z][0-9]{7}[0-9A-Z]|(FI)?[0-9]{8}|(FR)?[0-9A-Z]{2}[0-9]{9}|(GB)?([0-9]{9}([0-9]{3})?|[A-Z]{2}[0-9]{3})|(HU)?[0-9]{8}|(IE)?[0-9]S[0-9]{5}L|(IT)?[0-9]{11}|(LT)?([0-9]{9}|[0-9]{12})|(LU)?[0-9]{8}|(LV)?[0-9]{11}|(MT)?[0-9]{8}|(NL)?[0-9]{9}B[0-9]{2}|(PL)?[0-9]{10}|(PT)?[0-9]{9}|(RO)?[0-9]{2,10}|(SE)?[0-9]{12}|(SI)?[0-9]{8}|(SK)?[0-9]{10})|[0-9]{9}MVA|[0-9]{6}|CHE[0-9]{9}(TVA|MWST|IVA)$"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/evernote/edam/limits/Constants;->EDAM_MIME_TYPES:Ljava/util/Set;

    const-string v1, "image/gif"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "image/jpeg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "image/png"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/wav"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/mpeg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/amr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.evernote.ink"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/pdf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "video/mp4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/aac"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/mp4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/evernote/edam/limits/Constants;->EDAM_INDEXABLE_RESOURCE_MIME_TYPES:Ljava/util/Set;

    const-string v1, "application/msword"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/mspowerpoint"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/excel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.ms-word"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.ms-excel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.apple.pages"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.apple.numbers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/vnd.apple.keynote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/x-iwork-pages-sffpages"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/x-iwork-numbers-sffnumbers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "application/x-iwork-keynote-sffkey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/evernote/edam/limits/Constants;->EDAM_PUBLISHING_URI_PROHIBITED:Ljava/util/Set;

    const-string v1, ".."

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
