.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/Icon;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

.field public final synthetic b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d$a;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d$a;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconHeight()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getIconWidth()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V
    .locals 0

    invoke-virtual {p2}, Ljava/awt/Graphics;->create()Ljava/awt/Graphics;

    move-result-object p1

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d$a;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->a:Ljava/awt/Paint;

    check-cast p0, Ljava/awt/Color;

    invoke-virtual {p1, p0}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    const/16 p0, 0x10

    invoke-virtual {p1, p3, p4, p0, p0}, Ljava/awt/Graphics;->fillRect(IIII)V

    invoke-virtual {p1}, Ljava/awt/Graphics;->dispose()V

    return-void
.end method
