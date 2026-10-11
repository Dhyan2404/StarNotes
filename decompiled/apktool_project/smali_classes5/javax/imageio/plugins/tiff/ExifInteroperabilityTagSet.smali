.class public final Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;
.super Ljavax/imageio/plugins/tiff/TIFFTagSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet$a;
    }
.end annotation


# static fields
.field public static final INTEROPERABILITY_INDEX_R98:Ljava/lang/String; = "R98"

.field public static final INTEROPERABILITY_INDEX_THM:Ljava/lang/String; = "THM"

.field public static final TAG_INTEROPERABILITY_INDEX:I = 0x1

.field public static c:Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;

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

    sget-object v0, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet$a;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;
    .locals 2

    const-class v0, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->c:Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;

    if-nez v1, :cond_0

    invoke-static {}, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->a()V

    new-instance v1, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;-><init>()V

    sput-object v1, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->c:Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;

    const/4 v1, 0x0

    sput-object v1, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->d:Ljava/util/List;

    :cond_0
    sget-object v1, Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;->c:Ljavax/imageio/plugins/tiff/ExifInteroperabilityTagSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
