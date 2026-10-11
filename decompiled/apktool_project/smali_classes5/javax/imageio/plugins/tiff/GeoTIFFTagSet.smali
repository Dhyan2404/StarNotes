.class public final Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;
.super Ljavax/imageio/plugins/tiff/TIFFTagSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$a;,
        Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$b;,
        Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$c;,
        Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$e;,
        Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$f;,
        Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$d;
    }
.end annotation


# static fields
.field public static final TAG_GEO_ASCII_PARAMS:I = 0x87b1

.field public static final TAG_GEO_DOUBLE_PARAMS:I = 0x87b0

.field public static final TAG_GEO_KEY_DIRECTORY:I = 0x87af

.field public static final TAG_MODEL_PIXEL_SCALE:I = 0x830e

.field public static final TAG_MODEL_TIE_POINT:I = 0x8482

.field public static final TAG_MODEL_TRANSFORMATION:I = 0x85d8

.field public static c:Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$d;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$f;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$e;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$c;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$b;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$a;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;
    .locals 2

    const-class v0, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;

    if-nez v1, :cond_0

    invoke-static {}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->a()V

    new-instance v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;-><init>()V

    sput-object v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;

    const/4 v1, 0x0

    sput-object v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->d:Ljava/util/List;

    :cond_0
    sget-object v1, Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/GeoTIFFTagSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
