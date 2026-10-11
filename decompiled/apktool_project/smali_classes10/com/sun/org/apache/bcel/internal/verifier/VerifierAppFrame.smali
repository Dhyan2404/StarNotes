.class public Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;
.super Ljavax/swing/JFrame;
.source "SourceFile"


# instance fields
.field private JUSTICE_VERSION:Ljava/lang/String;

.field aboutMenuItem:Ljavax/swing/JMenuItem;

.field cardLayout1:Ljava/awt/CardLayout;

.field classNamesJList:Ljavax/swing/JList;

.field contentPane:Ljavax/swing/JPanel;

.field private current_class:Ljava/lang/String;

.field gridLayout1:Ljava/awt/GridLayout;

.field gridLayout2:Ljava/awt/GridLayout;

.field gridLayout3:Ljava/awt/GridLayout;

.field gridLayout4:Ljava/awt/GridLayout;

.field jMenu1:Ljavax/swing/JMenu;

.field jMenu2:Ljavax/swing/JMenu;

.field jMenuBar1:Ljavax/swing/JMenuBar;

.field jPanel1:Ljavax/swing/JPanel;

.field jPanel2:Ljavax/swing/JPanel;

.field jPanel3:Ljavax/swing/JPanel;

.field jScrollPane1:Ljavax/swing/JScrollPane;

.field jScrollPane2:Ljavax/swing/JScrollPane;

.field jScrollPane3:Ljavax/swing/JScrollPane;

.field jScrollPane4:Ljavax/swing/JScrollPane;

.field jScrollPane5:Ljavax/swing/JScrollPane;

.field jScrollPane6:Ljavax/swing/JScrollPane;

.field jScrollPane7:Ljavax/swing/JScrollPane;

.field jSplitPane1:Ljavax/swing/JSplitPane;

.field jSplitPane2:Ljavax/swing/JSplitPane;

.field jSplitPane3:Ljavax/swing/JSplitPane;

.field jSplitPane4:Ljavax/swing/JSplitPane;

.field messagesPanel:Ljavax/swing/JPanel;

.field messagesScrollPane:Ljavax/swing/JScrollPane;

.field messagesTextPane:Ljavax/swing/JTextPane;

.field newFileMenuItem:Ljavax/swing/JMenuItem;

.field pass1TextPane:Ljavax/swing/JTextPane;

.field pass2TextPane:Ljavax/swing/JTextPane;

.field pass3aJList:Ljavax/swing/JList;

.field pass3aTextPane:Ljavax/swing/JTextPane;

.field pass3bJList:Ljavax/swing/JList;

.field pass3bTextPane:Ljavax/swing/JTextPane;

.field whatisMenuItem:Ljavax/swing/JMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout1:Ljava/awt/GridLayout;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout2:Ljava/awt/GridLayout;

    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    new-instance v0, Ljava/awt/CardLayout;

    invoke-direct {v0}, Ljava/awt/CardLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->cardLayout1:Ljava/awt/CardLayout;

    const-string v0, "JustIce by Enver Haase"

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->JUSTICE_VERSION:Ljava/lang/String;

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout3:Ljava/awt/GridLayout;

    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane2:Ljavax/swing/JScrollPane;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane5:Ljavax/swing/JScrollPane;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane6:Ljavax/swing/JScrollPane;

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane7:Ljavax/swing/JScrollPane;

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    const-wide/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->enableEvents(J)V

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jbInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private jbInit()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JPanel;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->contentPane:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->cardLayout1:Ljava/awt/CardLayout;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x2c4

    const/16 v2, 0x1c3

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setSize(Ljava/awt/Dimension;)V

    const-string v0, "JustIce"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    invoke-direct {v1, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout1:Ljava/awt/GridLayout;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setOrientation(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout2:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0xc8

    invoke-direct {v3, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v5, 0x190

    invoke-direct {v3, v5, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout3:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    const-string v3, "File"

    invoke-virtual {v0, v3}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v0, v3}, Ljavax/swing/JViewport;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/swing/JViewport;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$1;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$1;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v3}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setSelectionMode(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-static {v3}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;)Ljavax/swing/border/Border;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v4}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/awt/GridLayout;->setRows(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/awt/GridLayout;->setColumns(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    invoke-virtual {v0, v4}, Ljava/awt/GridLayout;->setHgap(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    invoke-static {v3}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;)Ljavax/swing/border/Border;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setToolTipText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    const-string v2, "New..."

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    const/16 v2, 0x4e

    const/4 v3, 0x2

    invoke-static {v2, v3, v4}, Ljavax/swing/KeyStroke;->getKeyStroke(IIZ)Ljavax/swing/KeyStroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$2;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$2;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$3;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$3;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$4;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$4;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    const-string v1, "Help"

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    const-string v1, "What is..."

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$5;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$5;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    const-string v1, "About"

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$6;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame$6;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    const-string v2, "bottom"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    const-string v4, "top"

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane2:Ljavax/swing/JScrollPane;

    const-string v5, "left"

    invoke-virtual {v0, v1, v5}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane5:Ljavax/swing/JScrollPane;

    const-string v6, "right"

    invoke-virtual {v0, v1, v6}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane5:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane6:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v5}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane6:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane7:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v6}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane7:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->contentPane:Ljavax/swing/JPanel;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    const-string v2, "jSplitPane1"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    invoke-virtual {p0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    return-void
.end method

.method private verify()V
    .locals 10

    const-string v0, "PLEASE WAIT"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->flush()V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x20

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    sget-object v2, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    sget-object v8, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v2, v8}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v2

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    sget-object v2, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1, v8}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move v7, v6

    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v7, v2}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v6, v8}, Ljavax/swing/JList;->setSelectionInterval(II)V

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v7, v2}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v6, v1}, Ljavax/swing/JList;->setSelectionInterval(II)V

    :goto_1
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    array-length v2, v0

    if-nez v2, :cond_3

    sget-object v2, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_2

    :cond_3
    sget-object v2, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :goto_2
    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    :goto_3
    array-length v1, v0

    if-ge v6, v1, :cond_4

    aget-object v1, v0, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->JUSTICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public aboutMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->JUSTICE_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "JustIce is a Java class file verifier.\nIt was implemented by Enver Haase in 2001, 2002.\n<http://jakarta.apache.org/bcel/index.html>"

    invoke-static {p0, v1, p1, v0}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized classNamesJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {p1}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->verify()V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljavax/swing/JList;->setSelectedValue(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public newFileMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    const-string p1, "Please enter the fully qualified name of a class or interface to verify:"

    invoke-static {p1}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/swing/JList;->setSelectedValue(Ljava/lang/Object;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized pass3aJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v5, v3

    move v4, v2

    :goto_0
    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v6}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v6

    invoke-interface {v6}, Ljavax/swing/ListModel;->getSize()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v6, v3}, Ljavax/swing/JList;->isSelectedIndex(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3a(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move v4, v1

    move v5, v2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Method \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    const/16 v8, 0x20

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {p1, v0}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    if-eqz v4, :cond_4

    sget-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :goto_1
    invoke-virtual {p1, v0}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pass3bJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v5, v3

    move v4, v2

    :goto_0
    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v6}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v6

    invoke-interface {v6}, Ljavax/swing/ListModel;->getSize()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v6, v3}, Ljavax/swing/JList;->isSelectedIndex(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3b(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move v4, v1

    move v5, v2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Method \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    const/16 v8, 0x20

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {p1, v0}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    if-eqz v4, :cond_4

    sget-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :goto_1
    invoke-virtual {p1, v0}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processWindowEvent(Ljava/awt/event/WindowEvent;)V
    .locals 0

    invoke-super {p0, p1}, Ljavax/swing/JFrame;->processWindowEvent(Ljava/awt/event/WindowEvent;)V

    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getID()I

    move-result p0

    const/16 p1, 0xc9

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public whatisMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierAppFrame;->JUSTICE_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "The upper four boxes to the right reflect verification passes according to The Java Virtual Machine Specification.\nThese are (in that order): Pass one, Pass two, Pass three (before data flow analysis), Pass three (data flow analysis).\nThe bottom box to the right shows (warning) messages; warnings do not cause a class to be rejected."

    invoke-static {p0, v1, p1, v0}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method
