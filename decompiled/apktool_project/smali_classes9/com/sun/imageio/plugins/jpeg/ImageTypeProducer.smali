.class Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultTypes:[Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;


# instance fields
.field private csCode:I

.field failed:Z

.field private type:Ljavax/imageio/ImageTypeSpecifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->defaultTypes:[Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Ljavax/imageio/ImageTypeSpecifier;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->csCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Ljavax/imageio/ImageTypeSpecifier;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    .line 4
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->csCode:I

    return-void
.end method

.method public static declared-synchronized getTypeProducer(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
    .locals 3

    const-class v0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    monitor-enter v0

    if-ltz p0, :cond_2

    const/4 v1, 0x6

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->defaultTypes:[Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    aget-object v2, v1, p0

    if-nez v2, :cond_1

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    invoke-direct {v2, p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;-><init>(I)V

    aput-object v2, v1, p0

    :cond_1
    aget-object p0, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized getType()Ljavax/imageio/ImageTypeSpecifier;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Ljavax/imageio/ImageTypeSpecifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->produce()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Ljavax/imageio/ImageTypeSpecifier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Ljavax/imageio/ImageTypeSpecifier;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public produce()Ljavax/imageio/ImageTypeSpecifier;
    .locals 2

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->csCode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Ljava/awt/color/ColorSpace;

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG;->bOffsRGB:[I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0xa

    invoke-static {p0}, Ljavax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method
