.class Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$1;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Scanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->parseExpression(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$1;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Scanner;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method


# virtual methods
.method public addToken(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    const/16 v0, 0x24

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string p1, "c-general-xpath"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Scanner;->addToken(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Tokens;I)V

    return-void
.end method
