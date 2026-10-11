.class public abstract Lcom/twelvemonkeys/image/AbstractImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageProducer;


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/image/ImageConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected height:I

.field protected width:I

.field protected xOff:I

.field protected yOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/image/AbstractImageSource;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/image/AbstractImageSource;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/image/AbstractImageSource;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->initConsumer(Ljava/awt/image/ImageConsumer;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->sendPixels(Ljava/awt/image/ImageConsumer;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->removeConsumer(Ljava/awt/image/ImageConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->isConsumer(Ljava/awt/image/ImageConsumer;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1, v0}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract initConsumer(Ljava/awt/image/ImageConsumer;)V
.end method

.method public isConsumer(Ljava/awt/image/ImageConsumer;)Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/AbstractImageSource;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/AbstractImageSource;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestTopDownLeftRightResend(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    return-void
.end method

.method public abstract sendPixels(Ljava/awt/image/ImageConsumer;)V
.end method

.method public startProduction(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AbstractImageSource;->addConsumer(Ljava/awt/image/ImageConsumer;)V

    return-void
.end method
