.class public final Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0013\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002R\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008&\u0010#R\u0014\u0010\'\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010#R\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008(\u0010#R\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008)\u0010#R\u0014\u0010*\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008*\u0010#R\u0014\u0010+\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008+\u0010#R\u0014\u0010,\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008,\u0010#R\u0014\u0010-\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008-\u0010#R\u0014\u0010.\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008.\u0010#R\u0014\u0010/\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008/\u0010#R\u0014\u00100\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00080\u0010#R\u0014\u00101\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00081\u0010#R\u0014\u00102\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00082\u0010#R!\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u0002038FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u00104\u001a\u0004\u00085\u00106R\u001d\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u0002038\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u00106R\u001d\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00020<8\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R\u001d\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00020<8\u0006\u00a2\u0006\u000c\n\u0004\u0008B\u0010>\u001a\u0004\u0008C\u0010@R#\u0010J\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020E0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\u00a8\u0006M"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;",
        "",
        "",
        "fileName",
        "",
        "isImageFile",
        "isEpubFile",
        "isPdfFile",
        "isSvgFile",
        "isOffice",
        "isDoc",
        "isPPT",
        "extensionWithoutDot",
        "mimeType",
        "extension",
        "",
        "extensions",
        "isAudio",
        "isVideoType",
        "isImageType",
        "isApplicationType",
        "isAllType",
        "isJPG",
        "isPictureExtension",
        "Landroid/net/Uri;",
        "uri",
        "Ljava/io/InputStream;",
        "stream",
        "getImageExtension",
        "Lcom/blankj/utilcode/util/ImageUtils$ImageType;",
        "getImageType",
        "",
        "bytes",
        "a",
        "DEFAULT_MIMETYPE_ALL",
        "Ljava/lang/String;",
        "DEFAULT_MIMETYPE_TEXT",
        "DEFAULT_MIMETYPE_AUDIO",
        "DEFAULT_MIMETYPE_IMAGE",
        "DEFAULT_MIMETYPE_VIDEO",
        "DEFAULT_MIMETYPE_APPLICATION",
        "MIMETYPE_APPLICATION_OCTET_STREAM",
        "MIMETYPE_PDF",
        "MIMETYPE_ZIP",
        "IMAGE_PREFIX",
        "TEXT_XML",
        "TEXT_URI_LIST",
        "AUDIO_PREFIX",
        "VIDEO_PREFIX",
        "TEXT_PREFIX",
        "EXTENSION_TYPE_BIN",
        "",
        "Lkotlin/Lazy;",
        "getReaderSupportFormatExtension",
        "()Ljava/util/List;",
        "readerSupportFormatExtension",
        "b",
        "Ljava/util/List;",
        "getDocumentFormatExtension",
        "documentFormatExtension",
        "",
        "c",
        "Ljava/util/Set;",
        "getPicExtension",
        "()Ljava/util/Set;",
        "picExtension",
        "d",
        "getJpegExtension",
        "jpegExtension",
        "",
        "e",
        "[[Ljava/lang/String;",
        "getMIME_TYPE_BY_EXTENSION_MAP",
        "()[[Ljava/lang/String;",
        "MIME_TYPE_BY_EXTENSION_MAP",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final AUDIO_PREFIX:Ljava/lang/String; = "audio/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MIMETYPE_ALL:Ljava/lang/String; = "*/*"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MIMETYPE_APPLICATION:Ljava/lang/String; = "application/*"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MIMETYPE_AUDIO:Ljava/lang/String; = "audio/*"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MIMETYPE_IMAGE:Ljava/lang/String; = "image/*"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MIMETYPE_TEXT:Ljava/lang/String; = "text/*"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MIMETYPE_VIDEO:Ljava/lang/String; = "video/*"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTENSION_TYPE_BIN:Ljava/lang/String; = "bin"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IMAGE_PREFIX:Ljava/lang/String; = "image/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIMETYPE_APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIMETYPE_PDF:Ljava/lang/String; = "application/pdf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIMETYPE_ZIP:Ljava/lang/String; = "application/zip"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_PREFIX:Ljava/lang/String; = "text/plain"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_URI_LIST:Ljava/lang/String; = "text/uri-list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIDEO_PREFIX:Ljava/lang/String; = "video/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:[[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 44

    new-instance v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils$readerSupportFormatExtension$2;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils$readerSupportFormatExtension$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->a:Lkotlin/Lazy;

    const-string v1, "azw"

    const-string v2, "azw3"

    const-string v3, "cbz"

    const-string v4, "cbr"

    const-string v5, "chm"

    const-string v6, "djvu"

    const-string v7, "doc"

    const-string v8, "docm"

    const-string v9, "docx"

    const-string v10, "epub"

    const-string v11, "fb2"

    const-string v12, "fbz"

    const-string v13, "fb3"

    const-string v14, "mobi"

    const-string v15, "jeb"

    const-string v16, "jdnovel"

    const-string v17, "comic"

    const-string v18, "odt"

    const-string v19, "pdb"

    const-string v20, "pdf"

    const-string v21, "caj"

    const-string v22, "prc"

    const-string v23, "rtf"

    const-string v24, "sxw"

    const-string v25, "trc"

    const-string v26, "txt"

    const-string v27, "zip"

    const-string v28, "xml"

    const-string v29, "htm"

    const-string v30, "html"

    const-string v31, "xhtml"

    const-string v32, "ppt"

    const-string v33, "pps"

    const-string v34, "pot"

    const-string v35, "ppa"

    const-string v36, "pptx"

    const-string v37, "ppsx"

    const-string v38, "pptm"

    const-string v39, "ppsm"

    const-string v40, "potx"

    const-string v41, "potm"

    const-string v42, "ppam"

    const-string v43, "md"

    filled-new-array/range {v1 .. v43}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->b:Ljava/util/List;

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "bmp"

    const-string v4, "png"

    const-string v5, "webp"

    const-string v6, "gif"

    const-string v7, "tif"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->c:Ljava/util/Set;

    const-string v0, "jpg"

    const-string v1, "jpeg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->d:Ljava/util/Set;

    const/16 v0, 0x373

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "application/octet-stream"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "123"

    const-string v3, "application/vnd.lotus-1-2-3"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "323"

    const-string v3, "text/h323"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "3dml"

    const-string v3, "text/vnd.in3d.3dml"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "3g2"

    const-string v3, "video/3gpp2"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "3gp"

    const-string v3, "video/3gpp"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "aab"

    const-string v3, "application/x-authorware-bin"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "aac"

    const-string v4, "audio/x-aac"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "aam"

    const-string v4, "application/x-authorware-map"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "a"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "aas"

    const-string v4, "application/x-authorware-seg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "abc"

    const-string v4, "text/vnd.abc"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "abw"

    const-string v4, "application/x-abiword"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "acc"

    const-string v4, "application/vnd.americandynamics.acc"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "ace"

    const-string v4, "application/x-ace-compressed"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "acgi"

    const-string v4, "text/html"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf

    aput-object v1, v0, v5

    const-string v1, "acu"

    const-string v5, "application/vnd.acucobol"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x10

    aput-object v1, v0, v5

    const-string v1, "acutc"

    const-string v5, "application/vnd.acucorp"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x11

    aput-object v1, v0, v5

    const-string v1, "acx"

    const-string v5, "application/internet-property-stream"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x12

    aput-object v1, v0, v5

    const-string v1, "adp"

    const-string v5, "audio/adpcm"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x13

    aput-object v1, v0, v5

    const-string v1, "aep"

    const-string v5, "application/vnd.audiograph"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x14

    aput-object v1, v0, v5

    const-string v1, "afm"

    const-string v5, "application/x-font-type1"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x15

    aput-object v1, v0, v6

    const-string v1, "afp"

    const-string v6, "application/vnd.ibm.modcap"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x16

    aput-object v1, v0, v6

    const-string v1, "ai"

    const-string v6, "application/postscript"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x17

    aput-object v1, v0, v6

    const-string v1, "aif"

    const-string v6, "audio/x-aiff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x18

    aput-object v1, v0, v6

    const-string v1, "aifc"

    const-string v6, "audio/x-aiff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x19

    aput-object v1, v0, v6

    const-string v1, "aiff"

    const-string v6, "audio/x-aiff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1a

    aput-object v1, v0, v6

    const-string v1, "aip"

    const-string v6, "text/x-audiosoft-intra"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1b

    aput-object v1, v0, v6

    const-string v1, "air"

    const-string v6, "application/vnd.adobe.air-application-installer-package+zip"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1c

    aput-object v1, v0, v6

    const-string v1, "ami"

    const-string v6, "application/vnd.amiga.ami"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1d

    aput-object v1, v0, v6

    const-string v1, "apk"

    const-string v6, "application/vnd.android.package-archive"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1e

    aput-object v1, v0, v6

    const-string v1, "application"

    const-string v6, "application/x-ms-application"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1f

    aput-object v1, v0, v6

    const-string v1, "apr"

    const-string v6, "application/vnd.lotus-approach"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x20

    aput-object v1, v0, v6

    const-string v1, "asc"

    const-string v6, "application/pgp-signature"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x21

    aput-object v1, v0, v6

    const-string v1, "asf"

    const-string v6, "video/x-ms-asf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x22

    aput-object v1, v0, v6

    const-string v1, "asm"

    const-string v6, "text/x-asm"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x23

    aput-object v1, v0, v6

    const-string v1, "aso"

    const-string v6, "application/vnd.accpac.simply.aso"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x24

    aput-object v1, v0, v6

    const-string v1, "asp"

    const-string v6, "text/asp"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x25

    aput-object v1, v0, v6

    const-string v1, "asr"

    const-string v6, "video/x-ms-asf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x26

    aput-object v1, v0, v6

    const-string v1, "asx"

    const-string v6, "video/x-ms-asf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x27

    aput-object v1, v0, v6

    const-string v1, "atc"

    const-string v6, "application/vnd.acucorp"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x28

    aput-object v1, v0, v6

    const-string v1, "atom"

    const-string v6, "application/atom+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x29

    aput-object v1, v0, v6

    const-string v1, "atomcat"

    const-string v6, "application/atomcat+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2a

    aput-object v1, v0, v6

    const-string v1, "atomsvc"

    const-string v6, "application/atomsvc+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2b

    aput-object v1, v0, v6

    const-string v1, "atx"

    const-string v6, "application/vnd.antix.game-component"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2c

    aput-object v1, v0, v6

    const-string v1, "au"

    const-string v6, "audio/basic"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2d

    aput-object v1, v0, v6

    const-string v1, "avi"

    const-string v6, "video/x-msvideo"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2e

    aput-object v1, v0, v6

    const-string v1, "aw"

    const-string v6, "application/applixware"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2f

    aput-object v1, v0, v6

    const-string v1, "axs"

    const-string v6, "application/olescript"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x30

    aput-object v1, v0, v6

    const-string v1, "azf"

    const-string v6, "application/vnd.airzip.filesecure.azf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x31

    aput-object v1, v0, v6

    const-string v1, "azs"

    const-string v6, "application/vnd.airzip.filesecure.azs"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x32

    aput-object v1, v0, v6

    const-string v1, "azw"

    const-string v6, "application/vnd.amazon.ebook"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x33

    aput-object v1, v0, v6

    const-string v1, "azw3"

    const-string v6, "application/azw3"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x34

    aput-object v1, v0, v6

    const-string v1, "bas"

    const-string v6, "text/plain"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x35

    aput-object v1, v0, v7

    const-string v1, "bat"

    const-string v7, "application/x-msdownload"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x36

    aput-object v1, v0, v7

    const-string v1, "bcpio"

    const-string v7, "application/x-bcpio"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x37

    aput-object v1, v0, v7

    const-string v1, "bdf"

    const-string v7, "application/x-font-bdf"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x38

    aput-object v1, v0, v7

    const-string v1, "bdm"

    const-string v7, "application/vnd.syncml.dm+wbxml"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x39

    aput-object v1, v0, v7

    const-string v1, "bh2"

    const-string v7, "application/vnd.fujitsu.oasysprs"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3a

    aput-object v1, v0, v7

    const-string v1, "bin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3b

    aput-object v1, v0, v7

    const-string v1, "bmi"

    const-string v7, "application/vnd.bmi"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3c

    aput-object v1, v0, v7

    const-string v1, "bmp"

    const-string v7, "image/bmp"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3d

    aput-object v1, v0, v7

    const-string v1, "book"

    const-string v7, "application/vnd.framemaker"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3e

    aput-object v1, v0, v8

    const-string v1, "box"

    const-string v8, "application/vnd.previewsystems.box"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3f

    aput-object v1, v0, v8

    const-string v1, "boz"

    const-string v8, "application/x-bzip2"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x40

    aput-object v1, v0, v8

    const-string v1, "bpk"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x41

    aput-object v1, v0, v8

    const-string v1, "btif"

    const-string v8, "image/prs.btif"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x42

    aput-object v1, v0, v8

    const-string v1, "bz2"

    const-string v8, "application/x-bzip2"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x43

    aput-object v1, v0, v8

    const-string v1, "bz"

    const-string v8, "application/x-bzip"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x44

    aput-object v1, v0, v8

    const-string v1, "c4d"

    const-string v8, "application/vnd.clonk.c4group"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x45

    aput-object v1, v0, v9

    const-string v1, "c4f"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x46

    aput-object v1, v0, v9

    const-string v1, "c4g"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x47

    aput-object v1, v0, v9

    const-string v1, "c4p"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x48

    aput-object v1, v0, v9

    const-string v1, "c4u"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x49

    aput-object v1, v0, v8

    const-string v1, "cab"

    const-string v8, "application/vnd.ms-cab-compressed"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x4a

    aput-object v1, v0, v8

    const-string v1, "car"

    const-string v8, "application/vnd.curl.car"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x4b

    aput-object v1, v0, v8

    const-string v1, "cat"

    const-string v8, "application/vnd.ms-pki.seccat"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x4c

    aput-object v1, v0, v8

    const-string v1, "cct"

    const-string v8, "application/x-director"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x4d

    aput-object v1, v0, v9

    const-string v1, "cc"

    const-string v9, "text/x-c"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4e

    aput-object v1, v0, v10

    const-string v1, "c++"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4f

    aput-object v1, v0, v10

    const-string v1, "ccxml"

    const-string v10, "application/ccxml+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x50

    aput-object v1, v0, v10

    const-string v1, "cdbcmsg"

    const-string v10, "application/vnd.contact.cmsg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x51

    aput-object v1, v0, v10

    const-string v1, "cdf"

    const-string v10, "application/x-cdf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x52

    aput-object v1, v0, v10

    const-string v1, "cdkey"

    const-string v10, "application/vnd.mediastation.cdkey"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x53

    aput-object v1, v0, v10

    const-string v1, "cdx"

    const-string v10, "chemical/x-cdx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x54

    aput-object v1, v0, v10

    const-string v1, "cdxml"

    const-string v10, "application/vnd.chemdraw+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x55

    aput-object v1, v0, v10

    const-string v1, "cdy"

    const-string v10, "application/vnd.cinderella"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x56

    aput-object v1, v0, v10

    const-string v1, "cer"

    const-string v10, "application/x-x509-ca-cert"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x57

    aput-object v1, v0, v10

    const-string v1, "cgm"

    const-string v10, "image/cgm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x58

    aput-object v1, v0, v10

    const-string v1, "chat"

    const-string v10, "application/x-chat"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x59

    aput-object v1, v0, v10

    const-string v1, "chm"

    const-string v10, "application/vnd.ms-htmlhelp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5a

    aput-object v1, v0, v10

    const-string v1, "chrt"

    const-string v10, "application/vnd.kde.kchart"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5b

    aput-object v1, v0, v10

    const-string v1, "cif"

    const-string v10, "chemical/x-cif"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5c

    aput-object v1, v0, v10

    const-string v1, "cii"

    const-string v10, "application/vnd.anser-web-certificate-issue-initiation"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5d

    aput-object v1, v0, v10

    const-string v1, "cla"

    const-string v10, "application/vnd.claymore"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5e

    aput-object v1, v0, v10

    const-string v1, "class"

    const-string v10, "application/java-vm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5f

    aput-object v1, v0, v10

    const-string v1, "clkk"

    const-string v10, "application/vnd.crick.clicker.keyboard"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x60

    aput-object v1, v0, v10

    const-string v1, "clkp"

    const-string v10, "application/vnd.crick.clicker.palette"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x61

    aput-object v1, v0, v10

    const-string v1, "clkt"

    const-string v10, "application/vnd.crick.clicker.template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x62

    aput-object v1, v0, v10

    const-string v1, "clkw"

    const-string v10, "application/vnd.crick.clicker.wordbank"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x63

    aput-object v1, v0, v10

    const-string v1, "clkx"

    const-string v10, "application/vnd.crick.clicker"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x64

    aput-object v1, v0, v10

    const-string v1, "clp"

    const-string v10, "application/x-msclip"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x65

    aput-object v1, v0, v10

    const-string v1, "cmc"

    const-string v10, "application/vnd.cosmocaller"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x66

    aput-object v1, v0, v10

    const-string v1, "cmdf"

    const-string v10, "chemical/x-cmdf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x67

    aput-object v1, v0, v10

    const-string v1, "cml"

    const-string v10, "chemical/x-cml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x68

    aput-object v1, v0, v10

    const-string v1, "cmp"

    const-string v10, "application/vnd.yellowriver-custom-menu"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x69

    aput-object v1, v0, v10

    const-string v1, "cmx"

    const-string v10, "image/x-cmx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6a

    aput-object v1, v0, v10

    const-string v1, "cod"

    const-string v10, "application/vnd.rim.cod"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6b

    aput-object v1, v0, v10

    const-string v1, "com"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6c

    aput-object v1, v0, v10

    const-string v1, "conf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6d

    aput-object v1, v0, v10

    const-string v1, "cpio"

    const-string v10, "application/x-cpio"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6e

    aput-object v1, v0, v10

    const-string v1, "cpp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6f

    aput-object v1, v0, v10

    const-string v1, "cpt"

    const-string v10, "application/mac-compactpro"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x70

    aput-object v1, v0, v10

    const-string v1, "crd"

    const-string v10, "application/x-mscardfile"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x71

    aput-object v1, v0, v10

    const-string v1, "crl"

    const-string v10, "application/pkix-crl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x72

    aput-object v1, v0, v10

    const-string v1, "crt"

    const-string v10, "application/x-x509-ca-cert"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x73

    aput-object v1, v0, v10

    const-string v1, "csh"

    const-string v10, "text/x-script.csh"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x74

    aput-object v1, v0, v10

    const-string v1, "csml"

    const-string v10, "chemical/x-csml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x75

    aput-object v1, v0, v10

    const-string v1, "csp"

    const-string v10, "application/vnd.commonspace"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x76

    aput-object v1, v0, v10

    const-string v1, "css"

    const-string v10, "text/css"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x77

    aput-object v1, v0, v10

    const-string v1, "cst"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x78

    aput-object v1, v0, v10

    const-string v1, "csv"

    const-string v10, "text/csv"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x79

    aput-object v1, v0, v10

    const-string v1, "c"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7a

    aput-object v1, v0, v10

    const-string v1, "cu"

    const-string v10, "application/cu-seeme"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7b

    aput-object v1, v0, v10

    const-string v1, "curl"

    const-string v10, "text/vnd.curl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7c

    aput-object v1, v0, v10

    const-string v1, "cww"

    const-string v10, "application/prs.cww"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7d

    aput-object v1, v0, v10

    const-string v1, "cxt"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7e

    aput-object v1, v0, v10

    const-string v1, "cxx"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7f

    aput-object v1, v0, v10

    const-string v1, "daf"

    const-string v10, "application/vnd.mobius.daf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x80

    aput-object v1, v0, v10

    const-string v1, "dataless"

    const-string v10, "application/vnd.fdsn.seed"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x81

    aput-object v1, v0, v10

    const-string v1, "davmount"

    const-string v10, "application/davmount+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x82

    aput-object v1, v0, v10

    const-string v1, "dcr"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x83

    aput-object v1, v0, v10

    const-string v1, "dcurl"

    const-string v10, "text/vnd.curl.dcurl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x84

    aput-object v1, v0, v10

    const-string v1, "dd2"

    const-string v10, "application/vnd.oma.dd2+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x85

    aput-object v1, v0, v10

    const-string v1, "ddd"

    const-string v10, "application/vnd.fujixerox.ddd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x86

    aput-object v1, v0, v10

    const-string v1, "deb"

    const-string v10, "application/x-debian-package"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x87

    aput-object v1, v0, v10

    const-string v1, "def"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x88

    aput-object v1, v0, v10

    const-string v1, "deploy"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x89

    aput-object v1, v0, v10

    const-string v1, "der"

    const-string v10, "application/x-x509-ca-cert"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8a

    aput-object v1, v0, v10

    const-string v1, "dfac"

    const-string v10, "application/vnd.dreamfactory"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8b

    aput-object v1, v0, v10

    const-string v1, "dic"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8c

    aput-object v1, v0, v10

    const-string v1, "diff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8d

    aput-object v1, v0, v10

    const-string v1, "dir"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8e

    aput-object v1, v0, v10

    const-string v1, "dis"

    const-string v10, "application/vnd.mobius.dis"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8f

    aput-object v1, v0, v10

    const-string v1, "dist"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x90

    aput-object v1, v0, v10

    const-string v1, "distz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x91

    aput-object v1, v0, v10

    const-string v1, "djv"

    const-string v10, "image/vnd.djvu"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x92

    aput-object v1, v0, v10

    const-string v1, "djvu"

    const-string v10, "image/vnd.djvu"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x93

    aput-object v1, v0, v10

    const-string v1, "dll"

    const-string v10, "application/x-msdownload"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x94

    aput-object v1, v0, v10

    const-string v1, "dmg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x95

    aput-object v1, v0, v10

    const-string v1, "dms"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x96

    aput-object v1, v0, v10

    const-string v1, "dna"

    const-string v10, "application/vnd.dna"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x97

    aput-object v1, v0, v10

    const-string v1, "doc"

    const-string v10, "application/msword"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x98

    aput-object v1, v0, v10

    const-string v1, "docm"

    const-string v10, "application/vnd.ms-word.document.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x99

    aput-object v1, v0, v10

    const-string v1, "docx"

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9a

    aput-object v1, v0, v10

    const-string v1, "dot"

    const-string v10, "application/msword"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9b

    aput-object v1, v0, v10

    const-string v1, "dotm"

    const-string v10, "application/vnd.ms-word.template.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9c

    aput-object v1, v0, v10

    const-string v1, "dotx"

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9d

    aput-object v1, v0, v10

    const-string v1, "dp"

    const-string v10, "application/vnd.osgi.dp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9e

    aput-object v1, v0, v10

    const-string v1, "dpg"

    const-string v10, "application/vnd.dpgraph"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9f

    aput-object v1, v0, v10

    const-string v1, "dsc"

    const-string v10, "text/prs.lines.tag"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa0

    aput-object v1, v0, v10

    const-string v1, "dtb"

    const-string v10, "application/x-dtbook+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa1

    aput-object v1, v0, v10

    const-string v1, "dtd"

    const-string v10, "application/xml-dtd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa2

    aput-object v1, v0, v10

    const-string v1, "dts"

    const-string v10, "audio/vnd.dts"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa3

    aput-object v1, v0, v10

    const-string v1, "dtshd"

    const-string v10, "audio/vnd.dts.hd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa4

    aput-object v1, v0, v10

    const-string v1, "dump"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa5

    aput-object v1, v0, v10

    const-string v1, "dvi"

    const-string v10, "application/x-dvi"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa6

    aput-object v1, v0, v10

    const-string v1, "dwf"

    const-string v10, "model/vnd.dwf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa7

    aput-object v1, v0, v10

    const-string v1, "dwg"

    const-string v10, "image/vnd.dwg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa8

    aput-object v1, v0, v10

    const-string v1, "dxf"

    const-string v10, "image/vnd.dxf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa9

    aput-object v1, v0, v10

    const-string v1, "dxp"

    const-string v10, "application/vnd.spotfire.dxp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xaa

    aput-object v1, v0, v10

    const-string v1, "dxr"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xab

    aput-object v1, v0, v10

    const-string v1, "ecelp4800"

    const-string v10, "audio/vnd.nuera.ecelp4800"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xac

    aput-object v1, v0, v10

    const-string v1, "ecelp7470"

    const-string v10, "audio/vnd.nuera.ecelp7470"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xad

    aput-object v1, v0, v10

    const-string v1, "ecelp9600"

    const-string v10, "audio/vnd.nuera.ecelp9600"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xae

    aput-object v1, v0, v10

    const-string v1, "ecma"

    const-string v10, "application/ecmascript"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xaf

    aput-object v1, v0, v10

    const-string v1, "edm"

    const-string v10, "application/vnd.novadigm.edm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb0

    aput-object v1, v0, v10

    const-string v1, "edx"

    const-string v10, "application/vnd.novadigm.edx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb1

    aput-object v1, v0, v10

    const-string v1, "efif"

    const-string v10, "application/vnd.picsel"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb2

    aput-object v1, v0, v10

    const-string v1, "ei6"

    const-string v10, "application/vnd.pg.osasli"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb3

    aput-object v1, v0, v10

    const-string v1, "el"

    const-string v10, "text/x-script.elisp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb4

    aput-object v1, v0, v10

    const-string v1, "elc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb5

    aput-object v1, v0, v10

    const-string v1, "eml"

    const-string v10, "message/rfc822"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb6

    aput-object v1, v0, v11

    const-string v1, "emma"

    const-string v11, "application/emma+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb7

    aput-object v1, v0, v11

    const-string v1, "eol"

    const-string v11, "audio/vnd.digital-winds"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb8

    aput-object v1, v0, v11

    const-string v1, "eot"

    const-string v11, "application/vnd.ms-fontobject"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb9

    aput-object v1, v0, v11

    const-string v1, "eps"

    const-string v11, "application/postscript"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xba

    aput-object v1, v0, v11

    const-string v1, "epub"

    const-string v11, "application/epub+zip"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbb

    aput-object v1, v0, v11

    const-string v1, "es3"

    const-string v11, "application/vnd.eszigno3+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbc

    aput-object v1, v0, v11

    const-string v1, "esf"

    const-string v11, "application/vnd.epson.esf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbd

    aput-object v1, v0, v11

    const-string v1, "et3"

    const-string v11, "application/vnd.eszigno3+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbe

    aput-object v1, v0, v11

    const-string v1, "etx"

    const-string v11, "text/x-setext"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbf

    aput-object v1, v0, v11

    const-string v1, "evy"

    const-string v11, "application/envoy"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc0

    aput-object v1, v0, v11

    const-string v1, "exe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc1

    aput-object v1, v0, v11

    const-string v1, "ext"

    const-string v11, "application/vnd.novadigm.ext"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc2

    aput-object v1, v0, v11

    const-string v1, "ez2"

    const-string v11, "application/vnd.ezpix-album"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc3

    aput-object v1, v0, v11

    const-string v1, "ez3"

    const-string v11, "application/vnd.ezpix-package"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc4

    aput-object v1, v0, v11

    const-string v1, "ez"

    const-string v11, "application/andrew-inset"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc5

    aput-object v1, v0, v11

    const-string v1, "f4v"

    const-string v11, "video/x-f4v"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc6

    aput-object v1, v0, v11

    const-string v1, "f77"

    const-string v11, "text/x-fortran"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc7

    aput-object v1, v0, v12

    const-string v1, "f90"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc8

    aput-object v1, v0, v12

    const-string v1, "fbs"

    const-string v12, "image/vnd.fastbidsheet"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc9

    aput-object v1, v0, v12

    const-string v1, "fdf"

    const-string v12, "application/vnd.fdf"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xca

    aput-object v1, v0, v12

    const-string v1, "fe_launch"

    const-string v12, "application/vnd.denovo.fcselayout-link"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xcb

    aput-object v1, v0, v12

    const-string v1, "fg5"

    const-string v12, "application/vnd.fujitsu.oasysgp"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xcc

    aput-object v1, v0, v12

    const-string v1, "fgd"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xcd

    aput-object v1, v0, v12

    const-string v1, "fh4"

    const-string v12, "image/x-freehand"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xce

    aput-object v1, v0, v13

    const-string v1, "fh5"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xcf

    aput-object v1, v0, v13

    const-string v1, "fh7"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd0

    aput-object v1, v0, v13

    const-string v1, "fhc"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd1

    aput-object v1, v0, v13

    const-string v1, "fh"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd2

    aput-object v1, v0, v12

    const-string v1, "fif"

    const-string v12, "application/fractals"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd3

    aput-object v1, v0, v12

    const-string v1, "fig"

    const-string v12, "application/x-xfig"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd4

    aput-object v1, v0, v12

    const-string v1, "fli"

    const-string v12, "video/x-fli"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd5

    aput-object v1, v0, v12

    const-string v1, "flo"

    const-string v12, "application/vnd.micrografx.flo"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd6

    aput-object v1, v0, v12

    const-string v1, "flr"

    const-string v12, "x-world/x-vrml"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd7

    aput-object v1, v0, v13

    const-string v1, "flv"

    const-string v13, "video/x-flv"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd8

    aput-object v1, v0, v13

    const-string v1, "flw"

    const-string v13, "application/vnd.kde.kivio"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd9

    aput-object v1, v0, v13

    const-string v1, "flx"

    const-string v13, "text/vnd.fmi.flexstor"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xda

    aput-object v1, v0, v13

    const-string v1, "fly"

    const-string v13, "text/vnd.fly"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdb

    aput-object v1, v0, v13

    const-string v1, "fm"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdc

    aput-object v1, v0, v13

    const-string v1, "fnc"

    const-string v13, "application/vnd.frogans.fnc"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdd

    aput-object v1, v0, v13

    const-string v1, "for"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xde

    aput-object v1, v0, v13

    const-string v1, "fpx"

    const-string v13, "image/vnd.fpx"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdf

    aput-object v1, v0, v13

    const-string v1, "frame"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xe0

    aput-object v1, v0, v13

    const-string v1, "fsc"

    const-string v13, "application/vnd.fsc.weblaunch"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xe1

    aput-object v1, v0, v13

    const-string v1, "fst"

    const-string v13, "image/vnd.fst"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xe2

    aput-object v1, v0, v13

    const-string v1, "ftc"

    const-string v13, "application/vnd.fluxtime.clip"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xe3

    aput-object v1, v0, v13

    const-string v1, "f"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe4

    aput-object v1, v0, v11

    const-string v1, "fti"

    const-string v11, "application/vnd.anser-web-funds-transfer-initiation"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe5

    aput-object v1, v0, v11

    const-string v1, "fvt"

    const-string v11, "video/vnd.fvt"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe6

    aput-object v1, v0, v11

    const-string v1, "fzs"

    const-string v11, "application/vnd.fuzzysheet"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe7

    aput-object v1, v0, v11

    const-string v1, "g"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe8

    aput-object v1, v0, v11

    const-string v1, "g3"

    const-string v11, "image/g3fax"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe9

    aput-object v1, v0, v11

    const-string v1, "gac"

    const-string v11, "application/vnd.groove-account"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xea

    aput-object v1, v0, v11

    const-string v1, "gdl"

    const-string v11, "model/vnd.gdl"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xeb

    aput-object v1, v0, v11

    const-string v1, "geo"

    const-string v11, "application/vnd.dynageo"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xec

    aput-object v1, v0, v11

    const-string v1, "gex"

    const-string v11, "application/vnd.geometry-explorer"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xed

    aput-object v1, v0, v11

    const-string v1, "ggb"

    const-string v11, "application/vnd.geogebra.file"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xee

    aput-object v1, v0, v11

    const-string v1, "ggt"

    const-string v11, "application/vnd.geogebra.tool"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xef

    aput-object v1, v0, v11

    const-string v1, "ghf"

    const-string v11, "application/vnd.groove-help"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf0

    aput-object v1, v0, v11

    const-string v1, "gif"

    const-string v11, "image/gif"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf1

    aput-object v1, v0, v11

    const-string v1, "gim"

    const-string v11, "application/vnd.groove-identity-message"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf2

    aput-object v1, v0, v11

    const-string v1, "gmx"

    const-string v11, "application/vnd.gmx"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf3

    aput-object v1, v0, v11

    const-string v1, "gnumeric"

    const-string v11, "application/x-gnumeric"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf4

    aput-object v1, v0, v11

    const-string v1, "gph"

    const-string v11, "application/vnd.flographit"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf5

    aput-object v1, v0, v11

    const-string v1, "gqf"

    const-string v11, "application/vnd.grafeq"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf6

    aput-object v1, v0, v11

    const-string v1, "gqs"

    const-string v11, "application/vnd.grafeq"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf7

    aput-object v1, v0, v11

    const-string v1, "gram"

    const-string v11, "application/srgs"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf8

    aput-object v1, v0, v11

    const-string v1, "gre"

    const-string v11, "application/vnd.geometry-explorer"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf9

    aput-object v1, v0, v11

    const-string v1, "grv"

    const-string v11, "application/vnd.groove-injector"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfa

    aput-object v1, v0, v11

    const-string v1, "grxml"

    const-string v11, "application/srgs+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfb

    aput-object v1, v0, v11

    const-string v1, "gsf"

    const-string v11, "application/x-font-ghostscript"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfc

    aput-object v1, v0, v11

    const-string v1, "gtar"

    const-string v11, "application/x-gtar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfd

    aput-object v1, v0, v11

    const-string v1, "gtm"

    const-string v11, "application/vnd.groove-tool-message"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfe

    aput-object v1, v0, v11

    const-string v1, "gtw"

    const-string v11, "model/vnd.gtw"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xff

    aput-object v1, v0, v11

    const-string v1, "gv"

    const-string v11, "text/vnd.graphviz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x100

    aput-object v1, v0, v11

    const-string v1, "gz"

    const-string v11, "application/x-gzip"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x101

    aput-object v1, v0, v11

    const-string v1, "h261"

    const-string v11, "video/h261"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x102

    aput-object v1, v0, v11

    const-string v1, "h263"

    const-string v11, "video/h263"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x103

    aput-object v1, v0, v11

    const-string v1, "h264"

    const-string v11, "video/h264"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x104

    aput-object v1, v0, v11

    const-string v1, "hbci"

    const-string v11, "application/vnd.hbci"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x105

    aput-object v1, v0, v11

    const-string v1, "hdf"

    const-string v11, "application/x-hdf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x106

    aput-object v1, v0, v11

    const-string v1, "hh"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x107

    aput-object v1, v0, v9

    const-string v1, "hlb"

    const-string v9, "text/x-script"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x108

    aput-object v1, v0, v9

    const-string v1, "hlp"

    const-string v9, "application/winhlp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x109

    aput-object v1, v0, v9

    const-string v1, "hpgl"

    const-string v9, "application/vnd.hp-hpgl"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10a

    aput-object v1, v0, v9

    const-string v1, "hpid"

    const-string v9, "application/vnd.hp-hpid"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10b

    aput-object v1, v0, v9

    const-string v1, "hps"

    const-string v9, "application/vnd.hp-hps"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10c

    aput-object v1, v0, v9

    const-string v1, "hqx"

    const-string v9, "application/mac-binhex40"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10d

    aput-object v1, v0, v9

    const-string v1, "hta"

    const-string v9, "application/hta"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10e

    aput-object v1, v0, v9

    const-string v1, "htc"

    const-string v9, "text/x-component"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10f

    aput-object v1, v0, v9

    const-string v1, "htx"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x110

    aput-object v1, v0, v9

    const-string v1, "h"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x111

    aput-object v1, v0, v9

    const-string v1, "htke"

    const-string v9, "application/vnd.kenameaapp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x112

    aput-object v1, v0, v9

    const-string v1, "htmls"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x113

    aput-object v1, v0, v9

    const-string v1, "html"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x114

    aput-object v1, v0, v9

    const-string v1, "htm"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x115

    aput-object v1, v0, v9

    const-string v1, "htt"

    const-string v9, "text/webviewhtml"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x116

    aput-object v1, v0, v9

    const-string v1, "hvd"

    const-string v9, "application/vnd.yamaha.hv-dic"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x117

    aput-object v1, v0, v9

    const-string v1, "hvp"

    const-string v9, "application/vnd.yamaha.hv-voice"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x118

    aput-object v1, v0, v9

    const-string v1, "hvs"

    const-string v9, "application/vnd.yamaha.hv-script"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x119

    aput-object v1, v0, v9

    const-string v1, "idc"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11a

    aput-object v1, v0, v9

    const-string v1, "icc"

    const-string v9, "application/vnd.iccprofile"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11b

    aput-object v1, v0, v9

    const-string v1, "ice"

    const-string v9, "x-conference/x-cooltalk"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11c

    aput-object v1, v0, v9

    const-string v1, "icm"

    const-string v9, "application/vnd.iccprofile"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11d

    aput-object v1, v0, v9

    const-string v1, "ico"

    const-string v9, "image/x-icon"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11e

    aput-object v1, v0, v9

    const-string v1, "ics"

    const-string v9, "text/calendar"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11f

    aput-object v1, v0, v9

    const-string v1, "ief"

    const-string v9, "image/ief"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x120

    aput-object v1, v0, v9

    const-string v1, "ifb"

    const-string v9, "text/calendar"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x121

    aput-object v1, v0, v9

    const-string v1, "ifm"

    const-string v9, "application/vnd.shana.informed.formdata"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x122

    aput-object v1, v0, v9

    const-string v1, "iges"

    const-string v9, "model/iges"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x123

    aput-object v1, v0, v9

    const-string v1, "igl"

    const-string v9, "application/vnd.igloader"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x124

    aput-object v1, v0, v9

    const-string v1, "igs"

    const-string v9, "model/iges"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x125

    aput-object v1, v0, v9

    const-string v1, "igx"

    const-string v9, "application/vnd.micrografx.igx"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x126

    aput-object v1, v0, v9

    const-string v1, "iif"

    const-string v9, "application/vnd.shana.informed.interchange"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x127

    aput-object v1, v0, v9

    const-string v1, "iii"

    const-string v9, "application/x-iphone"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x128

    aput-object v1, v0, v9

    const-string v1, "imp"

    const-string v9, "application/vnd.accpac.simply.imp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x129

    aput-object v1, v0, v9

    const-string v1, "ims"

    const-string v9, "application/vnd.ms-ims"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12a

    aput-object v1, v0, v9

    const-string v1, "ins"

    const-string v9, "application/x-internet-signup"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12b

    aput-object v1, v0, v9

    const-string v1, "in"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12c

    aput-object v1, v0, v9

    const-string v1, "ipk"

    const-string v9, "application/vnd.shana.informed.package"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12d

    aput-object v1, v0, v9

    const-string v1, "irm"

    const-string v9, "application/vnd.ibm.rights-management"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12e

    aput-object v1, v0, v9

    const-string v1, "irp"

    const-string v9, "application/vnd.irepository.package+xml"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12f

    aput-object v1, v0, v9

    const-string v1, "iso"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x130

    aput-object v1, v0, v9

    const-string v1, "isp"

    const-string v9, "application/x-internet-signup"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x131

    aput-object v1, v0, v9

    const-string v1, "itp"

    const-string v9, "application/vnd.shana.informed.formtemplate"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x132

    aput-object v1, v0, v9

    const-string v1, "ivp"

    const-string v9, "application/vnd.immervision-ivp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x133

    aput-object v1, v0, v9

    const-string v1, "ivu"

    const-string v9, "application/vnd.immervision-ivu"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x134

    aput-object v1, v0, v9

    const-string v1, "jad"

    const-string v9, "text/vnd.sun.j2me.app-descriptor"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x135

    aput-object v1, v0, v9

    const-string v1, "jam"

    const-string v9, "application/vnd.jam"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x136

    aput-object v1, v0, v9

    const-string v1, "jar"

    const-string v9, "application/java-archive"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x137

    aput-object v1, v0, v9

    const-string v1, "jav"

    const-string v9, "text/x-java-source"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x138

    aput-object v1, v0, v9

    const-string v1, "java"

    const-string v9, "text/x-java-source"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x139

    aput-object v1, v0, v9

    const-string v1, "jfif"

    const-string v9, "image/pipeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13a

    aput-object v1, v0, v9

    const-string v1, "jisp"

    const-string v9, "application/vnd.jisp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13b

    aput-object v1, v0, v9

    const-string v1, "jlt"

    const-string v9, "application/vnd.hp-jlyt"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13c

    aput-object v1, v0, v9

    const-string v1, "jnlp"

    const-string v9, "application/x-java-jnlp-file"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13d

    aput-object v1, v0, v9

    const-string v1, "joda"

    const-string v9, "application/vnd.joost.joda-archive"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13e

    aput-object v1, v0, v9

    const-string v1, "jpeg"

    const-string v9, "image/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13f

    aput-object v1, v0, v9

    const-string v1, "jpe"

    const-string v9, "image/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x140

    aput-object v1, v0, v9

    const-string v1, "jpg"

    const-string v9, "image/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x141

    aput-object v1, v0, v9

    const-string v1, "jpgm"

    const-string v9, "video/jpm"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x142

    aput-object v1, v0, v9

    const-string v1, "jpgv"

    const-string v9, "video/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x143

    aput-object v1, v0, v9

    const-string v1, "jpm"

    const-string v9, "video/jpm"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x144

    aput-object v1, v0, v9

    const-string v1, "js"

    const-string v9, "text/javascript"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x145

    aput-object v1, v0, v9

    const-string v1, "json"

    const-string v9, "application/json"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x146

    aput-object v1, v0, v9

    const-string v1, "kar"

    const-string v9, "audio/midi"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x147

    aput-object v1, v0, v11

    const-string v1, "karbon"

    const-string v11, "application/vnd.kde.karbon"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x148

    aput-object v1, v0, v11

    const-string v1, "kfo"

    const-string v11, "application/vnd.kde.kformula"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x149

    aput-object v1, v0, v11

    const-string v1, "kia"

    const-string v11, "application/vnd.kidspiration"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14a

    aput-object v1, v0, v11

    const-string v1, "kil"

    const-string v11, "application/x-killustrator"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14b

    aput-object v1, v0, v11

    const-string v1, "kml"

    const-string v11, "application/vnd.google-earth.kml+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14c

    aput-object v1, v0, v11

    const-string v1, "kmz"

    const-string v11, "application/vnd.google-earth.kmz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14d

    aput-object v1, v0, v11

    const-string v1, "kne"

    const-string v11, "application/vnd.kinar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14e

    aput-object v1, v0, v11

    const-string v1, "knp"

    const-string v11, "application/vnd.kinar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14f

    aput-object v1, v0, v11

    const-string v1, "kon"

    const-string v11, "application/vnd.kde.kontour"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x150

    aput-object v1, v0, v11

    const-string v1, "kpr"

    const-string v11, "application/vnd.kde.kpresenter"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x151

    aput-object v1, v0, v11

    const-string v1, "kpt"

    const-string v11, "application/vnd.kde.kpresenter"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x152

    aput-object v1, v0, v11

    const-string v1, "ksh"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x153

    aput-object v1, v0, v11

    const-string v1, "ksp"

    const-string v11, "application/vnd.kde.kspread"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x154

    aput-object v1, v0, v11

    const-string v1, "ktr"

    const-string v11, "application/vnd.kahootz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x155

    aput-object v1, v0, v11

    const-string v1, "ktz"

    const-string v11, "application/vnd.kahootz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x156

    aput-object v1, v0, v11

    const-string v1, "kwd"

    const-string v11, "application/vnd.kde.kword"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x157

    aput-object v1, v0, v11

    const-string v1, "kwt"

    const-string v11, "application/vnd.kde.kword"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x158

    aput-object v1, v0, v11

    const-string v1, "latex"

    const-string v11, "application/x-latex"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x159

    aput-object v1, v0, v11

    const-string v1, "lbd"

    const-string v11, "application/vnd.llamagraphics.life-balance.desktop"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15a

    aput-object v1, v0, v11

    const-string v1, "lbe"

    const-string v11, "application/vnd.llamagraphics.life-balance.exchange+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15b

    aput-object v1, v0, v11

    const-string v1, "les"

    const-string v11, "application/vnd.hhe.lesson-player"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15c

    aput-object v1, v0, v11

    const-string v1, "lha"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15d

    aput-object v1, v0, v11

    const-string v1, "link66"

    const-string v11, "application/vnd.route66.link66+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15e

    aput-object v1, v0, v11

    const-string v1, "list3820"

    const-string v11, "application/vnd.ibm.modcap"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15f

    aput-object v1, v0, v11

    const-string v1, "listafp"

    const-string v11, "application/vnd.ibm.modcap"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x160

    aput-object v1, v0, v11

    const-string v1, "list"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x161

    aput-object v1, v0, v11

    const-string v1, "log"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x162

    aput-object v1, v0, v11

    const-string v1, "lostxml"

    const-string v11, "application/lost+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x163

    aput-object v1, v0, v11

    const-string v1, "lrf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x164

    aput-object v1, v0, v11

    const-string v1, "lrm"

    const-string v11, "application/vnd.ms-lrm"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x165

    aput-object v1, v0, v11

    const-string v1, "lsf"

    const-string v11, "video/x-la-asf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x166

    aput-object v1, v0, v11

    const-string v1, "lsp"

    const-string v11, "text/x-script.lisp"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x167

    aput-object v1, v0, v11

    const-string v1, "lst"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x168

    aput-object v1, v0, v11

    const-string v1, "lsx"

    const-string v11, "video/x-la-asf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x169

    aput-object v1, v0, v11

    const-string v1, "ltf"

    const-string v11, "application/vnd.frogans.ltf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x16a

    aput-object v1, v0, v11

    const-string v1, "lvp"

    const-string v11, "audio/vnd.lucent.voice"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x16b

    aput-object v1, v0, v11

    const-string v1, "lwp"

    const-string v11, "application/vnd.lotus-wordpro"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x16c

    aput-object v1, v0, v11

    const-string v1, "lzh"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x16d

    aput-object v1, v0, v11

    const-string v1, "m13"

    const-string v11, "application/x-msmediaview"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x16e

    aput-object v1, v0, v11

    const-string v1, "m14"

    const-string v11, "application/x-msmediaview"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x16f

    aput-object v1, v0, v11

    const-string v1, "m1v"

    const-string v11, "video/mpeg"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x170

    aput-object v1, v0, v13

    const-string v1, "m2a"

    const-string v13, "audio/mpeg"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x171

    aput-object v1, v0, v14

    const-string v1, "m2v"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x172

    aput-object v1, v0, v14

    const-string v1, "m3a"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x173

    aput-object v1, v0, v14

    const-string v1, "m3u"

    const-string v14, "audio/x-mpegurl"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x174

    aput-object v1, v0, v14

    const-string v1, "m4u"

    const-string v14, "video/vnd.mpegurl"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x175

    aput-object v1, v0, v14

    const-string v1, "m4v"

    const-string v14, "video/x-m4v"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x176

    aput-object v1, v0, v14

    const-string v1, "m"

    const-string v14, "text/x-m"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x177

    aput-object v1, v0, v14

    const-string v1, "ma"

    const-string v14, "application/mathematica"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x178

    aput-object v1, v0, v14

    const-string v1, "mag"

    const-string v14, "application/vnd.ecowin.chart"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x179

    aput-object v1, v0, v14

    const-string v1, "maker"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x17a

    aput-object v1, v0, v7

    const-string v1, "man"

    const-string v7, "text/troff"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17b

    aput-object v1, v0, v14

    const-string v1, "mar"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17c

    aput-object v1, v0, v14

    const-string v1, "mathml"

    const-string v14, "application/mathml+xml"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17d

    aput-object v1, v0, v14

    const-string v1, "mb"

    const-string v14, "application/mathematica"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17e

    aput-object v1, v0, v14

    const-string v1, "mbk"

    const-string v14, "application/vnd.mobius.mbk"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17f

    aput-object v1, v0, v14

    const-string v1, "mbox"

    const-string v14, "application/mbox"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x180

    aput-object v1, v0, v14

    const-string v1, "mc1"

    const-string v14, "application/vnd.medcalcdata"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x181

    aput-object v1, v0, v14

    const-string v1, "mcd"

    const-string v14, "application/vnd.mcd"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x182

    aput-object v1, v0, v14

    const-string v1, "mcf"

    const-string v14, "text/mcf"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x183

    aput-object v1, v0, v14

    const-string v1, "mcurl"

    const-string v14, "text/vnd.curl.mcurl"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x184

    aput-object v1, v0, v14

    const-string v1, "md"

    const-string v14, "text/markdown"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x185

    aput-object v1, v0, v14

    const-string v1, "mdb"

    const-string v14, "application/x-msaccess"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x186

    aput-object v1, v0, v14

    const-string v1, "mdi"

    const-string v14, "image/vnd.ms-modi"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x187

    aput-object v1, v0, v14

    const-string v1, "mesh"

    const-string v14, "model/mesh"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x188

    aput-object v1, v0, v14

    const-string v1, "me"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x189

    aput-object v1, v0, v14

    const-string v1, "mfm"

    const-string v14, "application/vnd.mfmp"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18a

    aput-object v1, v0, v14

    const-string v1, "mgz"

    const-string v14, "application/vnd.proteus.magazine"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18b

    aput-object v1, v0, v14

    const-string v1, "mht"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18c

    aput-object v1, v0, v14

    const-string v1, "mhtml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18d

    aput-object v1, v0, v14

    const-string v1, "mid"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18e

    aput-object v1, v0, v14

    const-string v1, "midi"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18f

    aput-object v1, v0, v14

    const-string v1, "mif"

    const-string v14, "application/vnd.mif"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x190

    aput-object v1, v0, v14

    const-string v1, "mime"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x191

    aput-object v1, v0, v14

    const-string v1, "mj2"

    const-string v14, "video/mj2"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x192

    aput-object v1, v0, v14

    const-string v1, "mjp2"

    const-string v14, "video/mj2"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x193

    aput-object v1, v0, v14

    const-string v1, "mlp"

    const-string v14, "application/vnd.dolby.mlp"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x194

    aput-object v1, v0, v14

    const-string v1, "mmd"

    const-string v14, "application/vnd.chipnuts.karaoke-mmd"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x195

    aput-object v1, v0, v14

    const-string v1, "mmf"

    const-string v14, "application/vnd.smaf"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x196

    aput-object v1, v0, v14

    const-string v1, "mmr"

    const-string v14, "image/vnd.fujixerox.edmics-mmr"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x197

    aput-object v1, v0, v14

    const-string v1, "mny"

    const-string v14, "application/x-msmoney"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x198

    aput-object v1, v0, v14

    const-string v1, "mobi"

    const-string v14, "application/x-mobipocket-ebook"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x199

    aput-object v1, v0, v14

    const-string v1, "movie"

    const-string v14, "video/x-sgi-movie"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x19a

    aput-object v1, v0, v14

    const-string v1, "mov"

    const-string v14, "video/quicktime"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x19b

    aput-object v1, v0, v14

    const-string v1, "mp2a"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x19c

    aput-object v1, v0, v14

    const-string v1, "mp2"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x19d

    aput-object v1, v0, v14

    const-string v1, "mp3"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x19e

    aput-object v1, v0, v14

    const-string v1, "mp4a"

    const-string v14, "audio/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x19f

    aput-object v1, v0, v14

    const-string v1, "mp4s"

    const-string v14, "application/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a0

    aput-object v1, v0, v14

    const-string v1, "mp4"

    const-string v14, "video/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a1

    aput-object v1, v0, v14

    const-string v1, "mp4v"

    const-string v14, "video/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a2

    aput-object v1, v0, v14

    const-string v1, "mpa"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a3

    aput-object v1, v0, v14

    const-string v1, "mpc"

    const-string v14, "application/vnd.mophun.certificate"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a4

    aput-object v1, v0, v14

    const-string v1, "mpeg"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a5

    aput-object v1, v0, v14

    const-string v1, "mpe"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a6

    aput-object v1, v0, v14

    const-string v1, "mpg4"

    const-string v14, "video/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x1a7

    aput-object v1, v0, v14

    const-string v1, "mpga"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1a8

    aput-object v1, v0, v13

    const-string v1, "mpg"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1a9

    aput-object v1, v0, v13

    const-string v1, "mpkg"

    const-string v13, "application/vnd.apple.installer+xml"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1aa

    aput-object v1, v0, v13

    const-string v1, "mpm"

    const-string v13, "application/vnd.blueice.multipass"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1ab

    aput-object v1, v0, v13

    const-string v1, "mpn"

    const-string v13, "application/vnd.mophun.application"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1ac

    aput-object v1, v0, v13

    const-string v1, "mpp"

    const-string v13, "application/vnd.ms-project"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1ad

    aput-object v1, v0, v13

    const-string v1, "mpt"

    const-string v13, "application/vnd.ms-project"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x1ae

    aput-object v1, v0, v13

    const-string v1, "mpv2"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1af

    aput-object v1, v0, v11

    const-string v1, "mpy"

    const-string v11, "application/vnd.ibm.minipay"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b0

    aput-object v1, v0, v11

    const-string v1, "mqy"

    const-string v11, "application/vnd.mobius.mqy"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b1

    aput-object v1, v0, v11

    const-string v1, "mrc"

    const-string v11, "application/marc"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b2

    aput-object v1, v0, v11

    const-string v1, "mscml"

    const-string v11, "application/mediaservercontrol+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b3

    aput-object v1, v0, v11

    const-string v1, "mseed"

    const-string v11, "application/vnd.fdsn.mseed"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b4

    aput-object v1, v0, v11

    const-string v1, "mseq"

    const-string v11, "application/vnd.mseq"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b5

    aput-object v1, v0, v11

    const-string v1, "msf"

    const-string v11, "application/vnd.epson.msf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b6

    aput-object v1, v0, v11

    const-string v1, "msh"

    const-string v11, "model/mesh"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b7

    aput-object v1, v0, v11

    const-string v1, "msi"

    const-string v11, "application/x-msdownload"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b8

    aput-object v1, v0, v11

    const-string v1, "ms"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b9

    aput-object v1, v0, v11

    const-string v1, "msty"

    const-string v11, "application/vnd.muvee.style"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1ba

    aput-object v1, v0, v11

    const-string v1, "mts"

    const-string v11, "model/vnd.mts"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bb

    aput-object v1, v0, v11

    const-string v1, "mus"

    const-string v11, "application/vnd.musician"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bc

    aput-object v1, v0, v11

    const-string v1, "musicxml"

    const-string v11, "application/vnd.recordare.musicxml+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bd

    aput-object v1, v0, v11

    const-string v1, "mvb"

    const-string v11, "application/x-msmediaview"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1be

    aput-object v1, v0, v11

    const-string v1, "mxf"

    const-string v11, "application/mxf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bf

    aput-object v1, v0, v11

    const-string v1, "mxl"

    const-string v11, "application/vnd.recordare.musicxml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c0

    aput-object v1, v0, v11

    const-string v1, "mxml"

    const-string v11, "application/xv+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c1

    aput-object v1, v0, v11

    const-string v1, "mxs"

    const-string v11, "application/vnd.triscape.mxs"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c2

    aput-object v1, v0, v11

    const-string v1, "mxu"

    const-string v11, "video/vnd.mpegurl"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c3

    aput-object v1, v0, v11

    const-string v1, "nb"

    const-string v11, "application/mathematica"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c4

    aput-object v1, v0, v11

    const-string v1, "nc"

    const-string v11, "application/x-netcdf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c5

    aput-object v1, v0, v11

    const-string v1, "ncx"

    const-string v11, "application/x-dtbncx+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c6

    aput-object v1, v0, v11

    const-string v1, "n-gage"

    const-string v11, "application/vnd.nokia.n-gage.symbian.install"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c7

    aput-object v1, v0, v11

    const-string v1, "ngdat"

    const-string v11, "application/vnd.nokia.n-gage.data"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c8

    aput-object v1, v0, v11

    const-string v1, "nlu"

    const-string v11, "application/vnd.neurolanguage.nlu"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1c9

    aput-object v1, v0, v11

    const-string v1, "nml"

    const-string v11, "application/vnd.enliven"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1ca

    aput-object v1, v0, v11

    const-string v1, "nnd"

    const-string v11, "application/vnd.noblenet-directory"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1cb

    aput-object v1, v0, v11

    const-string v1, "nns"

    const-string v11, "application/vnd.noblenet-sealer"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1cc

    aput-object v1, v0, v11

    const-string v1, "nnw"

    const-string v11, "application/vnd.noblenet-web"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1cd

    aput-object v1, v0, v11

    const-string v1, "npx"

    const-string v11, "image/vnd.net-fpx"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1ce

    aput-object v1, v0, v11

    const-string v1, "nsf"

    const-string v11, "application/vnd.lotus-notes"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1cf

    aput-object v1, v0, v11

    const-string v1, "nws"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d0

    aput-object v1, v0, v10

    const-string v1, "oa2"

    const-string v10, "application/vnd.fujitsu.oasys2"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d1

    aput-object v1, v0, v10

    const-string v1, "oa3"

    const-string v10, "application/vnd.fujitsu.oasys3"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d2

    aput-object v1, v0, v10

    const-string v1, "o"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d3

    aput-object v1, v0, v10

    const-string v1, "oas"

    const-string v10, "application/vnd.fujitsu.oasys"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d4

    aput-object v1, v0, v10

    const-string v1, "obd"

    const-string v10, "application/x-msbinder"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d5

    aput-object v1, v0, v10

    const-string v1, "obj"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d6

    aput-object v1, v0, v10

    const-string v1, "oda"

    const-string v10, "application/oda"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d7

    aput-object v1, v0, v10

    const-string v1, "odb"

    const-string v10, "application/vnd.oasis.opendocument.database"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d8

    aput-object v1, v0, v10

    const-string v1, "odc"

    const-string v10, "application/vnd.oasis.opendocument.chart"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d9

    aput-object v1, v0, v10

    const-string v1, "odf"

    const-string v10, "application/vnd.oasis.opendocument.formula"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1da

    aput-object v1, v0, v10

    const-string v1, "odft"

    const-string v10, "application/vnd.oasis.opendocument.formula-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1db

    aput-object v1, v0, v10

    const-string v1, "odg"

    const-string v10, "application/vnd.oasis.opendocument.graphics"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1dc

    aput-object v1, v0, v10

    const-string v1, "odi"

    const-string v10, "application/vnd.oasis.opendocument.image"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1dd

    aput-object v1, v0, v10

    const-string v1, "odp"

    const-string v10, "application/vnd.oasis.opendocument.presentation"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1de

    aput-object v1, v0, v10

    const-string v1, "ods"

    const-string v10, "application/vnd.oasis.opendocument.spreadsheet"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1df

    aput-object v1, v0, v10

    const-string v1, "odt"

    const-string v10, "application/vnd.oasis.opendocument.text"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e0

    aput-object v1, v0, v10

    const-string v1, "oga"

    const-string v10, "audio/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e1

    aput-object v1, v0, v10

    const-string v1, "ogg"

    const-string v10, "audio/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e2

    aput-object v1, v0, v10

    const-string v1, "ogv"

    const-string v10, "video/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e3

    aput-object v1, v0, v10

    const-string v1, "ogx"

    const-string v10, "application/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e4

    aput-object v1, v0, v10

    const-string v1, "onepkg"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e5

    aput-object v1, v0, v10

    const-string v1, "onetmp"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e6

    aput-object v1, v0, v10

    const-string v1, "onetoc2"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e7

    aput-object v1, v0, v10

    const-string v1, "onetoc"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e8

    aput-object v1, v0, v10

    const-string v1, "opf"

    const-string v10, "application/oebps-package+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e9

    aput-object v1, v0, v10

    const-string v1, "oprc"

    const-string v10, "application/vnd.palm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ea

    aput-object v1, v0, v10

    const-string v1, "org"

    const-string v10, "application/vnd.lotus-organizer"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1eb

    aput-object v1, v0, v10

    const-string v1, "osf"

    const-string v10, "application/vnd.yamaha.openscoreformat"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ec

    aput-object v1, v0, v10

    const-string v1, "osfpvg"

    const-string v10, "application/vnd.yamaha.openscoreformat.osfpvg+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ed

    aput-object v1, v0, v10

    const-string v1, "otc"

    const-string v10, "application/vnd.oasis.opendocument.chart-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ee

    aput-object v1, v0, v10

    const-string v1, "otf"

    const-string v10, "application/x-font-otf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ef

    aput-object v1, v0, v10

    const-string v1, "otg"

    const-string v10, "application/vnd.oasis.opendocument.graphics-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f0

    aput-object v1, v0, v10

    const-string v1, "oth"

    const-string v10, "application/vnd.oasis.opendocument.text-web"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f1

    aput-object v1, v0, v10

    const-string v1, "oti"

    const-string v10, "application/vnd.oasis.opendocument.image-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f2

    aput-object v1, v0, v10

    const-string v1, "otm"

    const-string v10, "application/vnd.oasis.opendocument.text-master"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f3

    aput-object v1, v0, v10

    const-string v1, "otp"

    const-string v10, "application/vnd.oasis.opendocument.presentation-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f4

    aput-object v1, v0, v10

    const-string v1, "ots"

    const-string v10, "application/vnd.oasis.opendocument.spreadsheet-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f5

    aput-object v1, v0, v10

    const-string v1, "ott"

    const-string v10, "application/vnd.oasis.opendocument.text-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f6

    aput-object v1, v0, v10

    const-string v1, "oxt"

    const-string v10, "application/vnd.openofficeorg.extension"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f7

    aput-object v1, v0, v10

    const-string v1, "p10"

    const-string v10, "application/pkcs10"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f8

    aput-object v1, v0, v10

    const-string v1, "p12"

    const-string v10, "application/x-pkcs12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f9

    aput-object v1, v0, v10

    const-string v1, "p7b"

    const-string v10, "application/x-pkcs7-certificates"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fa

    aput-object v1, v0, v10

    const-string v1, "p7c"

    const-string v10, "application/x-pkcs7-mime"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fb

    aput-object v1, v0, v10

    const-string v1, "p7m"

    const-string v10, "application/x-pkcs7-mime"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fc

    aput-object v1, v0, v10

    const-string v1, "p7r"

    const-string v10, "application/x-pkcs7-certreqresp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fd

    aput-object v1, v0, v10

    const-string v1, "p7s"

    const-string v10, "application/x-pkcs7-signature"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fe

    aput-object v1, v0, v10

    const-string v1, "pas"

    const-string v10, "text/x-pascal"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ff

    aput-object v1, v0, v10

    const-string v1, "pbd"

    const-string v10, "application/vnd.powerbuilder6"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x200

    aput-object v1, v0, v10

    const-string v1, "pbm"

    const-string v10, "image/x-portable-bitmap"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x201

    aput-object v1, v0, v10

    const-string v1, "pcf"

    const-string v10, "application/x-font-pcf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x202

    aput-object v1, v0, v10

    const-string v1, "pcl"

    const-string v10, "application/vnd.hp-pcl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x203

    aput-object v1, v0, v10

    const-string v1, "pclxl"

    const-string v10, "application/vnd.hp-pclxl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x204

    aput-object v1, v0, v10

    const-string v1, "pct"

    const-string v10, "image/x-pict"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x205

    aput-object v1, v0, v10

    const-string v1, "pcurl"

    const-string v10, "application/vnd.curl.pcurl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x206

    aput-object v1, v0, v10

    const-string v1, "pcx"

    const-string v10, "image/x-pcx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x207

    aput-object v1, v0, v10

    const-string v1, "pdb"

    const-string v10, "application/vnd.palm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x208

    aput-object v1, v0, v10

    const-string v1, "pdf"

    const-string v10, "application/pdf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x209

    aput-object v1, v0, v10

    const-string v1, "pfa"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x20a

    aput-object v1, v0, v10

    const-string v1, "pfb"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x20b

    aput-object v1, v0, v10

    const-string v1, "pfm"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20c

    aput-object v1, v0, v5

    const-string v1, "pfr"

    const-string v5, "application/font-tdpfr"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20d

    aput-object v1, v0, v5

    const-string v1, "pfx"

    const-string v5, "application/x-pkcs12"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20e

    aput-object v1, v0, v5

    const-string v1, "pgm"

    const-string v5, "image/x-portable-graymap"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20f

    aput-object v1, v0, v5

    const-string v1, "pgn"

    const-string v5, "application/x-chess-pgn"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x210

    aput-object v1, v0, v5

    const-string v1, "pgp"

    const-string v5, "application/pgp-encrypted"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x211

    aput-object v1, v0, v5

    const-string v1, "pic"

    const-string v5, "image/x-pict"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x212

    aput-object v1, v0, v5

    const-string v1, "pkg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x213

    aput-object v1, v0, v5

    const-string v1, "pki"

    const-string v5, "application/pkixcmp"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x214

    aput-object v1, v0, v5

    const-string v1, "pkipath"

    const-string v5, "application/pkix-pkipath"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x215

    aput-object v1, v0, v5

    const-string v1, "pko"

    const-string v5, "application/ynd.ms-pkipko"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x216

    aput-object v1, v0, v5

    const-string v1, "plb"

    const-string v5, "application/vnd.3gpp.pic-bw-large"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x217

    aput-object v1, v0, v5

    const-string v1, "plc"

    const-string v5, "application/vnd.mobius.plc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x218

    aput-object v1, v0, v5

    const-string v1, "plf"

    const-string v5, "application/vnd.pocketlearn"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x219

    aput-object v1, v0, v5

    const-string v1, "pls"

    const-string v5, "application/pls+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x21a

    aput-object v1, v0, v5

    const-string v1, "pl"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x21b

    aput-object v1, v0, v5

    const-string v1, "pma"

    const-string v5, "application/x-perfmon"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21c

    aput-object v1, v0, v10

    const-string v1, "pmc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21d

    aput-object v1, v0, v10

    const-string v1, "pml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21e

    aput-object v1, v0, v10

    const-string v1, "pmr"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21f

    aput-object v1, v0, v10

    const-string v1, "pmw"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x220

    aput-object v1, v0, v5

    const-string v1, "pm"

    const-string v5, "text/x-script.perl-module"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x221

    aput-object v1, v0, v5

    const-string v1, "png"

    const-string v5, "image/png"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x222

    aput-object v1, v0, v5

    const-string v1, "pnm"

    const-string v5, "image/x-portable-anymap"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x223

    aput-object v1, v0, v5

    const-string v1, "portpkg"

    const-string v5, "application/vnd.macports.portpkg"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x224

    aput-object v1, v0, v5

    const-string v1, "pot"

    const-string v5, "application/vnd.ms-powerpoint"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x225

    aput-object v1, v0, v10

    const-string v1, "potm"

    const-string v10, "application/vnd.ms-powerpoint.template.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x226

    aput-object v1, v0, v10

    const-string v1, "potx"

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x227

    aput-object v1, v0, v10

    const-string v1, "ppa"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x228

    aput-object v1, v0, v10

    const-string v1, "ppam"

    const-string v10, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x229

    aput-object v1, v0, v10

    const-string v1, "ppd"

    const-string v10, "application/vnd.cups-ppd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22a

    aput-object v1, v0, v10

    const-string v1, "ppm"

    const-string v10, "image/x-portable-pixmap"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22b

    aput-object v1, v0, v10

    const-string v1, "pps"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22c

    aput-object v1, v0, v10

    const-string v1, "ppsm"

    const-string v10, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22d

    aput-object v1, v0, v10

    const-string v1, "ppsx"

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22e

    aput-object v1, v0, v10

    const-string v1, "ppt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22f

    aput-object v1, v0, v10

    const-string v1, "pptm"

    const-string v10, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x230

    aput-object v1, v0, v10

    const-string v1, "pptx"

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x231

    aput-object v1, v0, v10

    const-string v1, "pqa"

    const-string v10, "application/vnd.palm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x232

    aput-object v1, v0, v10

    const-string v1, "prc"

    const-string v10, "application/x-mobipocket-ebook"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x233

    aput-object v1, v0, v10

    const-string v1, "pre"

    const-string v10, "application/vnd.lotus-freelance"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x234

    aput-object v1, v0, v10

    const-string v1, "prf"

    const-string v10, "application/pics-rules"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x235

    aput-object v1, v0, v10

    const-string v1, "ps"

    const-string v10, "application/postscript"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x236

    aput-object v1, v0, v10

    const-string v1, "psb"

    const-string v10, "application/vnd.3gpp.pic-bw-small"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x237

    aput-object v1, v0, v10

    const-string v1, "psd"

    const-string v10, "image/vnd.adobe.photoshop"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x238

    aput-object v1, v0, v10

    const-string v1, "psf"

    const-string v10, "application/x-font-linux-psf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x239

    aput-object v1, v0, v10

    const-string v1, "p"

    const-string v10, "text/x-pascal"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23a

    aput-object v1, v0, v10

    const-string v1, "ptid"

    const-string v10, "application/vnd.pvi.ptid1"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23b

    aput-object v1, v0, v10

    const-string v1, "pub"

    const-string v10, "application/x-mspublisher"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23c

    aput-object v1, v0, v10

    const-string v1, "pvb"

    const-string v10, "application/vnd.3gpp.pic-bw-var"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23d

    aput-object v1, v0, v10

    const-string v1, "pwn"

    const-string v10, "application/vnd.3m.post-it-notes"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23e

    aput-object v1, v0, v10

    const-string v1, "pwz"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x23f

    aput-object v1, v0, v5

    const-string v1, "pya"

    const-string v5, "audio/vnd.ms-playready.media.pya"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x240

    aput-object v1, v0, v5

    const-string v1, "pyc"

    const-string v5, "application/x-python-code"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x241

    aput-object v1, v0, v5

    const-string v1, "pyo"

    const-string v5, "application/x-python-code"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x242

    aput-object v1, v0, v5

    const-string v1, "py"

    const-string v5, "text/x-python"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x243

    aput-object v1, v0, v5

    const-string v1, "pyv"

    const-string v5, "video/vnd.ms-playready.media.pyv"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x244

    aput-object v1, v0, v5

    const-string v1, "qam"

    const-string v5, "application/vnd.epson.quickanime"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x245

    aput-object v1, v0, v5

    const-string v1, "qbo"

    const-string v5, "application/vnd.intu.qbo"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x246

    aput-object v1, v0, v5

    const-string v1, "qfx"

    const-string v5, "application/vnd.intu.qfx"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x247

    aput-object v1, v0, v5

    const-string v1, "qps"

    const-string v5, "application/vnd.publishare-delta-tree"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x248

    aput-object v1, v0, v5

    const-string v1, "qt"

    const-string v5, "video/quicktime"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x249

    aput-object v1, v0, v5

    const-string v1, "qwd"

    const-string v5, "application/vnd.quark.quarkxpress"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x24a

    aput-object v1, v0, v10

    const-string v1, "qwt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x24b

    aput-object v1, v0, v10

    const-string v1, "qxb"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x24c

    aput-object v1, v0, v10

    const-string v1, "qxd"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x24d

    aput-object v1, v0, v10

    const-string v1, "qxl"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x24e

    aput-object v1, v0, v10

    const-string v1, "qxt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24f

    aput-object v1, v0, v5

    const-string v1, "ra"

    const-string v5, "audio/x-pn-realaudio"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x250

    aput-object v1, v0, v5

    const-string v1, "ram"

    const-string v5, "audio/x-pn-realaudio"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x251

    aput-object v1, v0, v5

    const-string v1, "rar"

    const-string v5, "application/x-rar-compressed"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x252

    aput-object v1, v0, v5

    const-string v1, "ras"

    const-string v5, "image/x-cmu-raster"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x253

    aput-object v1, v0, v5

    const-string v1, "rcprofile"

    const-string v5, "application/vnd.ipunplugged.rcprofile"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x254

    aput-object v1, v0, v5

    const-string v1, "rdf"

    const-string v5, "application/rdf+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x255

    aput-object v1, v0, v5

    const-string v1, "rdz"

    const-string v5, "application/vnd.data-vision.rdz"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x256

    aput-object v1, v0, v5

    const-string v1, "rep"

    const-string v5, "application/vnd.businessobjects"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x257

    aput-object v1, v0, v5

    const-string v1, "res"

    const-string v5, "application/x-dtbresource+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x258

    aput-object v1, v0, v5

    const-string v1, "rexx"

    const-string v5, "text/x-script.rexx"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x259

    aput-object v1, v0, v5

    const-string v1, "rgb"

    const-string v5, "image/x-rgb"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25a

    aput-object v1, v0, v5

    const-string v1, "rif"

    const-string v5, "application/reginfo+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25b

    aput-object v1, v0, v5

    const-string v1, "rl"

    const-string v5, "application/resource-lists+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25c

    aput-object v1, v0, v5

    const-string v1, "rlc"

    const-string v5, "image/vnd.fujixerox.edmics-rlc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25d

    aput-object v1, v0, v5

    const-string v1, "rld"

    const-string v5, "application/resource-lists-diff+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25e

    aput-object v1, v0, v5

    const-string v1, "rm"

    const-string v5, "application/vnd.rn-realmedia"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25f

    aput-object v1, v0, v5

    const-string v1, "rmi"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x260

    aput-object v1, v0, v5

    const-string v1, "rmp"

    const-string v5, "audio/x-pn-realaudio-plugin"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x261

    aput-object v1, v0, v5

    const-string v1, "rms"

    const-string v5, "application/vnd.jcp.javame.midlet-rms"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x262

    aput-object v1, v0, v5

    const-string v1, "rnc"

    const-string v5, "application/relax-ng-compact-syntax"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x263

    aput-object v1, v0, v5

    const-string v1, "roff"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x264

    aput-object v1, v0, v5

    const-string v1, "rpm"

    const-string v5, "application/x-rpm"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x265

    aput-object v1, v0, v5

    const-string v1, "rpss"

    const-string v5, "application/vnd.nokia.radio-presets"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x266

    aput-object v1, v0, v5

    const-string v1, "rpst"

    const-string v5, "application/vnd.nokia.radio-preset"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x267

    aput-object v1, v0, v5

    const-string v1, "rq"

    const-string v5, "application/sparql-query"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x268

    aput-object v1, v0, v5

    const-string v1, "rs"

    const-string v5, "application/rls-services+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x269

    aput-object v1, v0, v5

    const-string v1, "rsd"

    const-string v5, "application/rsd+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26a

    aput-object v1, v0, v5

    const-string v1, "rss"

    const-string v5, "application/rss+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26b

    aput-object v1, v0, v5

    const-string v1, "rtf"

    const-string v5, "application/rtf"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26c

    aput-object v1, v0, v5

    const-string v1, "rtx"

    const-string v5, "text/richtext"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26d

    aput-object v1, v0, v5

    const-string v1, "rt"

    const-string v5, "text/vnd.rn-realtext"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26e

    aput-object v1, v0, v5

    const-string v1, "saf"

    const-string v5, "application/vnd.yamaha.smaf-audio"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26f

    aput-object v1, v0, v5

    const-string v1, "sbml"

    const-string v5, "application/sbml+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x270

    aput-object v1, v0, v5

    const-string v1, "sc"

    const-string v5, "application/vnd.ibm.secure-container"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x271

    aput-object v1, v0, v5

    const-string v1, "scd"

    const-string v5, "application/x-msschedule"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x272

    aput-object v1, v0, v5

    const-string v1, "scm"

    const-string v5, "text/x-script.scheme"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x273

    aput-object v1, v0, v5

    const-string v1, "scq"

    const-string v5, "application/scvp-cv-request"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x274

    aput-object v1, v0, v5

    const-string v1, "scs"

    const-string v5, "application/scvp-cv-response"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x275

    aput-object v1, v0, v5

    const-string v1, "sct"

    const-string v5, "text/scriptlet"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x276

    aput-object v1, v0, v5

    const-string v1, "scurl"

    const-string v5, "text/vnd.curl.scurl"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x277

    aput-object v1, v0, v5

    const-string v1, "sda"

    const-string v5, "application/vnd.stardivision.draw"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x278

    aput-object v1, v0, v5

    const-string v1, "sdc"

    const-string v5, "application/vnd.stardivision.calc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x279

    aput-object v1, v0, v5

    const-string v1, "sdd"

    const-string v5, "application/vnd.stardivision.impress"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27a

    aput-object v1, v0, v5

    const-string v1, "sdkd"

    const-string v5, "application/vnd.solent.sdkm+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27b

    aput-object v1, v0, v5

    const-string v1, "sdkm"

    const-string v5, "application/vnd.solent.sdkm+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27c

    aput-object v1, v0, v5

    const-string v1, "sdml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27d

    aput-object v1, v0, v5

    const-string v1, "sdp"

    const-string v5, "application/sdp"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27e

    aput-object v1, v0, v5

    const-string v1, "sdw"

    const-string v5, "application/vnd.stardivision.writer"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27f

    aput-object v1, v0, v5

    const-string v1, "see"

    const-string v5, "application/vnd.seemail"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x280

    aput-object v1, v0, v5

    const-string v1, "seed"

    const-string v5, "application/vnd.fdsn.seed"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x281

    aput-object v1, v0, v5

    const-string v1, "sema"

    const-string v5, "application/vnd.sema"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x282

    aput-object v1, v0, v5

    const-string v1, "semd"

    const-string v5, "application/vnd.semd"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x283

    aput-object v1, v0, v5

    const-string v1, "semf"

    const-string v5, "application/vnd.semf"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x284

    aput-object v1, v0, v5

    const-string v1, "ser"

    const-string v5, "application/java-serialized-object"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x285

    aput-object v1, v0, v5

    const-string v1, "setpay"

    const-string v5, "application/set-payment-initiation"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x286

    aput-object v1, v0, v5

    const-string v1, "setreg"

    const-string v5, "application/set-registration-initiation"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x287

    aput-object v1, v0, v5

    const-string v1, "sfd-hdstx"

    const-string v5, "application/vnd.hydrostatix.sof-data"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x288

    aput-object v1, v0, v5

    const-string v1, "sfs"

    const-string v5, "application/vnd.spotfire.sfs"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x289

    aput-object v1, v0, v5

    const-string v1, "sgl"

    const-string v5, "application/vnd.stardivision.writer-global"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28a

    aput-object v1, v0, v5

    const-string v1, "sgml"

    const-string v5, "text/sgml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28b

    aput-object v1, v0, v5

    const-string v1, "sgm"

    const-string v5, "text/sgml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28c

    aput-object v1, v0, v5

    const-string v1, "sh"

    const-string v5, "text/x-script.sh"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28d

    aput-object v1, v0, v5

    const-string v1, "shar"

    const-string v5, "application/x-shar"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28e

    aput-object v1, v0, v5

    const-string v1, "shf"

    const-string v5, "application/shf+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28f

    aput-object v1, v0, v5

    const-string v1, "shtml"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x290

    aput-object v1, v0, v5

    const-string v1, "sic"

    const-string v5, "application/vnd.wap.sic"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x291

    aput-object v1, v0, v5

    const-string v1, "sig"

    const-string v5, "application/pgp-signature"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x292

    aput-object v1, v0, v5

    const-string v1, "silo"

    const-string v5, "model/mesh"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x293

    aput-object v1, v0, v5

    const-string v1, "sis"

    const-string v5, "application/vnd.symbian.install"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x294

    aput-object v1, v0, v5

    const-string v1, "sisx"

    const-string v5, "application/vnd.symbian.install"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x295

    aput-object v1, v0, v5

    const-string v1, "sit"

    const-string v5, "application/x-stuffit"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x296

    aput-object v1, v0, v5

    const-string v1, "si"

    const-string v5, "text/vnd.wap.si"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x297

    aput-object v1, v0, v5

    const-string v1, "sitx"

    const-string v5, "application/x-stuffitx"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x298

    aput-object v1, v0, v5

    const-string v1, "skd"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x299

    aput-object v1, v0, v5

    const-string v1, "skm"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29a

    aput-object v1, v0, v5

    const-string v1, "skp"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29b

    aput-object v1, v0, v5

    const-string v1, "skt"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29c

    aput-object v1, v0, v5

    const-string v1, "slc"

    const-string v5, "application/vnd.wap.slc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29d

    aput-object v1, v0, v5

    const-string v1, "sldm"

    const-string v5, "application/vnd.ms-powerpoint.slide.macroenabled.12"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29e

    aput-object v1, v0, v5

    const-string v1, "sldx"

    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.slide"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29f

    aput-object v1, v0, v5

    const-string v1, "slt"

    const-string v5, "application/vnd.epson.salt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a0

    aput-object v1, v0, v5

    const-string v1, "sl"

    const-string v5, "text/vnd.wap.sl"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a1

    aput-object v1, v0, v5

    const-string v1, "smf"

    const-string v5, "application/vnd.stardivision.math"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a2

    aput-object v1, v0, v5

    const-string v1, "smi"

    const-string v5, "application/smil+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a3

    aput-object v1, v0, v5

    const-string v1, "smil"

    const-string v5, "application/smil+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a4

    aput-object v1, v0, v5

    const-string v1, "snd"

    const-string v5, "audio/basic"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a5

    aput-object v1, v0, v5

    const-string v1, "snf"

    const-string v5, "application/x-font-snf"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a6

    aput-object v1, v0, v5

    const-string v1, "so"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a7

    aput-object v1, v0, v2

    const-string v1, "spc"

    const-string v2, "text/x-speech"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a8

    aput-object v1, v0, v2

    const-string v1, "spf"

    const-string v2, "application/vnd.yamaha.smaf-phrase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a9

    aput-object v1, v0, v2

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2aa

    aput-object v1, v0, v2

    const-string v1, "spot"

    const-string v2, "text/vnd.in3d.spot"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ab

    aput-object v1, v0, v2

    const-string v1, "spp"

    const-string v2, "application/scvp-vp-response"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ac

    aput-object v1, v0, v2

    const-string v1, "spq"

    const-string v2, "application/scvp-vp-request"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ad

    aput-object v1, v0, v2

    const-string v1, "spx"

    const-string v2, "audio/ogg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ae

    aput-object v1, v0, v2

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2af

    aput-object v1, v0, v2

    const-string v1, "srx"

    const-string v2, "application/sparql-results+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b0

    aput-object v1, v0, v2

    const-string v1, "sse"

    const-string v2, "application/vnd.kodak-descriptor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b1

    aput-object v1, v0, v2

    const-string v1, "ssf"

    const-string v2, "application/vnd.epson.ssf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b2

    aput-object v1, v0, v2

    const-string v1, "ssi"

    const-string v2, "text/x-server-parsed-html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b3

    aput-object v1, v0, v2

    const-string v1, "ssml"

    const-string v2, "application/ssml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b4

    aput-object v1, v0, v2

    const-string v1, "sst"

    const-string v2, "application/vnd.ms-pkicertstore"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b5

    aput-object v1, v0, v2

    const-string v1, "stc"

    const-string v2, "application/vnd.sun.xml.calc.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b6

    aput-object v1, v0, v2

    const-string v1, "std"

    const-string v2, "application/vnd.sun.xml.draw.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b7

    aput-object v1, v0, v2

    const-string v1, "s"

    const-string v2, "text/x-asm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b8

    aput-object v1, v0, v2

    const-string v1, "stf"

    const-string v2, "application/vnd.wt.stf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b9

    aput-object v1, v0, v2

    const-string v1, "sti"

    const-string v2, "application/vnd.sun.xml.impress.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ba

    aput-object v1, v0, v2

    const-string v1, "stk"

    const-string v2, "application/hyperstudio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bb

    aput-object v1, v0, v2

    const-string v1, "stl"

    const-string v2, "application/vnd.ms-pki.stl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bc

    aput-object v1, v0, v2

    const-string v1, "stm"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bd

    aput-object v1, v0, v2

    const-string v1, "str"

    const-string v2, "application/vnd.pg.format"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2be

    aput-object v1, v0, v2

    const-string v1, "stw"

    const-string v2, "application/vnd.sun.xml.writer.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bf

    aput-object v1, v0, v2

    const-string v1, "sus"

    const-string v2, "application/vnd.sus-calendar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c0

    aput-object v1, v0, v2

    const-string v1, "susp"

    const-string v2, "application/vnd.sus-calendar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c1

    aput-object v1, v0, v2

    const-string v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c2

    aput-object v1, v0, v2

    const-string v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c3

    aput-object v1, v0, v2

    const-string v1, "svd"

    const-string v2, "application/vnd.svd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c4

    aput-object v1, v0, v2

    const-string v1, "svg"

    const-string v2, "image/svg+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c5

    aput-object v1, v0, v2

    const-string v1, "svgz"

    const-string v2, "image/svg+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c6

    aput-object v1, v0, v2

    const-string v1, "swa"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c7

    aput-object v1, v0, v2

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c8

    aput-object v1, v0, v2

    const-string v1, "swi"

    const-string v2, "application/vnd.arastra.swi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c9

    aput-object v1, v0, v2

    const-string v1, "sxc"

    const-string v2, "application/vnd.sun.xml.calc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ca

    aput-object v1, v0, v2

    const-string v1, "sxd"

    const-string v2, "application/vnd.sun.xml.draw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cb

    aput-object v1, v0, v2

    const-string v1, "sxg"

    const-string v2, "application/vnd.sun.xml.writer.global"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cc

    aput-object v1, v0, v2

    const-string v1, "sxi"

    const-string v2, "application/vnd.sun.xml.impress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cd

    aput-object v1, v0, v2

    const-string v1, "sxm"

    const-string v2, "application/vnd.sun.xml.math"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ce

    aput-object v1, v0, v2

    const-string v1, "sxw"

    const-string v2, "application/vnd.sun.xml.writer"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cf

    aput-object v1, v0, v2

    const-string v1, "tao"

    const-string v2, "application/vnd.tao.intent-module-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d0

    aput-object v1, v0, v2

    const-string v1, "t"

    const-string v2, "application/x-troff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d1

    aput-object v1, v0, v2

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d2

    aput-object v1, v0, v2

    const-string v1, "talk"

    const-string v2, "text/x-speech"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d3

    aput-object v1, v0, v2

    const-string v1, "tcap"

    const-string v2, "application/vnd.3gpp2.tcap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d4

    aput-object v1, v0, v2

    const-string v1, "tcl"

    const-string v2, "text/x-script.tcl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d5

    aput-object v1, v0, v2

    const-string v1, "tcsh"

    const-string v2, "text/x-script.tcsh"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d6

    aput-object v1, v0, v2

    const-string v1, "teacher"

    const-string v2, "application/vnd.smart.teacher"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d7

    aput-object v1, v0, v2

    const-string v1, "tex"

    const-string v2, "application/x-tex"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d8

    aput-object v1, v0, v2

    const-string v1, "texi"

    const-string v2, "application/x-texinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d9

    aput-object v1, v0, v2

    const-string v1, "texinfo"

    const-string v2, "application/x-texinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2da

    aput-object v1, v0, v2

    const-string v1, "text"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2db

    aput-object v1, v0, v2

    const-string v1, "tfm"

    const-string v2, "application/x-tex-tfm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2dc

    aput-object v1, v0, v2

    const-string v1, "tgz"

    const-string v2, "application/x-gzip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2dd

    aput-object v1, v0, v2

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2de

    aput-object v1, v0, v2

    const-string v1, "tif"

    const-string v2, "image/tiff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2df

    aput-object v1, v0, v2

    const-string v1, "tmo"

    const-string v2, "application/vnd.tmobile-livetv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e0

    aput-object v1, v0, v2

    const-string v1, "torrent"

    const-string v2, "application/x-bittorrent"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e1

    aput-object v1, v0, v2

    const-string v1, "tpl"

    const-string v2, "application/vnd.groove-tool-template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e2

    aput-object v1, v0, v2

    const-string v1, "tpt"

    const-string v2, "application/vnd.trid.tpt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e3

    aput-object v1, v0, v2

    const-string v1, "tra"

    const-string v2, "application/vnd.trueapp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e4

    aput-object v1, v0, v2

    const-string v1, "trm"

    const-string v2, "application/x-msterminal"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e5

    aput-object v1, v0, v2

    const-string v1, "tr"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e6

    aput-object v1, v0, v2

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e7

    aput-object v1, v0, v2

    const-string v1, "ttc"

    const-string v2, "application/x-font-ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e8

    aput-object v1, v0, v2

    const-string v1, "ttf"

    const-string v2, "application/x-font-ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e9

    aput-object v1, v0, v2

    const-string v1, "twd"

    const-string v2, "application/vnd.simtech-mindmapper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ea

    aput-object v1, v0, v2

    const-string v1, "twds"

    const-string v2, "application/vnd.simtech-mindmapper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2eb

    aput-object v1, v0, v2

    const-string v1, "txd"

    const-string v2, "application/vnd.genomatix.tuxedo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ec

    aput-object v1, v0, v2

    const-string v1, "txf"

    const-string v2, "application/vnd.mobius.txf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ed

    aput-object v1, v0, v2

    const-string v1, "txt"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee

    aput-object v1, v0, v2

    const-string v1, "u32"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ef

    aput-object v1, v0, v2

    const-string v1, "udeb"

    const-string v2, "application/x-debian-package"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f0

    aput-object v1, v0, v2

    const-string v1, "ufd"

    const-string v2, "application/vnd.ufdl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f1

    aput-object v1, v0, v2

    const-string v1, "ufdl"

    const-string v2, "application/vnd.ufdl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f2

    aput-object v1, v0, v2

    const-string v1, "uls"

    const-string v2, "text/iuls"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f3

    aput-object v1, v0, v2

    const-string v1, "uil"

    const-string v2, "text/x-uil"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f4

    aput-object v1, v0, v2

    const-string v1, "umj"

    const-string v2, "application/vnd.umajin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f5

    aput-object v1, v0, v2

    const-string v1, "unityweb"

    const-string v2, "application/vnd.unity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f6

    aput-object v1, v0, v2

    const-string v1, "uoml"

    const-string v2, "application/vnd.uoml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f7

    aput-object v1, v0, v2

    const-string v1, "uris"

    const-string v2, "text/uri-list"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2f8

    aput-object v1, v0, v4

    const-string v1, "uri"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2f9

    aput-object v1, v0, v4

    const-string v1, "urls"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2fa

    aput-object v1, v0, v4

    const-string v1, "uni"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2fb

    aput-object v1, v0, v4

    const-string v1, "unis"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fc

    aput-object v1, v0, v2

    const-string v1, "ustar"

    const-string v2, "application/x-ustar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fd

    aput-object v1, v0, v2

    const-string v1, "utz"

    const-string v2, "application/vnd.uiq.theme"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fe

    aput-object v1, v0, v2

    const-string v1, "uu"

    const-string v2, "text/x-uuencode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ff

    aput-object v1, v0, v2

    const-string v1, "uue"

    const-string v2, "text/x-uuencode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x300

    aput-object v1, v0, v2

    const-string v1, "vcd"

    const-string v2, "application/x-cdlink"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x301

    aput-object v1, v0, v2

    const-string v1, "vcf"

    const-string v2, "text/x-vcard"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x302

    aput-object v1, v0, v2

    const-string v1, "vcg"

    const-string v2, "application/vnd.groove-vcard"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x303

    aput-object v1, v0, v2

    const-string v1, "vcs"

    const-string v2, "text/x-vcalendar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x304

    aput-object v1, v0, v2

    const-string v1, "vcx"

    const-string v2, "application/vnd.vcx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x305

    aput-object v1, v0, v2

    const-string v1, "vis"

    const-string v2, "application/vnd.visionary"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x306

    aput-object v1, v0, v2

    const-string v1, "viv"

    const-string v2, "video/vnd.vivo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x307

    aput-object v1, v0, v2

    const-string v1, "vor"

    const-string v2, "application/vnd.stardivision.writer"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x308

    aput-object v1, v0, v2

    const-string v1, "vox"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x309

    aput-object v1, v0, v2

    const-string v1, "vrml"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30a

    aput-object v1, v0, v2

    const-string v1, "vsd"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30b

    aput-object v1, v0, v2

    const-string v1, "vsf"

    const-string v2, "application/vnd.vsf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30c

    aput-object v1, v0, v2

    const-string v1, "vss"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30d

    aput-object v1, v0, v2

    const-string v1, "vst"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30e

    aput-object v1, v0, v2

    const-string v1, "vsw"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30f

    aput-object v1, v0, v2

    const-string v1, "vtu"

    const-string v2, "model/vnd.vtu"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x310

    aput-object v1, v0, v2

    const-string v1, "vxml"

    const-string v2, "application/voicexml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x311

    aput-object v1, v0, v2

    const-string v1, "w3d"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x312

    aput-object v1, v0, v2

    const-string v1, "wad"

    const-string v2, "application/x-doom"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x313

    aput-object v1, v0, v2

    const-string v1, "wav"

    const-string v2, "audio/x-wav"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x314

    aput-object v1, v0, v2

    const-string v1, "wax"

    const-string v2, "audio/x-ms-wax"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x315

    aput-object v1, v0, v2

    const-string v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x316

    aput-object v1, v0, v2

    const-string v1, "wbs"

    const-string v2, "application/vnd.criticaltools.wbs+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x317

    aput-object v1, v0, v2

    const-string v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x318

    aput-object v1, v0, v2

    const-string v1, "wcm"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x319

    aput-object v1, v0, v2

    const-string v1, "wdb"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31a

    aput-object v1, v0, v2

    const-string v1, "webp"

    const-string v2, "image/webp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31b

    aput-object v1, v0, v2

    const-string v1, "wiz"

    const-string v2, "application/msword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31c

    aput-object v1, v0, v2

    const-string v1, "wks"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31d

    aput-object v1, v0, v2

    const-string v1, "wma"

    const-string v2, "audio/x-ms-wma"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31e

    aput-object v1, v0, v2

    const-string v1, "wmd"

    const-string v2, "application/x-ms-wmd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31f

    aput-object v1, v0, v2

    const-string v1, "wmf"

    const-string v2, "application/x-msmetafile"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x320

    aput-object v1, v0, v2

    const-string v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x321

    aput-object v1, v0, v2

    const-string v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x322

    aput-object v1, v0, v2

    const-string v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x323

    aput-object v1, v0, v2

    const-string v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x324

    aput-object v1, v0, v2

    const-string v1, "wm"

    const-string v2, "video/x-ms-wm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x325

    aput-object v1, v0, v2

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x326

    aput-object v1, v0, v2

    const-string v1, "wmx"

    const-string v2, "video/x-ms-wmx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x327

    aput-object v1, v0, v2

    const-string v1, "wmz"

    const-string v2, "application/x-ms-wmz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x328

    aput-object v1, v0, v2

    const-string v1, "wpd"

    const-string v2, "application/vnd.wordperfect"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x329

    aput-object v1, v0, v2

    const-string v1, "wpl"

    const-string v2, "application/vnd.ms-wpl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32a

    aput-object v1, v0, v2

    const-string v1, "wps"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32b

    aput-object v1, v0, v2

    const-string v1, "wqd"

    const-string v2, "application/vnd.wqd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32c

    aput-object v1, v0, v2

    const-string v1, "wri"

    const-string v2, "application/x-mswrite"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32d

    aput-object v1, v0, v2

    const-string v1, "wrl"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32e

    aput-object v1, v0, v2

    const-string v1, "wrz"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32f

    aput-object v1, v0, v2

    const-string v1, "wsc"

    const-string v2, "text/scriplet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x330

    aput-object v1, v0, v2

    const-string v1, "wsdl"

    const-string v2, "application/wsdl+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x331

    aput-object v1, v0, v2

    const-string v1, "wspolicy"

    const-string v2, "application/wspolicy+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x332

    aput-object v1, v0, v2

    const-string v1, "wtb"

    const-string v2, "application/vnd.webturbo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x333

    aput-object v1, v0, v2

    const-string v1, "wvx"

    const-string v2, "video/x-ms-wvx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x334

    aput-object v1, v0, v2

    const-string v1, "x32"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x335

    aput-object v1, v0, v2

    const-string v1, "x3d"

    const-string v2, "application/vnd.hzn-3d-crossword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x336

    aput-object v1, v0, v2

    const-string v1, "xaf"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x337

    aput-object v1, v0, v2

    const-string v1, "xap"

    const-string v2, "application/x-silverlight-app"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x338

    aput-object v1, v0, v2

    const-string v1, "xar"

    const-string v2, "application/vnd.xara"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x339

    aput-object v1, v0, v2

    const-string v1, "xbap"

    const-string v2, "application/x-ms-xbap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33a

    aput-object v1, v0, v2

    const-string v1, "xbd"

    const-string v2, "application/vnd.fujixerox.docuworks.binder"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33b

    aput-object v1, v0, v2

    const-string v1, "xbm"

    const-string v2, "image/x-xbitmap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33c

    aput-object v1, v0, v2

    const-string v1, "xdm"

    const-string v2, "application/vnd.syncml.dm+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33d

    aput-object v1, v0, v2

    const-string v1, "xdp"

    const-string v2, "application/vnd.adobe.xdp+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33e

    aput-object v1, v0, v2

    const-string v1, "xdw"

    const-string v2, "application/vnd.fujixerox.docuworks"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33f

    aput-object v1, v0, v2

    const-string v1, "xenc"

    const-string v2, "application/xenc+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x340

    aput-object v1, v0, v2

    const-string v1, "xer"

    const-string v2, "application/patch-ops-error+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x341

    aput-object v1, v0, v2

    const-string v1, "xfdf"

    const-string v2, "application/vnd.adobe.xfdf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x342

    aput-object v1, v0, v2

    const-string v1, "xfdl"

    const-string v2, "application/vnd.xfdl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x343

    aput-object v1, v0, v2

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x344

    aput-object v1, v0, v2

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x345

    aput-object v1, v0, v2

    const-string v1, "xhvml"

    const-string v2, "application/xv+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x346

    aput-object v1, v0, v2

    const-string v1, "xif"

    const-string v2, "image/vnd.xiff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x347

    aput-object v1, v0, v2

    const-string v1, "xla"

    const-string v2, "application/vnd.ms-excel"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x348

    aput-object v1, v0, v3

    const-string v1, "xlam"

    const-string v3, "application/vnd.ms-excel.addin.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x349

    aput-object v1, v0, v3

    const-string v1, "xlb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34a

    aput-object v1, v0, v3

    const-string v1, "xlc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34b

    aput-object v1, v0, v3

    const-string v1, "xlm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34c

    aput-object v1, v0, v3

    const-string v1, "xls"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34d

    aput-object v1, v0, v3

    const-string v1, "xlsb"

    const-string v3, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34e

    aput-object v1, v0, v3

    const-string v1, "xlsm"

    const-string v3, "application/vnd.ms-excel.sheet.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x34f

    aput-object v1, v0, v3

    const-string v1, "xlsx"

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x350

    aput-object v1, v0, v3

    const-string v1, "xlt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x351

    aput-object v1, v0, v3

    const-string v1, "xltm"

    const-string v3, "application/vnd.ms-excel.template.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x352

    aput-object v1, v0, v3

    const-string v1, "xltx"

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x353

    aput-object v1, v0, v3

    const-string v1, "xlw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x354

    aput-object v1, v0, v2

    const-string v1, "xml"

    const-string v2, "application/xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x355

    aput-object v1, v0, v2

    const-string v1, "xo"

    const-string v2, "application/vnd.olpc-sugar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x356

    aput-object v1, v0, v2

    const-string v1, "xof"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x357

    aput-object v1, v0, v2

    const-string v1, "xop"

    const-string v2, "application/xop+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x358

    aput-object v1, v0, v2

    const-string v1, "xpdl"

    const-string v2, "application/xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x359

    aput-object v1, v0, v2

    const-string v1, "xpi"

    const-string v2, "application/x-xpinstall"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35a

    aput-object v1, v0, v2

    const-string v1, "xpm"

    const-string v2, "image/x-xpixmap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35b

    aput-object v1, v0, v2

    const-string v1, "xpr"

    const-string v2, "application/vnd.is-xpr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35c

    aput-object v1, v0, v2

    const-string v1, "xps"

    const-string v2, "application/vnd.ms-xpsdocument"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35d

    aput-object v1, v0, v2

    const-string v1, "xpw"

    const-string v2, "application/vnd.intercon.formnet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35e

    aput-object v1, v0, v2

    const-string v1, "xpx"

    const-string v2, "application/vnd.intercon.formnet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35f

    aput-object v1, v0, v2

    const-string v1, "xsl"

    const-string v2, "application/xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x360

    aput-object v1, v0, v2

    const-string v1, "xslt"

    const-string v2, "application/xslt+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x361

    aput-object v1, v0, v2

    const-string v1, "xsm"

    const-string v2, "application/vnd.syncml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x362

    aput-object v1, v0, v2

    const-string v1, "xspf"

    const-string v2, "application/xspf+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x363

    aput-object v1, v0, v2

    const-string v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x364

    aput-object v1, v0, v2

    const-string v1, "xvm"

    const-string v2, "application/xv+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x365

    aput-object v1, v0, v2

    const-string v1, "xvml"

    const-string v2, "application/xv+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x366

    aput-object v1, v0, v2

    const-string v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x367

    aput-object v1, v0, v2

    const-string v1, "xyz"

    const-string v2, "chemical/x-xyz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x368

    aput-object v1, v0, v2

    const-string v1, "z"

    const-string v2, "application/x-compress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x369

    aput-object v1, v0, v2

    const-string v1, "zaz"

    const-string v2, "application/vnd.zzazz.deck+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36a

    aput-object v1, v0, v2

    const-string v1, "zip"

    const-string v2, "application/zip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36b

    aput-object v1, v0, v2

    const-string v1, "zir"

    const-string v2, "application/vnd.zul"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36c

    aput-object v1, v0, v2

    const-string v1, "zirz"

    const-string v2, "application/vnd.zul"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36d

    aput-object v1, v0, v2

    const-string v1, "zmm"

    const-string v2, "application/vnd.handheld-entertainment+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36e

    aput-object v1, v0, v2

    const-string v1, "zsh"

    const-string v2, "text/x-script.zsh"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36f

    aput-object v1, v0, v2

    const-string v1, "caj"

    const-string v2, "application/caj"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x370

    aput-object v1, v0, v2

    const-string v1, "cbr"

    const-string v2, "application/x-cbr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x371

    aput-object v1, v0, v2

    const-string v1, "cbz"

    const-string v2, "application/x-cbz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x372

    aput-object v1, v0, v2

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->e:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 3

    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "bytes2HexString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "getDefault(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "FFD8FF"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_0
    const-string p1, "89504E47"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_1
    const-string p1, "47494638"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_2
    const-string p1, "49492A00"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "4D4D002A"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "424D"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_4
    const-string p1, "52494646"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "57454250"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_5
    const-string p1, "00000100"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "00000200"

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_7
    :goto_0
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_2

    :cond_8
    :goto_1
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    :goto_2
    return-object p0
.end method

.method public final extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->e:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object p0, v4, v2

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final extensions(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->e:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v4, v4, v2

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final getDocumentFormatExtension()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getImageExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileExtension(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isPictureExtension(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    if-eq p1, v2, :cond_1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getValue(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :cond_1
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    const-string v1, "png"

    :cond_3
    return-object v1
.end method

.method public final getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 3
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xc

    :try_start_0
    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->a([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public final getJpegExtension()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->d:Ljava/util/Set;

    return-object p0
.end method

.method public final getMIME_TYPE_BY_EXTENSION_MAP()[[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->e:[[Ljava/lang/String;

    return-object p0
.end method

.method public final getPicExtension()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->c:Ljava/util/Set;

    return-object p0
.end method

.method public final getReaderSupportFormatExtension()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final isAllType(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "*/*"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isApplicationType(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, "application/*"

    invoke-static {p1, v2, v0, p0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isAudio(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p0

    :goto_1
    if-nez v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "audio/"

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    return p0
.end method

.method public final isDoc(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ".doc"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".dot"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".docx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".dotx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".dotm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".docm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isEpubFile(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ".epub"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isImageFile(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "fileName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "getDefault(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isImageType(Landroid/net/Uri;)Z
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isImageType(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    :try_start_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isImageType(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v1

    .line 8
    :cond_1
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isImageType(Ljava/io/InputStream;)Z
    .locals 0
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    sget-object p1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isImageType(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p0

    :goto_1
    if-nez v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "image/"

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    return p0
.end method

.method public final isJPG(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->d:Ljava/util/Set;

    new-instance v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils$isJPG$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils$isJPG$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final isOffice(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ".docx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".docm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".xlsx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".xlsm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pptx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pptm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ppsx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPPT(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ".ppt"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pps"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pot"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ppa"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pptx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ppsx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pptm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ppsm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".potx"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".potm"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".ppam"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPdfFile(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ".pdf"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isPictureExtension(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "extension"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSvgFile(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ".svg"

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isVideoType(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p0

    :goto_1
    if-nez v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "video/"

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    return p0
.end method

.method public final mimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "extensionWithoutDot"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->e:[[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    aget-object v4, v3, v1

    const/4 v5, 0x1

    invoke-static {v4, p0, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object p0, v3, v5

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
