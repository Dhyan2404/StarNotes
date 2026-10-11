.class public Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field$XPath;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_1
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    array-length p3, p3

    if-ge p2, p3, :cond_5

    move p3, p1

    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;->fLocationPaths:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$LocationPath;->steps:[Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    array-length v1, v0

    if-ge p3, v1, :cond_4

    aget-object v1, v0, p3

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    iget-short v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;->type:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt p3, v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;

    const-string p1, "c-fields-xpaths"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
