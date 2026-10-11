.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/Translet;


# static fields
.field public static final CURRENT_TRANSLET_VERSION:I = 0x65

.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field public static final FIRST_TRANSLET_VERSION:I = 0x64

.field private static final ID_INDEX_NAME:Ljava/lang/String; = "##id"

.field public static final VER_SPLIT_NAMES_ARRAY:I = 0x65


# instance fields
.field private _auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field public _cdata:Ljava/util/Vector;

.field public _doctypePublic:Ljava/lang/String;

.field public _doctypeSystem:Ljava/lang/String;

.field private _domCache:Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;

.field protected _domImplementation:Lorg/w3c/dom/DOMImplementation;

.field private _emptyKeyIndex:Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

.field public _encoding:Ljava/lang/String;

.field public _formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field protected _hasIdCall:Z

.field public _indent:Z

.field public _indentamount:I

.field private _indexSize:I

.field private _keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field public _mediaType:Ljava/lang/String;

.field public _method:Ljava/lang/String;

.field private _msgHandler:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;

.field public _omitHeader:Z

.field public _standalone:Ljava/lang/String;

.field protected _templates:Ljavax/xml/transform/Templates;

.field public _version:Ljava/lang/String;

.field protected namesArray:[Ljava/lang/String;

.field protected namespaceArray:[Ljava/lang/String;

.field protected paramsStack:Ljava/util/ArrayList;

.field protected pbase:I

.field protected pframe:I

.field protected stringValueHandler:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;

.field protected transletVersion:I

.field protected typesArray:[I

.field protected urisArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_encoding:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_omitHeader:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_standalone:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypePublic:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypeSystem:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indent:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_mediaType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indentamount:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transletVersion:I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_templates:Ljavax/xml/transform/Templates;

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_hasIdCall:Z

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->stringValueHandler:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_msgHandler:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_emptyKeyIndex:Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indexSize:I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domCache:Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domImplementation:Lorg/w3c/dom/DOMImplementation;

    return-void
.end method

.method private final buildIDIndex(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 5

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->hasDOMSource()Z

    move-result v1

    const-string v2, "##id"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->buildKeyIndex(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->buildKeyIndex(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->setKeyIndexDom(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addAuxiliaryClass(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCdataElement(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addDecimalFormat(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->mapQNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->addParameter(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final addParameter(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    .line 3
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    if-lt v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;

    .line 5
    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-boolean p0, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_isDefault:Z

    if-nez p0, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object p0, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_value:Ljava/lang/Object;

    return-object p0

    .line 8
    :cond_1
    :goto_1
    iput-object p2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_value:Ljava/lang/Object;

    .line 9
    iput-boolean p3, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_isDefault:Z

    return-object p2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p2
.end method

.method public buildKeyIndex(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indexSize:I

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 4
    :cond_1
    invoke-virtual {v0, p3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->add(Ljava/lang/Object;I)V

    return-void
.end method

.method public buildKeyIndex(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indexSize:I

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 8
    :cond_1
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->setDom(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    return-void
.end method

.method public buildKeys(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    return-void
.end method

.method public final characters(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public clearParameters()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public closeOutputHandler(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public createKeyIndex()Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indexSize:I

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;-><init>(I)V

    return-object v0
.end method

.method public final displayMessage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_msgHandler:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;->displayMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAuxiliaryClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public getDOMCache()Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domCache:Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;

    return-object p0
.end method

.method public final getDecimalFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-eqz v0, :cond_2

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DecimalFormat;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_formatSymbols:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/text/DecimalFormat;

    :cond_1
    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyIndex(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_emptyKeyIndex:Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_emptyKeyIndex:Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_emptyKeyIndex:Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_emptyKeyIndex:Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    :cond_3
    :goto_1
    return-object p1
.end method

.method public getNamesArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namesArray:[Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namespaceArray:[Ljava/lang/String;

    return-object p0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->mapQNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_value:Ljava/lang/Object;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_templates:Ljavax/xml/transform/Templates;

    return-object p0
.end method

.method public getTypesArray()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->typesArray:[I

    return-object p0
.end method

.method public getUrisArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->urisArray:[Ljava/lang/String;

    return-object p0
.end method

.method public hasIdCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_hasIdCall:Z

    return p0
.end method

.method public final makeDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namesArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->urisArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->typesArray:[I

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namespaceArray:[Ljava/lang/String;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V

    return-object v6
.end method

.method public newDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domImplementation:Lorg/w3c/dom/DOMImplementation;

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domImplementation:Lorg/w3c/dom/DOMImplementation;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domImplementation:Lorg/w3c/dom/DOMImplementation;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public openOutputHandler(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->openOutputHandler(Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0
.end method

.method public openOutputHandler(Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->newInstance()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setEncoding(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputMethod(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setWriter(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->setOutputType(I)V

    .line 10
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transferOutputSettings(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    .line 12
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final popParamFrame()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    :cond_1
    return-void
.end method

.method public final postInitialization()V
    .locals 11

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transletVersion:I

    const/16 v1, 0x65

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namesArray:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    new-array v4, v0, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namesArray:[Ljava/lang/String;

    aget-object v7, v7, v6

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    const/4 v10, -0x1

    if-le v8, v10, :cond_0

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6

    :cond_0
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x40

    if-ne v8, v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x2

    aput v8, v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x3f

    if-ne v8, v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0xd

    aput v8, v4, v6

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    aput v8, v4, v6

    :goto_1
    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namesArray:[Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->urisArray:[Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->typesArray:[I

    :cond_5
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transletVersion:I

    if-le v0, v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UNKNOWN_TRANSLET_VERSION_ERR"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final prepassDocument(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 1

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->setIndexSize(I)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->buildIDIndex(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    return-void
.end method

.method public printInternalState()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractTranslet this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pbase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vframe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paramsStack.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "namesArray.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namesArray:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "namespaceArray.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->namespaceArray:[Ljava/lang/String;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total memory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final pushParamFrame()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->paramsStack:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pframe:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->pbase:I

    return-void
.end method

.method public setAuxiliaryClasses(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    return-void
.end method

.method public setDOMCache(Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_domCache:Lcom/sun/org/apache/xalan/internal/xsltc/DOMCache;

    return-void
.end method

.method public setIndexSize(I)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indexSize:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indexSize:I

    :cond_0
    return-void
.end method

.method public setKeyIndexDom(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getKeyIndex(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->setDom(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V

    return-void
.end method

.method public final setMessageHandler(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_msgHandler:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;

    return-void
.end method

.method public setTemplates(Ljavax/xml/transform/Templates;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_templates:Ljavax/xml/transform/Templates;

    return-void
.end method

.method public transferOutputSettings(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_standalone:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_omitHeader:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_version:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indent:Z

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndent(Z)V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indentamount:I

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndentAmount(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypeSystem:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypePublic:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_method:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indent:Z

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndent(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypeSystem:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypePublic:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_mediaType:Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_cdata:Ljava/util/Vector;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_version:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_standalone:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_omitHeader:Z

    if-eqz v0, :cond_7

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    :cond_7
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_indent:Z

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndent(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypeSystem:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_doctypePublic:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public abstract transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation
.end method

.method public final transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->transform(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->_keyIndexes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 3
    throw p1
.end method
