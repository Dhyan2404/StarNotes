.class Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$fColumnNumber:I

.field final synthetic val$fExpandedSystemId:Ljava/lang/String;

.field final synthetic val$fLineNumber:I

.field final synthetic val$fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fExpandedSystemId:Ljava/lang/String;

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fColumnNumber:I

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fLineNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharacterOffset()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fColumnNumber:I

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fExpandedSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fLineNumber:I

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;->val$fPublicId:Ljava/lang/String;

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
