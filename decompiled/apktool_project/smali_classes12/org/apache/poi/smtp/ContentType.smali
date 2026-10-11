.class public final enum Lorg/apache/poi/smtp/ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/smtp/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_CALS_1840:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_MARC:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_NEWS_MESSAGE_ID:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_NEWS_TRANSMISSION:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_OCTET_STREAM:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_ODA:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_PGP_ENCRYPTED:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_PGP_KEYS:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_PGP_SIGNATURE:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_PKCS10:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_PKCS7_MIME:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_PKCS7_SIGNATURE:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_POSTSCRIPT:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_REMOTE_PRINTING:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_SGML:Lorg/apache/poi/smtp/ContentType;

.field public static final enum APPLICATION_X400_BP:Lorg/apache/poi/smtp/ContentType;

.field public static final enum AUDIO_32KADPCM:Lorg/apache/poi/smtp/ContentType;

.field public static final enum AUDIO_BASIC:Lorg/apache/poi/smtp/ContentType;

.field public static final enum IMAGE_G3FAX:Lorg/apache/poi/smtp/ContentType;

.field public static final enum IMAGE_GIF:Lorg/apache/poi/smtp/ContentType;

.field public static final enum IMAGE_IEF:Lorg/apache/poi/smtp/ContentType;

.field public static final enum IMAGE_JPEG:Lorg/apache/poi/smtp/ContentType;

.field public static final enum IMAGE_JPG:Lorg/apache/poi/smtp/ContentType;

.field public static final enum IMAGE_TIFF:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MESSAGE_DELIVERY_STATUS:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MESSAGE_DISPOSITION_NOTIFICATION_TO:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MESSAGE_EXTERNAL_BODY:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MESSAGE_HTTP:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MESSAGE_PARTIAL:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MESSAGE_RFC822:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_ALTERNATIVE:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_BYTERANGES:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_DIGEST:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_FORMDATA:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_MIXED:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_PARALLEL:Lorg/apache/poi/smtp/ContentType;

.field public static final enum MULTIPART_RELATED:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_ENRICHED:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_HTML:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_PLAIN:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_RFC822_HEADERS:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_RICHTEXT:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_SGML:Lorg/apache/poi/smtp/ContentType;

.field public static final enum TEXT_STYLE:Lorg/apache/poi/smtp/ContentType;

.field public static final enum UNKNOWN:Lorg/apache/poi/smtp/ContentType;

.field public static final enum VIDEO_MPEG:Lorg/apache/poi/smtp/ContentType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 50

    new-instance v1, Lorg/apache/poi/smtp/ContentType;

    move-object v0, v1

    const-string v2, "APPLICATION_CALS_1840"

    const/4 v3, 0x0

    const-string v4, "application/cals-1840"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/smtp/ContentType;->APPLICATION_CALS_1840:Lorg/apache/poi/smtp/ContentType;

    new-instance v2, Lorg/apache/poi/smtp/ContentType;

    move-object v1, v2

    const-string v3, "APPLICATION_MARC"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/smtp/ContentType;->APPLICATION_MARC:Lorg/apache/poi/smtp/ContentType;

    new-instance v3, Lorg/apache/poi/smtp/ContentType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "application/news-message-id"

    const-string v6, "APPLICATION_NEWS_MESSAGE_ID"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/smtp/ContentType;->APPLICATION_NEWS_MESSAGE_ID:Lorg/apache/poi/smtp/ContentType;

    new-instance v4, Lorg/apache/poi/smtp/ContentType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "application/news-transmission"

    const-string v7, "APPLICATION_NEWS_TRANSMISSION"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/smtp/ContentType;->APPLICATION_NEWS_TRANSMISSION:Lorg/apache/poi/smtp/ContentType;

    new-instance v5, Lorg/apache/poi/smtp/ContentType;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "application/octet-stream"

    const-string v8, "APPLICATION_OCTET_STREAM"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/smtp/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/poi/smtp/ContentType;

    new-instance v6, Lorg/apache/poi/smtp/ContentType;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "application/oda"

    const-string v9, "APPLICATION_ODA"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/smtp/ContentType;->APPLICATION_ODA:Lorg/apache/poi/smtp/ContentType;

    new-instance v7, Lorg/apache/poi/smtp/ContentType;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "application/pgp-encrypted"

    const-string v10, "APPLICATION_PGP_ENCRYPTED"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/smtp/ContentType;->APPLICATION_PGP_ENCRYPTED:Lorg/apache/poi/smtp/ContentType;

    new-instance v8, Lorg/apache/poi/smtp/ContentType;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "application/pgp-keys"

    const-string v11, "APPLICATION_PGP_KEYS"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/smtp/ContentType;->APPLICATION_PGP_KEYS:Lorg/apache/poi/smtp/ContentType;

    new-instance v9, Lorg/apache/poi/smtp/ContentType;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "application/pgp-signature"

    const-string v12, "APPLICATION_PGP_SIGNATURE"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/smtp/ContentType;->APPLICATION_PGP_SIGNATURE:Lorg/apache/poi/smtp/ContentType;

    new-instance v10, Lorg/apache/poi/smtp/ContentType;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "application/pkcs7-MIME"

    const-string v13, "APPLICATION_PKCS7_MIME"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/smtp/ContentType;->APPLICATION_PKCS7_MIME:Lorg/apache/poi/smtp/ContentType;

    new-instance v11, Lorg/apache/poi/smtp/ContentType;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "application/pkcs7-signature"

    const-string v14, "APPLICATION_PKCS7_SIGNATURE"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/smtp/ContentType;->APPLICATION_PKCS7_SIGNATURE:Lorg/apache/poi/smtp/ContentType;

    new-instance v12, Lorg/apache/poi/smtp/ContentType;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "application/pkcs10"

    const-string v15, "APPLICATION_PKCS10"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/smtp/ContentType;->APPLICATION_PKCS10:Lorg/apache/poi/smtp/ContentType;

    new-instance v13, Lorg/apache/poi/smtp/ContentType;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "application/postscript"

    move-object/from16 v46, v0

    const-string v0, "APPLICATION_POSTSCRIPT"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/smtp/ContentType;->APPLICATION_POSTSCRIPT:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "application/remote-printing"

    move-object/from16 v47, v1

    const-string v1, "APPLICATION_REMOTE_PRINTING"

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->APPLICATION_REMOTE_PRINTING:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "application/sgml"

    move-object/from16 v48, v2

    const-string v2, "APPLICATION_SGML"

    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->APPLICATION_SGML:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "application/x400-bp"

    move-object/from16 v49, v3

    const-string v3, "APPLICATION_X400_BP"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->APPLICATION_X400_BP:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "image/g3fax"

    const-string v3, "IMAGE_G3FAX"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->IMAGE_G3FAX:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "image/gif"

    const-string v3, "IMAGE_GIF"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->IMAGE_GIF:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "image/ief"

    const-string v3, "IMAGE_IEF"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->IMAGE_IEF:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "image/jpeg"

    const-string v3, "IMAGE_JPEG"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->IMAGE_JPEG:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "image/jpg"

    const-string v3, "IMAGE_JPG"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->IMAGE_JPG:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "image/tiff"

    const-string v3, "IMAGE_TIFF"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->IMAGE_TIFF:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "message/delivery-status"

    const-string v3, "MESSAGE_DELIVERY_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MESSAGE_DELIVERY_STATUS:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "message/disposition-notification-to"

    const-string v3, "MESSAGE_DISPOSITION_NOTIFICATION_TO"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MESSAGE_DISPOSITION_NOTIFICATION_TO:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "message/external-body"

    const-string v3, "MESSAGE_EXTERNAL_BODY"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MESSAGE_EXTERNAL_BODY:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "message/http"

    const-string v3, "MESSAGE_HTTP"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MESSAGE_HTTP:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "message/partial"

    const-string v3, "MESSAGE_PARTIAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MESSAGE_PARTIAL:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "message/rfc822"

    const-string v3, "MESSAGE_RFC822"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MESSAGE_RFC822:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-string v2, "multipart/alternative"

    const-string v3, "MULTIPART_ALTERNATIVE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_ALTERNATIVE:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "multipart/byteranges"

    const-string v3, "MULTIPART_BYTERANGES"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_BYTERANGES:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-string v2, "multipart/digest"

    const-string v3, "MULTIPART_DIGEST"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_DIGEST:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-string v2, "multipart/form-data"

    const-string v3, "MULTIPART_FORMDATA"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_FORMDATA:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-string v2, "multipart/mixed"

    const-string v3, "MULTIPART_MIXED"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_MIXED:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const-string v2, "multipart/parallel"

    const-string v3, "MULTIPART_PARALLEL"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_PARALLEL:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const-string v2, "multipart/related"

    const-string v3, "MULTIPART_RELATED"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->MULTIPART_RELATED:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v35, v0

    const/16 v1, 0x23

    const-string v2, "text/enriched"

    const-string v3, "TEXT_ENRICHED"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_ENRICHED:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const-string v2, "text/html"

    const-string v3, "TEXT_HTML"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_HTML:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const-string v2, "text/plain"

    const-string v3, "TEXT_PLAIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_PLAIN:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v38, v0

    const/16 v1, 0x26

    const-string v2, "text/css"

    const-string v3, "TEXT_STYLE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_STYLE:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v39, v0

    const/16 v1, 0x27

    const-string v2, "text/rfc822-headers"

    const-string v3, "TEXT_RFC822_HEADERS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_RFC822_HEADERS:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v40, v0

    const/16 v1, 0x28

    const-string v2, "text/richtext"

    const-string v3, "TEXT_RICHTEXT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_RICHTEXT:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v41, v0

    const/16 v1, 0x29

    const-string v2, "text/sgml"

    const-string v3, "TEXT_SGML"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_SGML:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v42, v0

    const/16 v1, 0x2a

    const-string v2, "audio/32kadpcm"

    const-string v3, "AUDIO_32KADPCM"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->AUDIO_32KADPCM:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v43, v0

    const/16 v1, 0x2b

    const-string v2, "audio/basic"

    const-string v3, "AUDIO_BASIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->AUDIO_BASIC:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v44, v0

    const/16 v1, 0x2c

    const-string v2, "video/mpeg"

    const-string v3, "VIDEO_MPEG"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->VIDEO_MPEG:Lorg/apache/poi/smtp/ContentType;

    new-instance v0, Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v45, v0

    const/16 v1, 0x2d

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/smtp/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->UNKNOWN:Lorg/apache/poi/smtp/ContentType;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    filled-new-array/range {v0 .. v45}, [Lorg/apache/poi/smtp/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/smtp/ContentType;->$VALUES:[Lorg/apache/poi/smtp/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentType;
    .locals 5

    invoke-static {p0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/smtp/ContentType;->UNKNOWN:Lorg/apache/poi/smtp/ContentType;

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/apache/poi/smtp/ContentType;->values()[Lorg/apache/poi/smtp/ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/smtp/ContentType;->UNKNOWN:Lorg/apache/poi/smtp/ContentType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentType;
    .locals 1

    const-class v0, Lorg/apache/poi/smtp/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/smtp/ContentType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/smtp/ContentType;
    .locals 1

    sget-object v0, Lorg/apache/poi/smtp/ContentType;->$VALUES:[Lorg/apache/poi/smtp/ContentType;

    invoke-virtual {v0}, [Lorg/apache/poi/smtp/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/smtp/ContentType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isApplication()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAudio()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isImage()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMessage()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    const-string v0, "message/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMultipart()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    const-string v0, "multipart/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isStyle()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/smtp/ContentType;->TEXT_STYLE:Lorg/apache/poi/smtp/ContentType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isText()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/smtp/ContentType;->name:Ljava/lang/String;

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideo()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/smtp/ContentType;->VIDEO_MPEG:Lorg/apache/poi/smtp/ContentType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
