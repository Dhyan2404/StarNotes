.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/Attributes;


# static fields
.field private static final CDATASTRING:Ljava/lang/String; = "CDATA"

.field private static final EMPTYSTRING:Ljava/lang/String; = ""


# instance fields
.field private _attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _length:I

.field private _names:Ljava/util/Vector;

.field private _qnames:Ljava/util/Vector;

.field private _uris:Ljava/util/Vector;

.field private _values:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private alloc()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_names:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_qnames:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_uris:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->alloc()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_qnames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_values:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_uris:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_names:Ljava/util/Vector;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_uris:Ljava/util/Vector;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_names:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_values:Ljava/util/Vector;

    invoke-virtual {p0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_qnames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_uris:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_names:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_qnames:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "CDATA"

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const-string p0, "CDATA"

    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "CDATA"

    return-object p0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_uris:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_length:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
