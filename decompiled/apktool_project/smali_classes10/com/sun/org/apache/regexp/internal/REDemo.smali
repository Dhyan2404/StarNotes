.class public Lcom/sun/org/apache/regexp/internal/REDemo;
.super Ljava/applet/Applet;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/TextListener;


# instance fields
.field compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

.field fieldMatch:Ljava/awt/TextField;

.field fieldRE:Ljava/awt/TextField;

.field outMatch:Ljava/awt/TextArea;

.field outRE:Ljava/awt/TextArea;

.field r:Lcom/sun/org/apache/regexp/internal/RE;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/RE;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    new-instance v0, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/awt/Frame;

    const-string v0, "RE Demo"

    invoke-direct {p0, v0}, Ljava/awt/Frame;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/REDemo$1;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/REDemo$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/awt/Frame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    new-instance v0, Lcom/sun/org/apache/regexp/internal/REDemo;

    invoke-direct {v0}, Lcom/sun/org/apache/regexp/internal/REDemo;-><init>()V

    invoke-virtual {p0, v0}, Ljava/awt/Frame;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v0}, Lcom/sun/org/apache/regexp/internal/REDemo;->init()V

    invoke-virtual {p0}, Ljava/awt/Frame;->pack()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/awt/Frame;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/REDemo;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    new-instance v2, Ljava/awt/Insets;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v2, v1, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    const/16 v2, 0xd

    iput v2, v1, Ljava/awt/GridBagConstraints;->anchor:I

    new-instance v3, Ljava/awt/Label;

    const-string v4, "Regular expression:"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/regexp/internal/REDemo;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    const/4 v3, 0x0

    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/16 v4, 0x11

    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    new-instance v6, Ljava/awt/TextField;

    const-string v7, "\\[([:javastart:][:javapart:]*)\\]"

    const/16 v8, 0x28

    invoke-direct {v6, v7, v8}, Ljava/awt/TextField;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldRE:Ljava/awt/TextField;

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/regexp/internal/REDemo;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v3, -0x1

    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    iput v2, v1, Ljava/awt/GridBagConstraints;->anchor:I

    new-instance v2, Ljava/awt/Label;

    const-string v6, "String:"

    invoke-direct {v2, v6, v5}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/REDemo;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    const/4 v2, 0x1

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    new-instance v4, Ljava/awt/TextField;

    const-string v6, "aaa([foo])aaa"

    invoke-direct {v4, v6, v8}, Ljava/awt/TextField;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldMatch:Ljava/awt/TextField;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/regexp/internal/REDemo;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    iput v2, v1, Ljava/awt/GridBagConstraints;->fill:I

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v1, Ljava/awt/GridBagConstraints;->weighty:D

    iput-wide v6, v1, Ljava/awt/GridBagConstraints;->weightx:D

    new-instance v2, Ljava/awt/TextArea;

    invoke-direct {v2}, Ljava/awt/TextArea;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->outRE:Ljava/awt/TextArea;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/REDemo;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    new-instance v2, Ljava/awt/TextArea;

    invoke-direct {v2}, Ljava/awt/TextArea;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->outMatch:Ljava/awt/TextArea;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/regexp/internal/REDemo;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldRE:Ljava/awt/TextField;

    invoke-virtual {v0, p0}, Ljava/awt/TextField;->addTextListener(Ljava/awt/event/TextListener;)V

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldMatch:Ljava/awt/TextField;

    invoke-virtual {v0, p0}, Ljava/awt/TextField;->addTextListener(Ljava/awt/event/TextListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/regexp/internal/REDemo;->textValueChanged(Ljava/awt/event/TextEvent;)V

    return-void
.end method

.method public sayMatch(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->outMatch:Ljava/awt/TextArea;

    invoke-virtual {p0, p1}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public sayRE(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->outRE:Ljava/awt/TextArea;

    invoke-virtual {p0, p1}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public textValueChanged(Ljava/awt/event/TextEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/event/TextEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldRE:Ljava/awt/TextField;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldRE:Ljava/awt/TextField;

    invoke-virtual {p1}, Ljava/awt/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->updateRE(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->fieldMatch:Ljava/awt/TextField;

    invoke-virtual {p1}, Ljava/awt/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->updateMatch(Ljava/lang/String;)V

    return-void
.end method

.method public throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public updateMatch(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Matches.\n\n"

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v1}, Lcom/sun/org/apache/regexp/internal/RE;->getParenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParen(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->sayMatch(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "Does not match"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->sayMatch(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->sayMatch(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateRE(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    iget-object v2, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/regexp/internal/RECompiler;->compile(Ljava/lang/String;)Lcom/sun/org/apache/regexp/internal/REProgram;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/regexp/internal/RE;->setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    new-instance p1, Ljava/io/CharArrayWriter;

    invoke-direct {p1}, Ljava/io/CharArrayWriter;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->compiler:Lcom/sun/org/apache/regexp/internal/REDebugCompiler;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/regexp/internal/REDebugCompiler;->dumpProgram(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/regexp/internal/REDemo;->sayRE(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->sayRE(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/REDemo;->r:Lcom/sun/org/apache/regexp/internal/RE;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/regexp/internal/RE;->setProgram(Lcom/sun/org/apache/regexp/internal/REProgram;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/regexp/internal/REDemo;->sayRE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
