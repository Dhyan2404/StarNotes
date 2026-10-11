.class public Lorg/apache/xerces/impl/xs/identity/Selector$XPath;
.super Lorg/apache/xerces/impl/xpath/XPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/identity/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xerces/impl/xs/identity/Selector$XPath;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length p3, p2

    if-lt p1, p3, :cond_0

    return-void

    :cond_0
    aget-object p2, p2, p1

    iget-object p2, p2, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    iget-object p2, p2, Lorg/apache/xerces/impl/xpath/XPath$Step;->axis:Lorg/apache/xerces/impl/xpath/XPath$Axis;

    iget-short p2, p2, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    const-string p1, "c-selector-xpath"

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    invoke-static {p0}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
