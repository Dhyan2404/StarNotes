.class public Ljava/awt/MemoryImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageProducer;


# instance fields
.field animating:Z

.field fullbuffers:Z

.field height:I

.field model:Ljava/awt/image/ColorModel;

.field pixeloffset:I

.field pixels:Ljava/lang/Object;

.field pixelscan:I

.field properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "**>;"
        }
    .end annotation
.end field

.field theConsumers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/awt/image/ImageConsumer;",
            ">;"
        }
    .end annotation
.end field

.field width:I


# direct methods
.method public constructor <init>(IILjava/awt/image/ColorModel;[BII)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 3
    invoke-direct/range {v1 .. v8}, Ljava/awt/MemoryImageSource;->initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(IILjava/awt/image/ColorModel;[BIILjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/awt/image/ColorModel;",
            "[BII",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    .line 6
    invoke-direct/range {p0 .. p7}, Ljava/awt/MemoryImageSource;->initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(IILjava/awt/image/ColorModel;[III)V
    .locals 9

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 9
    invoke-direct/range {v1 .. v8}, Ljava/awt/MemoryImageSource;->initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(IILjava/awt/image/ColorModel;[IIILjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/awt/image/ColorModel;",
            "[III",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    .line 12
    invoke-direct/range {p0 .. p7}, Ljava/awt/MemoryImageSource;->initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(II[III)V
    .locals 9

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    .line 15
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v4

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Ljava/awt/MemoryImageSource;->initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(II[IIILjava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[III",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    .line 18
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/awt/MemoryImageSource;->initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V

    return-void
.end method

.method private initConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/awt/MemoryImageSource;->width:I

    iget v1, p0, Ljava/awt/MemoryImageSource;->height:I

    invoke-interface {p1, v0, v1}, Ljava/awt/image/ImageConsumer;->setDimensions(II)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/MemoryImageSource;->properties:Ljava/util/Hashtable;

    invoke-interface {p1, v0}, Ljava/awt/image/ImageConsumer;->setProperties(Ljava/util/Hashtable;)V

    :cond_1
    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/awt/MemoryImageSource;->model:Ljava/awt/image/ColorModel;

    invoke-interface {p1, v0}, Ljava/awt/image/ImageConsumer;->setColorModel(Ljava/awt/image/ColorModel;)V

    :cond_2
    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ljava/awt/MemoryImageSource;->animating:Z

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Ljava/awt/MemoryImageSource;->fullbuffers:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/16 p0, 0x1e

    :goto_0
    invoke-interface {p1, p0}, Ljava/awt/image/ImageConsumer;->setHints(I)V

    :cond_5
    return-void
.end method

.method private initialize(IILjava/awt/image/ColorModel;Ljava/lang/Object;IILjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/awt/image/ColorModel;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    iput p1, p0, Ljava/awt/MemoryImageSource;->width:I

    iput p2, p0, Ljava/awt/MemoryImageSource;->height:I

    iput-object p3, p0, Ljava/awt/MemoryImageSource;->model:Ljava/awt/image/ColorModel;

    iput-object p4, p0, Ljava/awt/MemoryImageSource;->pixels:Ljava/lang/Object;

    iput p5, p0, Ljava/awt/MemoryImageSource;->pixeloffset:I

    iput p6, p0, Ljava/awt/MemoryImageSource;->pixelscan:I

    if-nez p7, :cond_0

    new-instance p7, Ljava/util/Hashtable;

    invoke-direct {p7}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    iput-object p7, p0, Ljava/awt/MemoryImageSource;->properties:Ljava/util/Hashtable;

    return-void
.end method

.method private sendPixels(Ljava/awt/image/ImageConsumer;IIII)V
    .locals 10

    iget v0, p0, Ljava/awt/MemoryImageSource;->pixeloffset:I

    iget v1, p0, Ljava/awt/MemoryImageSource;->pixelscan:I

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    add-int v8, v0, p2

    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/MemoryImageSource;->pixels:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    iget-object v6, p0, Ljava/awt/MemoryImageSource;->model:Ljava/awt/image/ColorModel;

    move-object v7, v0

    check-cast v7, [B

    iget v9, p0, Ljava/awt/MemoryImageSource;->pixelscan:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v9}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[BII)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Ljava/awt/MemoryImageSource;->model:Ljava/awt/image/ColorModel;

    move-object v7, v0

    check-cast v7, [I

    iget v9, p0, Ljava/awt/MemoryImageSource;->pixelscan:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v9}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1}, Ljava/awt/MemoryImageSource;->initConsumer(Ljava/awt/image/ImageConsumer;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/awt/MemoryImageSource;->width:I

    iget v6, p0, Ljava/awt/MemoryImageSource;->height:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/MemoryImageSource;->sendPixels(Ljava/awt/image/ImageConsumer;IIII)V

    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ljava/awt/MemoryImageSource;->animating:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p1, v1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    iget-boolean v1, p0, Ljava/awt/MemoryImageSource;->animating:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->removeConsumer(Ljava/awt/image/ImageConsumer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isConsumer(Ljava/awt/image/ImageConsumer;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public newPixels()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    iget v3, p0, Ljava/awt/MemoryImageSource;->width:I

    iget v4, p0, Ljava/awt/MemoryImageSource;->height:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/awt/MemoryImageSource;->newPixels(IIIIZ)V

    return-void
.end method

.method public declared-synchronized newPixels(IIII)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Ljava/awt/MemoryImageSource;->newPixels(IIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized newPixels(IIIIZ)V
    .locals 10

    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Ljava/awt/MemoryImageSource;->animating:Z

    if-eqz v0, :cond_9

    .line 5
    iget-boolean v0, p0, Ljava/awt/MemoryImageSource;->fullbuffers:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget p1, p0, Ljava/awt/MemoryImageSource;->width:I

    .line 7
    iget p2, p0, Ljava/awt/MemoryImageSource;->height:I

    move p3, v1

    move p4, p3

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    add-int/2addr p3, p1

    move p1, v1

    :cond_1
    add-int v0, p1, p3

    .line 8
    iget v2, p0, Ljava/awt/MemoryImageSource;->width:I

    if-le v0, v2, :cond_2

    sub-int/2addr v2, p1

    move p3, v2

    :cond_2
    if-gez p2, :cond_3

    add-int/2addr p4, p2

    move p2, v1

    :cond_3
    add-int v0, p2, p4

    .line 9
    iget v1, p0, Ljava/awt/MemoryImageSource;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_4

    sub-int p4, v1, p2

    :cond_4
    move v8, p3

    move p3, p1

    move p1, v8

    move v9, p4

    move p4, p2

    move p2, v9

    :goto_0
    if-lez p1, :cond_5

    if-gtz p2, :cond_6

    :cond_5
    if-nez p5, :cond_6

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_6
    :try_start_1
    iget-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 12
    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/awt/image/ImageConsumer;

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    move-object v0, p0

    move-object v1, v7

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Ljava/awt/MemoryImageSource;->sendPixels(Ljava/awt/image/ImageConsumer;IIII)V

    :cond_8
    if-eqz p5, :cond_7

    .line 15
    invoke-virtual {p0, v7}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 16
    invoke-interface {v7, v0}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 17
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized newPixels([BLjava/awt/image/ColorModel;II)V
    .locals 0

    monitor-enter p0

    .line 18
    :try_start_0
    iput-object p1, p0, Ljava/awt/MemoryImageSource;->pixels:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Ljava/awt/MemoryImageSource;->model:Ljava/awt/image/ColorModel;

    .line 20
    iput p3, p0, Ljava/awt/MemoryImageSource;->pixeloffset:I

    .line 21
    iput p4, p0, Ljava/awt/MemoryImageSource;->pixelscan:I

    .line 22
    invoke-virtual {p0}, Ljava/awt/MemoryImageSource;->newPixels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized newPixels([ILjava/awt/image/ColorModel;II)V
    .locals 0

    monitor-enter p0

    .line 24
    :try_start_0
    iput-object p1, p0, Ljava/awt/MemoryImageSource;->pixels:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Ljava/awt/MemoryImageSource;->model:Ljava/awt/image/ColorModel;

    .line 26
    iput p3, p0, Ljava/awt/MemoryImageSource;->pixeloffset:I

    .line 27
    iput p4, p0, Ljava/awt/MemoryImageSource;->pixelscan:I

    .line 28
    invoke-virtual {p0}, Ljava/awt/MemoryImageSource;->newPixels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestTopDownLeftRightResend(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setAnimated(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ljava/awt/MemoryImageSource;->animating:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/ImageConsumer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    invoke-virtual {p0, v0}, Ljava/awt/MemoryImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFullBufferUpdates(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/awt/MemoryImageSource;->fullbuffers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Ljava/awt/MemoryImageSource;->fullbuffers:Z

    iget-boolean v0, p0, Ljava/awt/MemoryImageSource;->animating:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/awt/MemoryImageSource;->theConsumers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/ImageConsumer;

    if-eqz p1, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Ljava/awt/image/ImageConsumer;->setHints(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startProduction(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/awt/MemoryImageSource;->addConsumer(Ljava/awt/image/ImageConsumer;)V

    return-void
.end method
