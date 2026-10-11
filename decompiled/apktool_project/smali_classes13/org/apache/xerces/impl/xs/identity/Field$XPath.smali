.class public Lorg/apache/xerces/impl/xs/identity/Field$XPath;
.super Lorg/apache/xerces/impl/xpath/XPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xerces/impl/xs/identity/Field$XPath;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/NamespaceContext;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length p3, p3

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    move p3, p1

    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath;->fLocationPaths:[Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, p2

    iget-object v0, v0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    array-length v1, v0

    if-lt p3, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    aget-object v1, v0, p3

    iget-object v1, v1, Lorg/apache/xerces/impl/xpath/XPath$Step;->axis:Lorg/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v1, v1, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/apache/xerces/impl/xpath/XPathException;

    const-string p1, "c-fields-xpaths"

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7c

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_2

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq v5, v6, :cond_4

    invoke-static {p0, v3, v0}, Lorg/apache/xerces/impl/xs/identity/Field$XPath;->f(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    move v4, v1

    goto :goto_2

    :cond_3
    if-ne v5, v6, :cond_4

    move v4, v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_5

    const-string v3, "./"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_1
    if-lt p1, p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7c

    if-eqz v2, :cond_3

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_2

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_1

    goto :goto_2

    :cond_1
    if-eq v4, v5, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    move v2, v1

    goto :goto_3

    :cond_3
    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
