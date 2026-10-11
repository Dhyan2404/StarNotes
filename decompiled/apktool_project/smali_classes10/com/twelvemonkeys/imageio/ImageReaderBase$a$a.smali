.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$a$a;
.super Ljavax/swing/AbstractAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/twelvemonkeys/imageio/ImageReaderBase$a;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$a;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a$a;->a:Lcom/twelvemonkeys/imageio/ImageReaderBase$a;

    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Component;

    invoke-static {p0}, Ljavax/swing/SwingUtilities;->getWindowAncestor(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/awt/Window;->setVisible(Z)V

    invoke-virtual {p0}, Ljava/awt/Window;->dispose()V

    return-void
.end method
