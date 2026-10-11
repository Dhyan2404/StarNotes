.class public Ljavax/imageio/ImageIO$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/spi/ServiceRegistry$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/imageio/ImageIO$c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    check-cast p1, Ljavax/imageio/spi/ImageReaderSpi;

    iget-object v0, p0, Ljavax/imageio/ImageIO$c;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object p0, p0, Ljavax/imageio/ImageIO$c;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljavax/imageio/spi/ImageReaderSpi;->canDecodeInput(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    :cond_3
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
