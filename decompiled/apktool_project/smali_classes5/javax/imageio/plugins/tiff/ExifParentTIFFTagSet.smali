.class public final Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;
.super Ljavax/imageio/plugins/tiff/TIFFTagSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$b;,
        Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$a;
    }
.end annotation


# static fields
.field public static final TAG_EXIF_IFD_POINTER:I = 0x8769

.field public static final TAG_GPS_INFO_IFD_POINTER:I = 0x8825

.field public static c:Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

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

    sget-object v0, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$a;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$b;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;
    .locals 2

    const-class v0, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

    if-nez v1, :cond_0

    invoke-static {}, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->a()V

    new-instance v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;-><init>()V

    sput-object v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

    const/4 v1, 0x0

    sput-object v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->d:Ljava/util/List;

    :cond_0
    sget-object v1, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
