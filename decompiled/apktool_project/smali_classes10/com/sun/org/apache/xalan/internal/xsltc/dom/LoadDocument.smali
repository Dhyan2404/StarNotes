.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAMESPACE_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static document(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    instance-of v1, p0, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    if-eqz v1, :cond_0

    .line 35
    move-object v1, p0

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/DTM;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    .line 36
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->prepassDocument(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    .line 37
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->makeDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I

    .line 39
    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->buildKeys(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    .line 40
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result p0

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(IZ)V

    return-object p1
.end method

.method private static document(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;

    invoke-direct {v0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    .line 27
    :goto_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 28
    invoke-interface {p3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    .line 29
    invoke-interface {p3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocumentURI(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    :cond_0
    invoke-static {v2, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;->addIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/UnionIterator;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method private static document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    move-object/from16 v3, p3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-static/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_6

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDocumentMask(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v4, v6, :cond_2

    .line 7
    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDOMAdapter(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDOMImpl()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v4

    .line 8
    instance-of v6, v4, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v6, :cond_2

    .line 9
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    invoke-interface {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result v1

    invoke-direct {v0, v1, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(IZ)V

    return-object v0

    .line 10
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getDOMCache()Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;

    move-result-object v4

    .line 11
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->nextMask()I

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v4, v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;->retrieveDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 15
    :cond_4
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    .line 16
    new-instance v9, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v9, v5}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->hasIdCall()Z

    move-result v14

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz p4, :cond_5

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->setStylesheetDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    .line 19
    :cond_5
    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->prepassDocument(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    .line 20
    invoke-interface {v1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->setDocumentURI(Ljava/lang/String;)V

    .line 21
    :goto_1
    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->makeDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    move-result-object v0

    .line 22
    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I

    .line 23
    invoke-interface {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->buildKeys(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    .line 24
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    invoke-interface {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result v1

    invoke-direct {v0, v1, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(IZ)V

    return-object v0

    .line 25
    :cond_6
    :goto_2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v0

    return-object v0
.end method

.method public static documentF(Ljava/lang/Object;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/EmptyIterator;->getInstance()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocumentURI(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 7
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    .line 8
    invoke-static {p2, p0, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    instance-of p2, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p2, :cond_4

    .line 11
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-static {p0, p1, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "document("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static documentF(Ljava/lang/Object;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 15
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 16
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_1
    check-cast p0, Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 20
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->getStylesheetDOM()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 22
    invoke-static {v1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x1

    .line 23
    invoke-static {v0, p1, p2, p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 24
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 25
    :cond_5
    instance-of p1, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p1, :cond_6

    .line 26
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-static {p0, v1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/LoadDocument;->document(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "document("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
