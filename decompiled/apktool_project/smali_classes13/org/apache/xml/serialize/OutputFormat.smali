.class public Lorg/apache/xml/serialize/OutputFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/OutputFormat$Defaults;,
        Lorg/apache/xml/serialize/OutputFormat$DTD;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lorg/apache/xml/serialize/EncodingInfo;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    const-string v1, "UTF-8"

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->f:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->j:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->k:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->l:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->m:Z

    const-string v1, "\n"

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->p:Ljava/lang/String;

    const/16 v1, 0x48

    iput v1, p0, Lorg/apache/xml/serialize/OutputFormat;->q:I

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->r:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->s:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    const-string v1, "UTF-8"

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->f:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->j:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->k:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->l:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->m:Z

    const-string v1, "\n"

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->p:Ljava/lang/String;

    const/16 v1, 0x48

    iput v1, p0, Lorg/apache/xml/serialize/OutputFormat;->q:I

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->r:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->s:Z

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    const-string v1, "UTF-8"

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->f:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->j:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->k:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->l:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->m:Z

    const-string v1, "\n"

    iput-object v1, p0, Lorg/apache/xml/serialize/OutputFormat;->p:Ljava/lang/String;

    const/16 v1, 0x48

    iput v1, p0, Lorg/apache/xml/serialize/OutputFormat;->q:I

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->r:Z

    iput-boolean v0, p0, Lorg/apache/xml/serialize/OutputFormat;->s:Z

    invoke-static {p1}, Lorg/apache/xml/serialize/OutputFormat;->whichMethod(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xml/serialize/OutputFormat;->whichDoctypePublic(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/xml/serialize/OutputFormat;->whichDoctypeSystem(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serialize/OutputFormat;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/serialize/OutputFormat;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/serialize/OutputFormat;->whichMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/OutputFormat;->setMediaType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public static whichDoctypePublic(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    instance-of p0, p0, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz p0, :cond_1

    const-string p0, "-//W3C//DTD XHTML 1.0 Strict//EN"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whichDoctypeSystem(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    instance-of p0, p0, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz p0, :cond_1

    const-string p0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whichMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "text/xml"

    return-object p0

    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "text/html"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "xhtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "text/plain"

    return-object p0

    :cond_3
    const-string v0, "fop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "application/pdf"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whichMethod(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6

    instance-of v0, p0, Lorg/w3c/dom/html/HTMLDocument;

    const-string v1, "html"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    const-string v0, "xml"

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "fop"

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    return-object v0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getCDataElements()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->n:[Ljava/lang/String;

    return-object p0
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingInfo()Lorg/apache/xml/serialize/EncodingInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/xml/serialize/OutputFormat;->f:Z

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/Encodings;->a(Ljava/lang/String;Z)Lorg/apache/xml/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    :cond_0
    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    return-object p0
.end method

.method public getIndent()I
    .locals 0

    iget p0, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    return p0
.end method

.method public getIndenting()Z
    .locals 0

    iget p0, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLastPrintable()C
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xff

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getLineWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/xml/serialize/OutputFormat;->q:I

    return p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getNonEscapingElements()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->o:[Ljava/lang/String;

    return-object p0
.end method

.method public getOmitComments()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->l:Z

    return p0
.end method

.method public getOmitDocumentType()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->k:Z

    return p0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->j:Z

    return p0
.end method

.method public getPreserveEmptyAttributes()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->s:Z

    return p0
.end method

.method public getPreserveSpace()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->r:Z

    return p0
.end method

.method public getStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->m:Z

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/OutputFormat;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isCDataElement(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/serialize/OutputFormat;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serialize/OutputFormat;->n:[Ljava/lang/String;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    return v1

    :cond_1
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isNonEscapingElement(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/serialize/OutputFormat;->o:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serialize/OutputFormat;->o:[Ljava/lang/String;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    return v1

    :cond_1
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAllowJavaNames(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->f:Z

    return-void
.end method

.method public setAllowJavaNames()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lorg/apache/xml/serialize/OutputFormat;->f:Z

    return p0
.end method

.method public setCDataElements([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->n:[Ljava/lang/String;

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->i:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xml/serialize/OutputFormat;->h:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    return-void
.end method

.method public setEncoding(Lorg/apache/xml/serialize/EncodingInfo;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/xml/serialize/EncodingInfo;->getIANAName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serialize/OutputFormat;->d:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->e:Lorg/apache/xml/serialize/EncodingInfo;

    return-void
.end method

.method public setIndent(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    return-void
.end method

.method public setIndenting(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    const/16 p1, 0x48

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/serialize/OutputFormat;->c:I

    :goto_0
    iput p1, p0, Lorg/apache/xml/serialize/OutputFormat;->q:I

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "\n"

    :cond_0
    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->p:Ljava/lang/String;

    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lorg/apache/xml/serialize/OutputFormat;->q:I

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->g:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->a:Ljava/lang/String;

    return-void
.end method

.method public setNonEscapingElements([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->o:[Ljava/lang/String;

    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->l:Z

    return-void
.end method

.method public setOmitDocumentType(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->k:Z

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->j:Z

    return-void
.end method

.method public setPreserveEmptyAttributes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->s:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->r:Z

    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/serialize/OutputFormat;->m:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serialize/OutputFormat;->b:Ljava/lang/String;

    return-void
.end method
