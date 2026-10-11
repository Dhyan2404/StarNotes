.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/datatransfer/Transferable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;->a:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;->c(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;->a:Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    new-instance p0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {p0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw p0
.end method

.method public b()[Ljava/awt/datatransfer/DataFlavor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/awt/datatransfer/DataFlavor;

    const/4 v0, 0x0

    sget-object v1, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public c(Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 0

    sget-object p0, Ljava/awt/datatransfer/DataFlavor;->imageFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result p0

    return p0
.end method
