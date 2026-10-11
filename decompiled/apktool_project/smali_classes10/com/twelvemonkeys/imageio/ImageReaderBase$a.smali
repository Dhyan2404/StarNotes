.class public final Lcom/twelvemonkeys/imageio/ImageReaderBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;->f:Ljava/awt/image/BufferedImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Ljavax/swing/JFrame;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/JRootPane;->getActionMap()Ljavax/swing/ActionMap;

    move-result-object v1

    new-instance v2, Lcom/twelvemonkeys/imageio/ImageReaderBase$a$a;

    invoke-direct {v2, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$a$a;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$a;)V

    const-string v3, "window-close"

    invoke-virtual {v1, v3, v2}, Ljavax/swing/ActionMap;->put(Ljava/lang/Object;Ljavax/swing/Action;)V

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/JRootPane;->getInputMap()Ljavax/swing/InputMap;

    move-result-object v1

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getMenuShortcutKeyMask()I

    move-result v2

    const/16 v4, 0x57

    invoke-static {v4, v2}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljavax/swing/InputMap;->put(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V

    new-instance v1, Lcom/twelvemonkeys/imageio/ImageReaderBase$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$b;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$a;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setLocationByPlatform(Z)V

    new-instance v3, Ljavax/swing/JPanel;

    new-instance v4, Ljava/awt/BorderLayout;

    invoke-direct {v4}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v3, v4}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    new-instance v4, Ljavax/swing/JScrollPane;

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;->f:Ljava/awt/image/BufferedImage;

    if-eqz v5, :cond_0

    new-instance v5, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$a;->f:Ljava/awt/image/BufferedImage;

    invoke-direct {v5, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;-><init>(Ljava/awt/image/BufferedImage;)V

    goto :goto_0

    :cond_0
    new-instance v5, Ljavax/swing/JLabel;

    const-string p0, "(no image data)"

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {v4, v5}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v4, v2}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    invoke-virtual {v3, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v0, v3}, Ljavax/swing/JFrame;->setContentPane(Ljava/awt/Container;)V

    invoke-virtual {v0}, Ljavax/swing/JFrame;->pack()V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method
