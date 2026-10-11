.class public Ljavax/imageio/ImageIO$d;
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
    name = "d"
.end annotation


# instance fields
.field public a:Ljavax/imageio/ImageTypeSpecifier;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/imageio/ImageTypeSpecifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/imageio/ImageIO$d;->a:Ljavax/imageio/ImageTypeSpecifier;

    iput-object p2, p0, Ljavax/imageio/ImageIO$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljavax/imageio/spi/ImageWriterSpi;

    invoke-virtual {p1}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getFormatNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ljavax/imageio/ImageIO$d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/ImageIO$d;->a:Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {p1, p0}, Ljavax/imageio/spi/ImageWriterSpi;->canEncodeImage(Ljavax/imageio/ImageTypeSpecifier;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
