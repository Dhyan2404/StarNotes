.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;
.super Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic c:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;->c:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-direct {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    new-instance p2, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d$a;

    invoke-direct {p2, p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d$a;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)V

    const-string p1, "SmallIcon"

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;->c:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->a:Ljava/awt/Paint;

    check-cast v1, Ljava/awt/Color;

    const-string v2, "Choose background"

    invoke-static {v0, v2, v1}, Ljavax/swing/JColorChooser;->showDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->a:Ljava/awt/Paint;

    invoke-super {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->a(Ljava/awt/event/ActionEvent;)V

    :cond_0
    return-void
.end method
