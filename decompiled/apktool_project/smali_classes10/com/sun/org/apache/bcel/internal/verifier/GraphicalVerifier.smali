.class public Lcom/sun/org/apache/bcel/internal/verifier/GraphicalVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field packFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/GraphicalVerifier;->packFrame:Z

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;-><init>()V

    iget-boolean p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/GraphicalVerifier;->packFrame:Z

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pack()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->validate()V

    :goto_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object p0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iget v3, v2, Ljava/awt/Dimension;->height:I

    iget v4, p0, Ljava/awt/Dimension;->height:I

    if-le v3, v4, :cond_1

    iput v4, v2, Ljava/awt/Dimension;->height:I

    :cond_1
    iget v3, v2, Ljava/awt/Dimension;->width:I

    iget v4, p0, Ljava/awt/Dimension;->width:I

    if-le v3, v4, :cond_2

    iput v4, v2, Ljava/awt/Dimension;->width:I

    :cond_2
    iget v3, p0, Ljava/awt/Dimension;->width:I

    iget v4, v2, Ljava/awt/Dimension;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget p0, p0, Ljava/awt/Dimension;->height:I

    iget v2, v2, Ljava/awt/Dimension;->height:I

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v1, v3, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setLocation(II)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setVisible(Z)V

    iget-object p0, v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;

    invoke-direct {v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryListModel;-><init>()V

    invoke-virtual {p0, v2}, Ljavax/swing/JList;->setModel(Ljavax/swing/ListModel;)V

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    iget-object p0, v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {p0, v0}, Ljavax/swing/JList;->setSelectedIndex(I)V

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {}, Ljavax/swing/UIManager;->getSystemLookAndFeelClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/GraphicalVerifier;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/GraphicalVerifier;-><init>()V

    return-void
.end method
