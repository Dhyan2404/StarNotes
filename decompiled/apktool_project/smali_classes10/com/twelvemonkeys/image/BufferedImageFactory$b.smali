.class public Lcom/twelvemonkeys/image/BufferedImageFactory$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/image/BufferedImageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lcom/twelvemonkeys/image/BufferedImageFactory;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/image/BufferedImageFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/image/BufferedImageFactory;Lcom/twelvemonkeys/image/BufferedImageFactory$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;-><init>(Lcom/twelvemonkeys/image/BufferedImageFactory;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/awt/image/ColorModel;)V
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->u(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/awt/image/ColorModel;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->a(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->v(Lcom/twelvemonkeys/image/BufferedImageFactory;Ljava/awt/image/ColorModel;)Ljava/awt/image/ColorModel;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Change of ColorModel after pixel delivery not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->b(Lcom/twelvemonkeys/image/BufferedImageFactory;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->d(Lcom/twelvemonkeys/image/BufferedImageFactory;)Lcom/twelvemonkeys/image/BufferedImageFactory$b;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->imageComplete(I)V

    :cond_2
    return-void
.end method

.method public b(IIIILjava/awt/image/ColorModel;[SII)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->c(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V

    return-void
.end method

.method public final c(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V
    .locals 3

    invoke-virtual {p0, p5}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->a(Ljava/awt/image/ColorModel;)V

    if-nez p6, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->a(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_1

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v1

    iget-object v2, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v2}, Lcom/twelvemonkeys/image/BufferedImageFactory;->l(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->c(Lcom/twelvemonkeys/image/BufferedImageFactory;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    invoke-static {p5, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->o(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->q(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->a(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p5, v0, :cond_9

    :goto_0
    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    if-ge p2, p5, :cond_3

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    sub-int/2addr p5, p2

    if-lt p5, p4, :cond_2

    return-void

    :cond_2
    mul-int v0, p8, p5

    add-int/2addr p7, v0

    add-int/2addr p2, p5

    sub-int/2addr p4, p5

    :cond_3
    add-int p5, p2, p4

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->l(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p5, v0, :cond_4

    iget-object p4, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p4}, Lcom/twelvemonkeys/image/BufferedImageFactory;->r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p4

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->l(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    add-int/2addr p4, p5

    sub-int/2addr p4, p2

    if-gtz p4, :cond_4

    return-void

    :cond_4
    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    if-ge p1, p5, :cond_6

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    sub-int/2addr p5, p1

    if-lt p5, p3, :cond_5

    return-void

    :cond_5
    add-int/2addr p7, p5

    add-int/2addr p1, p5

    sub-int/2addr p3, p5

    :cond_6
    add-int p5, p1, p3

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p5, v0, :cond_7

    iget-object p3, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p3}, Lcom/twelvemonkeys/image/BufferedImageFactory;->s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p3

    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    add-int/2addr p3, p5

    sub-int/2addr p3, p1

    if-gtz p3, :cond_7

    return-void

    :cond_7
    iget-object p5, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p5}, Lcom/twelvemonkeys/image/BufferedImageFactory;->p(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p5

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->n(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p5, v0

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p5, p1

    move p1, p4

    :goto_1
    if-lez p1, :cond_8

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->a(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p6, p7, v0, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p7, p8

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->n(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    add-int/2addr p5, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    add-int/2addr p2, p4

    invoke-static {p0, p2}, Lcom/twelvemonkeys/image/BufferedImageFactory;->t(Lcom/twelvemonkeys/image/BufferedImageFactory;I)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one pixel type allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public imageComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->e(Lcom/twelvemonkeys/image/BufferedImageFactory;Z)Z

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->f(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/awt/image/ImageProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->f(Lcom/twelvemonkeys/image/BufferedImageFactory;)Ljava/awt/image/ImageProducer;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/awt/image/ImageProducer;->removeConsumer(Ljava/awt/image/ImageConsumer;)V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    new-instance v0, Lcom/twelvemonkeys/image/ImageConversionException;

    const-string v1, "ImageConsumer.IMAGEERROR"

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/image/ImageConversionException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->g(Lcom/twelvemonkeys/image/BufferedImageFactory;Lcom/twelvemonkeys/image/ImageConversionException;)Lcom/twelvemonkeys/image/ImageConversionException;

    :goto_0
    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setColorModel(Ljava/awt/image/ColorModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->a(Ljava/awt/image/ColorModel;)V

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->s(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->k(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I

    :cond_0
    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->l(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->r(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/twelvemonkeys/image/BufferedImageFactory;->m(Lcom/twelvemonkeys/image/BufferedImageFactory;I)I

    :cond_1
    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->j(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->l(Lcom/twelvemonkeys/image/BufferedImageFactory;)I

    move-result p1

    if-gtz p1, :cond_3

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->imageComplete(I)V

    :cond_3
    return-void
.end method

.method public setHints(I)V
    .locals 0

    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[BII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->c(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V

    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[III)V
    .locals 11

    .line 2
    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static/range {p6 .. p6}, Lcom/twelvemonkeys/image/BufferedImageFactory;->h([I)[S

    move-result-object v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->c(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->c(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public setProperties(Ljava/util/Hashtable;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/BufferedImageFactory$b;->e:Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/BufferedImageFactory;->i(Lcom/twelvemonkeys/image/BufferedImageFactory;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    return-void
.end method
