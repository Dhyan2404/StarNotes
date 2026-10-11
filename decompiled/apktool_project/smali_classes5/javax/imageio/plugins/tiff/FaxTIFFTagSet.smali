.class public final Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;
.super Ljavax/imageio/plugins/tiff/TIFFTagSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$c;,
        Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$b;,
        Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$a;
    }
.end annotation


# static fields
.field public static final CLEAN_FAX_DATA_ERRORS_CORRECTED:I = 0x1

.field public static final CLEAN_FAX_DATA_ERRORS_UNCORRECTED:I = 0x2

.field public static final CLEAN_FAX_DATA_NO_ERRORS:I = 0x0

.field public static final TAG_BAD_FAX_LINES:I = 0x146

.field public static final TAG_CLEAN_FAX_DATA:I = 0x147

.field public static final TAG_CONSECUTIVE_BAD_LINES:I = 0x148

.field public static c:Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;

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

    sget-object v0, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFTagSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$a;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$b;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->d:Ljava/util/List;

    new-instance v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$c;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet$c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;
    .locals 2

    const-class v0, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;

    if-nez v1, :cond_0

    invoke-static {}, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->a()V

    new-instance v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;

    invoke-direct {v1}, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;-><init>()V

    sput-object v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;

    const/4 v1, 0x0

    sput-object v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->d:Ljava/util/List;

    :cond_0
    sget-object v1, Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;->c:Ljavax/imageio/plugins/tiff/FaxTIFFTagSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
