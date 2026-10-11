.class public Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;
.super Lcom/sun/org/apache/xerces/internal/xni/XNIException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x180cb55b161e8a4fL


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fCharacterOffset:I

.field protected fColumnNumber:I

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLineNumber:I

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLineNumber:I

    .line 3
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fColumnNumber:I

    .line 4
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fCharacterOffset:I

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    .line 9
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLineNumber:I

    .line 10
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fColumnNumber:I

    .line 11
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getCharacterOffset()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fCharacterOffset:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 12
    invoke-direct {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLineNumber:I

    .line 14
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fColumnNumber:I

    .line 15
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fCharacterOffset:I

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    .line 17
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    .line 19
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    .line 20
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLineNumber:I

    .line 21
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fColumnNumber:I

    .line 22
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getCharacterOffset()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fCharacterOffset:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public getCharacterOffset()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fCharacterOffset:I

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fColumnNumber:I

    return p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLineNumber:I

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fLineNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->fCharacterOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
