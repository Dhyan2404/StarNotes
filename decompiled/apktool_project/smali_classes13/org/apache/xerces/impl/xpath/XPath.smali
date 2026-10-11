.class public Lorg/apache/xerces/impl/xpath/XPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xpath/XPath$a;,
        Lorg/apache/xerces/impl/xpath/XPath$b;,
        Lorg/apache/xerces/impl/xpath/XPath$NodeTest;,
        Lorg/apache/xerces/impl/xpath/XPath$Axis;,
        Lorg/apache/xerces/impl/xpath/XPath$Step;,
        Lorg/apache/xerces/impl/xpath/XPath$LocationPath;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z


# instance fields
.field protected final fExpression:Ljava/lang/String;

.field protected final fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

.field protected final fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/xpath/XPath;->c(Lorg/apache/xerces/xni/NamespaceContext;)[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    return-void
.end method

.method public static b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p0, v0}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p0, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "# XPath expression: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lorg/apache/xerces/impl/xpath/XPath;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v5}, Lorg/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "expanded xpath: \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)Lorg/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    new-array p0, p0, [Lorg/apache/xerces/impl/xpath/XPath$Step;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    new-instance p1, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-direct {p1, p0}, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;-><init>([Lorg/apache/xerces/impl/xpath/XPath$Step;)V

    return-object p1
.end method

.method public final c(Lorg/apache/xerces/xni/NamespaceContext;)[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    new-instance v6, Lorg/apache/xerces/impl/xpath/XPath$b;

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v6, v0}, Lorg/apache/xerces/impl/xpath/XPath$b;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    new-instance v0, Lorg/apache/xerces/impl/xpath/a;

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xpath/a;-><init>(Lorg/apache/xerces/impl/xpath/XPath;Lorg/apache/xerces/util/SymbolTable;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lorg/apache/xerces/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xpath/XPath$a;->b(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/xpath/XPath$b;Ljava/lang/String;II)Z

    move-result v0

    const-string v1, "c-general-xpath"

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->e()Z

    move-result v5

    if-nez v5, :cond_0

    xor-int/lit8 p1, v4, 0x1

    invoke-static {p1}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/XPath;->a(Ljava/util/Vector;)Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object p0

    :cond_0
    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v5, v7, :cond_6

    const/4 v7, 0x6

    const/4 v9, 0x2

    if-eq v5, v7, :cond_5

    const/16 v7, 0x23

    const/16 v10, 0x8

    if-eq v5, v7, :cond_3

    const/16 v7, 0x24

    if-eq v5, v7, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :pswitch_0
    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/XPath;->a(Ljava/util/Vector;)Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    new-instance v4, Lorg/apache/xerces/impl/xpath/XPath$Step;

    new-instance v7, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v7, v3}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {p0, v5, v6, p1}, Lorg/apache/xerces/impl/xpath/XPath;->d(ILorg/apache/xerces/impl/xpath/XPath$b;Lorg/apache/xerces/xni/NamespaceContext;)Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/apache/xerces/impl/xpath/XPath$Step;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    goto :goto_2

    :pswitch_4
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    move-result v4

    if-ne v4, v10, :cond_2

    new-instance v4, Lorg/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v3}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    move-result v7

    invoke-virtual {p0, v7, v6, p1}, Lorg/apache/xerces/impl/xpath/XPath;->d(ILorg/apache/xerces/impl/xpath/XPath$b;Lorg/apache/xerces/xni/NamespaceContext;)Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/apache/xerces/impl/xpath/XPath$Step;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    move-result v4

    if-ne v4, v10, :cond_4

    new-instance v4, Lorg/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v9}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    move-result v7

    invoke-virtual {p0, v7, v6, p1}, Lorg/apache/xerces/impl/xpath/XPath;->d(ILorg/apache/xerces/impl/xpath/XPath$b;Lorg/apache/xerces/xni/NamespaceContext;)Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/apache/xerces/impl/xpath/XPath$Step;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    goto :goto_2

    :cond_4
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    new-instance v4, Lorg/apache/xerces/impl/xpath/XPath$Step;

    new-instance v5, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v5, v9}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    move-result v7

    invoke-virtual {p0, v7, v6, p1}, Lorg/apache/xerces/impl/xpath/XPath;->d(ILorg/apache/xerces/impl/xpath/XPath$b;Lorg/apache/xerces/xni/NamespaceContext;)Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/apache/xerces/impl/xpath/XPath$Step;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lorg/apache/xerces/impl/xpath/XPath;->b(Z)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v9, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v9, v5}, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v10, Lorg/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v10, v4, v9}, Lorg/apache/xerces/impl/xpath/XPath$Step;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->h()I

    move-result v4

    const/16 v9, 0x16

    if-ne v4, v9, :cond_7

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xpath/XPath$b;->f()I

    new-instance v4, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v4, v7}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v7, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v7, v5}, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v5, Lorg/apache/xerces/impl/xpath/XPath$Step;

    invoke-direct {v5, v4, v7}, Lorg/apache/xerces/impl/xpath/XPath$Step;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    :goto_3
    move v4, v8

    goto/16 :goto_1

    :cond_8
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(ILorg/apache/xerces/impl/xpath/XPath$b;Lorg/apache/xerces/xni/NamespaceContext;)Lorg/apache/xerces/impl/xpath/XPath$NodeTest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    const-string p1, "c-general-xpath"

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p2}, Lorg/apache/xerces/impl/xpath/XPath$b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v2, :cond_2

    if-eqz p3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    const-string p1, "c-general-xpath-ns"

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    new-instance p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lorg/apache/xerces/impl/xpath/XPath$b;->g()Ljava/lang/String;

    move-result-object p1

    if-eq v0, v2, :cond_4

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, p1

    :goto_2
    new-instance p2, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    new-instance p3, Lorg/apache/xerces/xni/QName;

    invoke-direct {p3, v0, p1, p0, v1}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Lorg/apache/xerces/xni/QName;)V

    return-object p2

    :pswitch_1
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(S)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLocationPath()Lorg/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    return-object p0
.end method

.method public getLocationPaths()[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v1, :cond_1

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
