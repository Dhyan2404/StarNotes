.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$a;
.super Ljava/awt/event/MouseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c;-><init>(Ljava/awt/image/BufferedImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$a;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/MouseEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$a;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getComponentPopupMenu()Ljavax/swing/JPopupMenu;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$a;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    :cond_0
    return-void
.end method
