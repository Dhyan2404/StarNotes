.class public Lcom/sun/org/apache/xalan/internal/transformer/ClonerToResultTree;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneToResultTree(IILcom/sun/org/apache/xml/internal/dtm/DTM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance p1, Ljavax/xml/transform/TransformerException;

    goto :goto_1

    :pswitch_1
    const/16 p1, 0xd

    invoke-static {p3, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->processNSDecls(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;IILcom/sun/org/apache/xml/internal/dtm/DTM;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p1, p0}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-interface {p3}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    invoke-interface {p2, p0, p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    invoke-interface {p3}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto :goto_0

    :pswitch_6
    invoke-interface {p2, p0, p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_0

    :pswitch_7
    invoke-static {p3, p0}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->addAttribute(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    goto :goto_0

    :pswitch_8
    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-static {p3, p0}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->addAttributes(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    invoke-static {p3, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->processNSDecls(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;IILcom/sun/org/apache/xml/internal/dtm/DTM;)V

    :cond_1
    :goto_0
    :pswitch_9
    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t clone node: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
