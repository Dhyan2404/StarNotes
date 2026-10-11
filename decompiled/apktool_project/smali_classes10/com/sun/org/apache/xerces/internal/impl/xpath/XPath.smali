.class public Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Scanner;,
        Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;,
        Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;,
        Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;,
        Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;,
        Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z

.field private static final DEBUG_ANY:Z

.field private static final DEBUG_XPATH_PARSE:Z


# instance fields
.field protected fExpression:Ljava/lang/String;

.field protected fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->parseExpression(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    return-void
.end method

.method private buildLocationPath(Ljava/util/Vector;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
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
    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    new-array p0, p0, [Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    invoke-virtual {p1, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;)V

    return-object p1
.end method

.method private static check(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string v0, "c-general-xpath"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

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

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# XPath expression: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expanded xpath: \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseExpression(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v6, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$1;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$1;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fExpression:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Scanner;->scanExpr(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z

    move-result v0

    const-string v1, "c-general-xpath"

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v7, v3

    :goto_0
    move v5, v4

    :goto_1
    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    const/4 v9, 0x6

    const/4 v10, 0x2

    if-eq v8, v9, :cond_3

    const/16 v9, 0x23

    if-eq v8, v9, :cond_1

    const/16 v9, 0x24

    if-eq v8, v9, :cond_0

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    new-instance v9, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    invoke-direct {v9, v4}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-direct {p0, v8, v6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->parseNodeTest(ILcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    move-result-object v8

    invoke-direct {v5, v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    move v7, v3

    goto :goto_1

    :cond_0
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    goto :goto_2

    :cond_1
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    invoke-direct {v7, v10}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v8

    invoke-direct {p0, v8, v6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->parseNodeTest(ILcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v3

    move v7, v5

    goto/16 :goto_1

    :cond_2
    :goto_2
    move v7, v4

    goto/16 :goto_1

    :cond_3
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    new-instance v8, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    invoke-direct {v8, v10}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;-><init>(S)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v9

    invoke-direct {p0, v9, v6, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->parseNodeTest(ILcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    const/4 v8, 0x3

    invoke-direct {v5, v8}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v10, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-direct {v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    invoke-direct {v11, v5, v10}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->peekToken()I

    move-result v5

    const/16 v10, 0x16

    if-ne v5, v10, :cond_5

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextToken()I

    new-instance v5, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    invoke-direct {v5, v9}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;-><init>(S)V

    new-instance v9, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-direct {v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;-><init>(S)V

    new-instance v8, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    invoke-direct {v8, v5, v9}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    move v5, v3

    goto/16 :goto_1

    :cond_6
    xor-int/lit8 p1, v5, 0x1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->check(Z)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->buildLocationPath(Ljava/util/Vector;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

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

.method private parseNodeTest(ILcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string p1, "c-general-xpath"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v2, :cond_2

    if-eqz p3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string p1, "c-general-xpath-ns"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const/16 p3, 0xa

    if-ne p1, p3, :cond_3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;->nextTokenAsString()Ljava/lang/String;

    move-result-object p1

    if-eq v0, v2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, p1

    :goto_2
    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    new-instance p3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p3, v0, p1, p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;-><init>(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-object p2

    :pswitch_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;-><init>(S)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLocationPath()Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    return-object p0
.end method

.method public getLocationPaths()[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
