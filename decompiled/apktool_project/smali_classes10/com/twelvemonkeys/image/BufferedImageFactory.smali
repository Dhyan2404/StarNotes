.class public final Lcom/twelvemonkeys/image/BufferedImageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/image/BufferedImageFactory$b;,
        Lcom/twelvemonkeys/image/BufferedImageFactory$ProgressListener;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/image/BufferedImageFactory$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/awt/image/ImageProducer;

.field public d:Lcom/twelvemonkeys/image/ImageConversionException;

.field public volatile e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/awt/image/ColorModel;

.field public p:Ljava/util/Hashtable;

.field public q:Ljava/lang/Object;

.field public r:Ljava/awt/image/BufferedImage;

.field public s:Ljava/awt/image/ColorModel;

.field public final t:Lcom/twelvemonkeys/image/BufferedImageFactory$b;


# direct methods
.method public constructor <init>(Ljava/awt/Image;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/awt/Image;->getSource()Ljava/awt/image/ImageProducer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;-><init>(Ljava/awt/image/ImageProducer;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/ImageProducer;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->g:I

    .line 4
    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->h:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    .line 6
    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->k:I

    .line 8
    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->l:I

    .line 9
    new-instance v0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;-><init>(Lcom/twelvemonkeys/image/BufferedImageFactory;Lcom/twelvemonkeys/image/BufferedImageFactory$a;)V

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->t:Lcom/twelvemonkeys/image/BufferedImageFactory$b;

    const-string v0, "source"

    .line 10
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->c:Ljava/awt/image/ImageProducer;

    return-void
.end method

.method public static B([I)[S
    .locals 5

    array-length v0, p0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static synthetic a(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lcom/twelvemonkeys/image/BufferedImageFactory;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->f:Z

    return p0
.end method

.method public static synthetic c(Lcom/twelvemonkeys/image/BufferedImageFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->q:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic d(Lcom/twelvemonkeys/image/BufferedImageFactory;)Lcom/twelvemonkeys/image/BufferedImageFactory$b;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->t:Lcom/twelvemonkeys/image/BufferedImageFactory$b;

    return-object p0
.end method

.method public static synthetic e(Lcom/twelvemonkeys/image/BufferedImageFactory;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->e:Z

    return p1
.end method

.method public static synthetic f(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/awt/image/ImageProducer;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->c:Ljava/awt/image/ImageProducer;

    return-object p0
.end method

.method public static synthetic g(Lcom/twelvemonkeys/image/BufferedImageFactory;Lcom/twelvemonkeys/image/ImageConversionException;)Lcom/twelvemonkeys/image/ImageConversionException;
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->d:Lcom/twelvemonkeys/image/ImageConversionException;

    return-object p1
.end method

.method public static synthetic h([I)[S
    .locals 0

    invoke-static {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->B([I)[S

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/twelvemonkeys/image/BufferedImageFactory;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->p:Ljava/util/Hashtable;

    return-object p1
.end method

.method public static synthetic j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    return p0
.end method

.method public static synthetic k(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I
    .locals 0

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    return p1
.end method

.method public static synthetic l(Lcom/twelvemonkeys/image/BufferedImageFactory;)I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    return p0
.end method

.method public static synthetic m(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I
    .locals 0

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    return p1
.end method

.method public static synthetic n(Lcom/twelvemonkeys/image/BufferedImageFactory;)I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->n:I

    return p0
.end method

.method public static synthetic o(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I
    .locals 0

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->n:I

    return p1
.end method

.method public static synthetic p(Lcom/twelvemonkeys/image/BufferedImageFactory;)I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->m:I

    return p0
.end method

.method public static synthetic q(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I
    .locals 0

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->m:I

    return p1
.end method

.method public static synthetic r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->h:I

    return p0
.end method

.method public static synthetic s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->g:I

    return p0
.end method

.method public static synthetic t(Lcom/twelvemonkeys/image/BufferedImageFactory;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->A(I)V

    return-void
.end method

.method public static synthetic u(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public static synthetic v(Lcom/twelvemonkeys/image/BufferedImageFactory;Ljava/awt/image/ColorModel;)Ljava/awt/image/ColorModel;
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    return-object p1
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    iget v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    div-int/2addr p1, v1

    iget v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->b:I

    if-le p1, v1, :cond_0

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->b:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/image/BufferedImageFactory$ProgressListener;

    int-to-float v2, p1

    invoke-interface {v1, p0, v2}, Lcom/twelvemonkeys/image/BufferedImageFactory$ProgressListener;->progress(Lcom/twelvemonkeys/image/BufferedImageFactory;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abort()V
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->t:Lcom/twelvemonkeys/image/BufferedImageFactory$b;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->imageComplete(I)V

    return-void
.end method

.method public addProgressListener(Lcom/twelvemonkeys/image/BufferedImageFactory$ProgressListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->a:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->z()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->s:Ljava/awt/image/ColorModel;

    return-void
.end method

.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/image/ImageConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->y(Z)V

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/image/ImageConversionException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->y(Z)V

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->s:Ljava/awt/image/ColorModel;

    :goto_0
    return-object p0
.end method

.method public removeAllProgressListeners()V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->a:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public removeProgressListener(Lcom/twelvemonkeys/image/BufferedImageFactory$ProgressListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->a:Ljava/util/List;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSourceRegion(Ljava/awt/Rectangle;)V
    .locals 2

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->g:I

    iget v1, p1, Ljava/awt/Rectangle;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->h:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    iget v1, p1, Ljava/awt/Rectangle;->height:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->dispose()V

    :cond_1
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->g:I

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->h:I

    iget v0, p1, Ljava/awt/Rectangle;->width:I

    iput v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    return-void
.end method

.method public setSourceSubsampling(II)V
    .locals 1

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->k:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->l:I

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->dispose()V

    :cond_1
    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    iput p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->k:I

    :cond_2
    if-le p2, v0, :cond_3

    iput p2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->l:I

    :cond_3
    return-void
.end method

.method public final w()V
    .locals 5

    iget v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->q:Ljava/lang/Object;

    if-eqz v3, :cond_0

    invoke-static {v0, v1, v3, v2}, Lcom/twelvemonkeys/image/ImageUtil;->j(IILjava/lang/Object;Ljava/awt/image/ColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    new-instance v1, Ljava/awt/image/BufferedImage;

    iget-object v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    iget-object v4, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->p:Ljava/util/Hashtable;

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twelvemonkeys/image/ImageUtil;->createClear(IILjava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->z()V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->s:Ljava/awt/image/ColorModel;

    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->z()V

    return-void
.end method

.method public final declared-synchronized y(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/image/ImageConversionException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->e:Z

    if-nez v0, :cond_8

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->r:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    if-nez v0, :cond_8

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->k:I

    if-gt v1, v0, :cond_2

    iget v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->l:I

    if-le v2, v0, :cond_4

    :cond_2
    iget v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    if-lez v2, :cond_3

    iget v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    if-lez v3, :cond_3

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->i:I

    iget v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->l:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->j:I

    iget v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->g:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    div-int/2addr v3, v1

    iput v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->g:I

    iget v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->h:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    div-int/2addr v3, v2

    iput v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->h:I

    :cond_3
    new-instance v2, Ljava/awt/image/FilteredImageSource;

    iget-object v3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->c:Ljava/awt/image/ImageProducer;

    new-instance v4, Lcom/twelvemonkeys/image/SubsamplingFilter;

    iget v5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->l:I

    invoke-direct {v4, v1, v5}, Lcom/twelvemonkeys/image/SubsamplingFilter;-><init>(II)V

    invoke-direct {v2, v3, v4}, Ljava/awt/image/FilteredImageSource;-><init>(Ljava/awt/image/ImageProducer;Ljava/awt/image/ImageFilter;)V

    iput-object v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->c:Ljava/awt/image/ImageProducer;

    :cond_4
    iput-boolean v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->e:Z

    iput-boolean p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->f:Z

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->c:Ljava/awt/image/ImageProducer;

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->t:Lcom/twelvemonkeys/image/BufferedImageFactory$b;

    invoke-interface {v0, v1}, Ljava/awt/image/ImageProducer;->startProduction(Ljava/awt/image/ImageConsumer;)V

    :goto_0
    iget-boolean v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/twelvemonkeys/image/ImageConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image conversion aborted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/twelvemonkeys/image/ImageConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->d:Lcom/twelvemonkeys/image/ImageConversionException;

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->x()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->w()V

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/twelvemonkeys/image/ImageConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image conversion failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->d:Lcom/twelvemonkeys/image/ImageConversionException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->d:Lcom/twelvemonkeys/image/ImageConversionException;

    invoke-direct {p1, v0, v1}, Lcom/twelvemonkeys/image/ImageConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->o:Ljava/awt/image/ColorModel;

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory;->p:Ljava/util/Hashtable;

    return-void
.end method
