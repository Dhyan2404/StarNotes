.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CachedDocument"
.end annotation


# instance fields
.field private _accessCount:J

.field private _buildTime:J

.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

.field private _firstReferenced:J

.field private _lastChecked:J

.field private _lastModified:J

.field private _lastReferenced:J

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_firstReferenced:J

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_lastReferenced:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_accessCount:J

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->loadDocument(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_buildTime:J

    return-void
.end method


# virtual methods
.method public getAccessCount()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_accessCount:J

    return-wide v0
.end method

.method public getDocument()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    return-object p0
.end method

.method public getEstimatedSize()J
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getSize()I

    move-result p0

    shl-int/lit8 p0, p0, 0x5

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstReferenced()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_firstReferenced:J

    return-wide v0
.end method

.method public getLastChecked()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_lastChecked:J

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_lastModified:J

    return-wide v0
.end method

.method public getLastReferenced()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_lastReferenced:J

    return-wide v0
.end method

.method public getLatency()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_buildTime:J

    return-wide v0
.end method

.method public incAccessCount()V
    .locals 4

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_accessCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_accessCount:J

    return-void
.end method

.method public loadDocument(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->access$100(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    move-result-object v3

    new-instance v4, Ljavax/xml/transform/sax/SAXSource;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;->access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v2, v5}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->setDocumentURI(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_buildTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    add-long/2addr v0, v2

    const/4 p1, 0x1

    ushr-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_buildTime:J

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_buildTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    :goto_0
    return-void
.end method

.method public setLastChecked(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_lastChecked:J

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DocumentCache$CachedDocument;->_lastModified:J

    return-void
.end method
