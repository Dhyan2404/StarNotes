.class public Ljava/awt/image/ImageFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageConsumer;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected consumer:Ljava/awt/image/ImageConsumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFilterInstance(Ljava/awt/image/ImageConsumer;)Ljava/awt/image/ImageFilter;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/image/ImageFilter;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/ImageFilter;

    iput-object p1, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    return-object p0
.end method

.method public imageComplete(I)V
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {p0, p1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    return-void
.end method

.method public resendTopDownLeftRight(Ljava/awt/image/ImageProducer;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/awt/image/ImageProducer;->requestTopDownLeftRightResend(Ljava/awt/image/ImageConsumer;)V

    return-void
.end method

.method public setColorModel(Ljava/awt/image/ColorModel;)V
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {p0, p1}, Ljava/awt/image/ImageConsumer;->setColorModel(Ljava/awt/image/ColorModel;)V

    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {p0, p1, p2}, Ljava/awt/image/ImageConsumer;->setDimensions(II)V

    return-void
.end method

.method public setHints(I)V
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {p0, p1}, Ljava/awt/image/ImageConsumer;->setHints(I)V

    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[BII)V
    .locals 9

    move-object v0, p0

    .line 1
    iget-object v0, v0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[BII)V

    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[III)V
    .locals 9

    move-object v0, p0

    .line 2
    iget-object v0, v0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    return-void
.end method

.method public setProperties(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string v0, "filters"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object p0, p0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {p0, p1}, Ljava/awt/image/ImageConsumer;->setProperties(Ljava/util/Hashtable;)V

    return-void
.end method
