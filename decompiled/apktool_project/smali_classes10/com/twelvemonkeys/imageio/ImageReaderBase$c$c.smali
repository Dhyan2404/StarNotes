.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;
.super Ljavax/swing/AbstractAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/awt/Paint;

.field public final synthetic b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    invoke-direct {p0, p2}, Ljavax/swing/AbstractAction;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->a:Ljava/awt/Paint;

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->b:Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->a:Ljava/awt/Paint;

    iput-object p0, p1, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->b:Ljava/awt/Paint;

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->repaint()V

    return-void
.end method
