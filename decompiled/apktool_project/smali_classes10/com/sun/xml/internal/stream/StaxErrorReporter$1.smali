.class Lcom/sun/xml/internal/stream/StaxErrorReporter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/xml/internal/stream/StaxErrorReporter;->convertToStaxLocation(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)Ljavax/xml/stream/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/internal/stream/StaxErrorReporter;

.field final synthetic val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;


# direct methods
.method public constructor <init>(Lcom/sun/xml/internal/stream/StaxErrorReporter;Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->this$0:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    iput-object p2, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getCharacterOffset()I

    move-result p0

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/StaxErrorReporter$1;->val$location:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
