.class public Lcom/twelvemonkeys/imageio/ImageReaderBase$c;
.super Ljavax/swing/JLabel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/ImageReaderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/ImageReaderBase$c$e;,
        Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;,
        Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;,
        Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "zoom-in"

.field public static final f:Ljava/lang/String; = "zoom-out"

.field public static final g:Ljava/lang/String; = "zoom-actual"


# instance fields
.field public a:Ljava/awt/image/BufferedImage;

.field public b:Ljava/awt/Paint;

.field public final c:Ljava/awt/Paint;

.field public final d:Ljava/awt/Color;


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/image/BufferedImageIcon;

    invoke-direct {v0, p1}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-direct {p0, v0}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setOpaque(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/awt/Cursor;->getPredefinedCursor(I)Ljava/awt/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setCursor(Ljava/awt/Cursor;)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a:Ljava/awt/image/BufferedImage;

    invoke-static {}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->f()Ljava/awt/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c:Ljava/awt/Paint;

    invoke-static {p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->g(Ljava/awt/image/BufferedImage;)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d:Ljava/awt/Color;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->b:Ljava/awt/Paint;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->i()V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->e()Ljavax/swing/JPopupMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setComponentPopupMenu(Ljavax/swing/JPopupMenu;)V

    new-instance p1, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$a;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$a;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->addMouseListener(Ljava/awt/event/MouseListener;)V

    new-instance p1, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$b;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->setTransferHandler(Ljavax/swing/TransferHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;)Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public static synthetic b(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->a:Ljava/awt/image/BufferedImage;

    return-object p1
.end method

.method public static f()Ljava/awt/Paint;
    .locals 6

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1}, Ljava/awt/GraphicsConfiguration;->createCompatibleImage(II)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/awt/Color;->LIGHT_GRAY:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    sget-object v2, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v4, v2, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/Graphics2D;->fillRect(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    new-instance v1, Ljava/awt/TexturePaint;

    new-instance v2, Ljava/awt/Rectangle;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/awt/Rectangle;-><init>(II)V

    invoke-direct {v1, v0, v2}, Ljava/awt/TexturePaint;-><init>(Ljava/awt/image/BufferedImage;Ljava/awt/geom/Rectangle2D;)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    throw v0
.end method

.method public static g(Ljava/awt/image/BufferedImage;)Ljava/awt/Color;
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    instance-of v0, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    check-cast p0, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getTransparentPixel()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/awt/Color;

    invoke-virtual {p0, v0}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Ljava/awt/Color;-><init>(IZ)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V
    .locals 0

    new-instance p0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-direct {p0, p1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljavax/swing/Action;)V

    invoke-virtual {p3, p0}, Ljavax/swing/ButtonGroup;->add(Ljavax/swing/AbstractButton;)V

    invoke-virtual {p2, p0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-void
.end method

.method public final varargs d(Ljavax/swing/Action;Ljava/lang/String;[Ljavax/swing/KeyStroke;)V
    .locals 4

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getInputMap(I)Ljavax/swing/InputMap;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Ljavax/swing/InputMap;->put(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getActionMap()Ljavax/swing/ActionMap;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Ljavax/swing/ActionMap;->put(Ljava/lang/Object;Ljavax/swing/Action;)V

    return-void
.end method

.method public final e()Ljavax/swing/JPopupMenu;
    .locals 9

    new-instance v0, Ljavax/swing/JPopupMenu;

    invoke-direct {v0}, Ljavax/swing/JPopupMenu;-><init>()V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getActionMap()Ljavax/swing/ActionMap;

    move-result-object v1

    const-string v2, "zoom-actual"

    invoke-virtual {v1, v2}, Ljavax/swing/ActionMap;->get(Ljava/lang/Object;)Ljavax/swing/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/Action;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getActionMap()Ljavax/swing/ActionMap;

    move-result-object v1

    const-string v2, "zoom-in"

    invoke-virtual {v1, v2}, Ljavax/swing/ActionMap;->get(Ljava/lang/Object;)Ljavax/swing/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/Action;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getActionMap()Ljavax/swing/ActionMap;

    move-result-object v1

    const-string v2, "zoom-out"

    invoke-virtual {v1, v2}, Ljavax/swing/ActionMap;->get(Ljava/lang/Object;)Ljavax/swing/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/Action;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V

    new-instance v1, Ljavax/swing/ButtonGroup;

    invoke-direct {v1}, Ljavax/swing/ButtonGroup;-><init>()V

    new-instance v2, Ljavax/swing/JMenu;

    const-string v3, "Background"

    invoke-direct {v2, v3}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;

    const-string v4, "Checkered"

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c:Ljava/awt/Paint;

    invoke-direct {v3, p0, v4, v5}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->b:Ljava/awt/Paint;

    iget-object v5, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c:Ljava/awt/Paint;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "SwingSelectedKey"

    invoke-virtual {v3, v5, v4}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    invoke-virtual {v2}, Ljavax/swing/JMenu;->addSeparator()V

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;

    const-string v4, "White"

    sget-object v8, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-direct {v3, p0, v4, v8}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;

    const-string v4, "Light"

    sget-object v8, Ljava/awt/Color;->LIGHT_GRAY:Ljava/awt/Color;

    invoke-direct {v3, p0, v4, v8}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;

    const-string v4, "Gray"

    sget-object v8, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    invoke-direct {v3, p0, v4, v8}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;

    const-string v4, "Dark"

    sget-object v8, Ljava/awt/Color;->DARK_GRAY:Ljava/awt/Color;

    invoke-direct {v3, p0, v4, v8}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;

    const-string v4, "Black"

    sget-object v8, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-direct {v3, p0, v4, v8}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$c;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Paint;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    invoke-virtual {v2}, Ljavax/swing/JMenu;->addSeparator()V

    new-instance v3, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d:Ljava/awt/Color;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/awt/Color;->BLUE:Ljava/awt/Color;

    :goto_1
    const-string v8, "Choose..."

    invoke-direct {v3, p0, v8, v4}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;Ljava/awt/Color;)V

    iget-object v4, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->b:Ljava/awt/Paint;

    iget-object v8, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d:Ljava/awt/Color;

    if-ne v4, v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$d;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->c(Ljavax/swing/Action;Ljavax/swing/JMenu;Ljavax/swing/ButtonGroup;)V

    return-object v0
.end method

.method public h(Ljava/awt/Graphics;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/awt/Graphics2D;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->b:Ljava/awt/Paint;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-super {p0, p1}, Ljavax/swing/JLabel;->paintComponent(Ljava/awt/Graphics;)V

    return-void
.end method

.method public final i()V
    .locals 8

    new-instance v0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;

    const-string v1, "Zoom in"

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;D)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljavax/swing/KeyStroke;

    const/16 v3, 0x2b

    invoke-static {v3}, Ljavax/swing/KeyStroke;->getKeyStroke(C)Ljavax/swing/KeyStroke;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x6b

    invoke-static {v3, v4}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "zoom-in"

    invoke-virtual {p0, v0, v3, v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d(Ljavax/swing/Action;Ljava/lang/String;[Ljavax/swing/KeyStroke;)V

    new-instance v0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;

    const-string v2, "Zoom out"

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, p0, v2, v6, v7}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;D)V

    new-array v2, v1, [Ljavax/swing/KeyStroke;

    const/16 v3, 0x2d

    invoke-static {v3}, Ljavax/swing/KeyStroke;->getKeyStroke(C)Ljavax/swing/KeyStroke;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x6d

    invoke-static {v3, v4}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "zoom-out"

    invoke-virtual {p0, v0, v3, v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d(Ljavax/swing/Action;Ljava/lang/String;[Ljavax/swing/KeyStroke;)V

    new-instance v0, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;

    const-string v2, "Zoom actual"

    invoke-direct {v0, p0, v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c$f;-><init>(Lcom/twelvemonkeys/imageio/ImageReaderBase$c;Ljava/lang/String;)V

    new-array v1, v1, [Ljavax/swing/KeyStroke;

    const/16 v2, 0x30

    invoke-static {v2}, Ljavax/swing/KeyStroke;->getKeyStroke(C)Ljavax/swing/KeyStroke;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v4}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "zoom-actual"

    invoke-virtual {p0, v0, v2, v1}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d(Ljavax/swing/Action;Ljava/lang/String;[Ljavax/swing/KeyStroke;)V

    invoke-static {}, Ljavax/swing/TransferHandler;->getCopyAction()Ljavax/swing/Action;

    move-result-object v0

    invoke-static {}, Ljavax/swing/TransferHandler;->getCopyAction()Ljavax/swing/Action;

    move-result-object v1

    const-string v2, "Name"

    invoke-interface {v1, v2}, Ljavax/swing/Action;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v5, [Ljavax/swing/KeyStroke;

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/Toolkit;->getMenuShortcutKeyMask()I

    move-result v6

    const/16 v7, 0x43

    invoke-static {v7, v6}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p0, v0, v1, v3}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d(Ljavax/swing/Action;Ljava/lang/String;[Ljavax/swing/KeyStroke;)V

    invoke-static {}, Ljavax/swing/TransferHandler;->getPasteAction()Ljavax/swing/Action;

    move-result-object v0

    invoke-static {}, Ljavax/swing/TransferHandler;->getPasteAction()Ljavax/swing/Action;

    move-result-object v1

    invoke-interface {v1, v2}, Ljavax/swing/Action;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v2, v5, [Ljavax/swing/KeyStroke;

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->getMenuShortcutKeyMask()I

    move-result v3

    const/16 v5, 0x56

    invoke-static {v5, v3}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/twelvemonkeys/imageio/ImageReaderBase$c;->d(Ljavax/swing/Action;Ljava/lang/String;[Ljavax/swing/KeyStroke;)V

    return-void
.end method
