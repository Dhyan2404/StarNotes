.class public Ljavax/imageio/ImageIO$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljavax/imageio/ImageReader;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljavax/imageio/spi/ImageReaderSpi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/spi/ImageReaderSpi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/imageio/ImageIO$f;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljavax/imageio/ImageReader;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Ljavax/imageio/ImageIO$f;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/spi/ImageReaderSpi;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderSpi;->createReaderInstance()Ljavax/imageio/ImageReader;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-object p0, v0

    :catch_1
    invoke-static {}, Ljavax/imageio/ImageIO;->a()Ljavax/imageio/spi/IIORegistry;

    move-result-object v1

    const-class v2, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v1, p0, v2}, Ljavax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageIO$f;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageIO$f;->a()Ljavax/imageio/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
