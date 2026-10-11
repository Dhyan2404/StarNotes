.class Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleStartDocument(Ljavax/xml/stream/events/XMLEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

.field final synthetic val$event:Ljavax/xml/stream/events/XMLEvent;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;Ljavax/xml/stream/events/XMLEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->val$event:Ljavax/xml/stream/events/XMLEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->val$event:Ljavax/xml/stream/events/XMLEvent;

    invoke-interface {p0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->access$100(Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->val$event:Ljavax/xml/stream/events/XMLEvent;

    invoke-interface {p0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->val$event:Ljavax/xml/stream/events/XMLEvent;

    invoke-interface {p0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->val$event:Ljavax/xml/stream/events/XMLEvent;

    invoke-interface {p0}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->access$000(Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
