.class final enum Ljavax/imageio/ImageIO$SpiInfo$2;
.super Ljavax/imageio/ImageIO$SpiInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/ImageIO$SpiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/imageio/ImageIO$SpiInfo;-><init>(Ljava/lang/String;ILjavax/imageio/ImageIO$a;)V

    return-void
.end method


# virtual methods
.method public info(Ljavax/imageio/spi/ImageReaderWriterSpi;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getMIMETypes()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
