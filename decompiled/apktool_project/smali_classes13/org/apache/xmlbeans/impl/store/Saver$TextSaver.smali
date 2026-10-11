.class final Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;
.super Lorg/apache/xmlbeans/impl/store/Saver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextSaver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final _initialBufSize:I = 0x1000


# instance fields
.field private _buf:[C

.field private _cdataEntityCountThreshold:I

.field private _cdataLengthThreshold:I

.field private _free:I

.field private _in:I

.field private _isPrettyPrint:Z

.field private _lastEmitCch:I

.field private _lastEmitIn:I

.field private _out:I

.field private _useCDataBookmarks:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataLengthThreshold:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_useCDataBookmarks:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isSaveNoXmlDecl()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getSaveCDataLengthThreshold()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getSaveCDataLengthThreshold()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataLengthThreshold:I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getSaveCDataEntityCountThreshold()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getSaveCDataEntityCountThreshold()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isUseCDataBookmarks()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_useCDataBookmarks:Z

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isSavePrettyPrint()Z

    move-result p2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    :cond_4
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-eqz p3, :cond_a

    if-nez v2, :cond_a

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    move-object v0, p2

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    const-string v0, "1.0"

    :cond_6
    if-eqz p1, :cond_7

    sget-object v1, Lorg/apache/xmlbeans/XmlDocumentProperties;->STANDALONE:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getStandalone()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_7
    const-string p1, "<?xml version=\""

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\" encoding=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " standalone=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "yes"

    goto :goto_2

    :cond_8
    const-string p2, "no"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/xmlbeans/impl/store/Saver;->_newLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private emit(C)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    .line 2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    aput-char p1, v1, v2

    add-int/2addr v2, v0

    .line 3
    array-length p1, v1

    rem-int/2addr v2, p1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    return-void
.end method

.method private emit(CC)V
    .locals 2

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    .line 7
    aput-char p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 8
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    return-void
.end method

.method private emit(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 10
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v1, v4, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v0, v4, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 13
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p1, v4, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 14
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_2

    .line 15
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p1, v0, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 16
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    :cond_4
    :goto_2
    return-void
.end method

.method private emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 7

    .line 17
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    .line 20
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 21
    :cond_0
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v4

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget v6, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-static {v4, v3, v0, v6, v5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    .line 23
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    add-int/2addr p1, v5

    sub-int v4, v2, v5

    invoke-static {v3, v1, v0, p1, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    .line 24
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-static {v1, v3, v0, p1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    .line 26
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_1

    .line 27
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    :goto_1
    return-void
.end method

.method private emitAttrHelper(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitName(Ljavax/xml/namespace/QName;Z)V

    const/16 p1, 0x3d

    const/16 v1, 0x22

    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeAttrValue(Z)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return-void
.end method

.method private emitLiteral(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    :goto_0
    return-void
.end method

.method private emitName(Ljavax/xml/namespace/QName;Z)V
    .locals 3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getNonDefaultUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    const/16 p2, 0x3a

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method private emitNamespacesHelper()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitXmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private ensure(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private entitizeAttrValue(Z)V
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    :goto_0
    if-lez v0, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    const-string v2, "&lt;"

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    const-string v2, "&amp;"

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    const-string v2, "&quot;"

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isEscapedChar(C)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_5

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->getEscapedString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private entitizeComment()V
    .locals 9

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " "

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-lez v0, :cond_5

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v7, v7, v1

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/store/Saver;->isBadChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v4, "?"

    invoke-direct {p0, v1, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_1
    if-ne v7, v5, :cond_3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v3, v2

    :goto_2
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    if-ne v1, v4, :cond_4

    move v1, v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-char v1, v1, v0

    if-ne v1, v5, :cond_6

    invoke-direct {p0, v0, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    :cond_6
    return-void
.end method

.method private entitizeContent(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const/16 v9, 0xd

    const/16 v10, 0x26

    const/16 v11, 0x3c

    const/16 v12, 0x3e

    const/16 v13, 0x5d

    const/4 v14, 0x1

    if-lez v1, :cond_7

    iget-object v15, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v15, v15, v2

    if-eq v15, v11, :cond_4

    if-ne v15, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ne v7, v13, :cond_2

    if-ne v8, v13, :cond_2

    if-ne v15, v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v15}, Lorg/apache/xmlbeans/impl/store/Saver;->isBadChar(C)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {v0, v15}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isEscapedChar(C)Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    if-nez v7, :cond_5

    if-ne v15, v9, :cond_5

    :cond_3
    :goto_1
    move v6, v14

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    move v2, v4

    :cond_6
    add-int/lit8 v1, v1, -0x1

    move v7, v8

    move v8, v15

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    if-ge v5, v1, :cond_8

    return-void

    :cond_8
    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    const-string v2, "?"

    if-nez p1, :cond_11

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    iget v6, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataLengthThreshold:I

    if-le v3, v6, :cond_9

    iget v6, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    if-le v5, v6, :cond_9

    goto/16 :goto_6

    :cond_9
    move v5, v4

    move v6, v5

    :goto_4
    if-lez v3, :cond_1a

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v7, v7, v1

    if-ne v7, v11, :cond_a

    const-string v5, "&lt;"

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_a
    if-ne v7, v10, :cond_b

    const-string v5, "&amp;"

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_b
    if-ne v7, v12, :cond_c

    if-ne v6, v13, :cond_c

    if-ne v5, v13, :cond_c

    const-string v5, "&gt;"

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_c
    invoke-static {v7}, Lorg/apache/xmlbeans/impl/store/Saver;->isBadChar(C)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_d
    iget-boolean v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    if-nez v5, :cond_e

    if-ne v7, v9, :cond_e

    const-string v5, "&#13;"

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_e
    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isEscapedChar(C)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    invoke-virtual {v5, v7}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->getEscapedString(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_f
    add-int/lit8 v1, v1, 0x1

    :goto_5
    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v5

    if-ne v1, v5, :cond_10

    move v1, v4

    :cond_10
    add-int/lit8 v3, v3, -0x1

    move v5, v6

    move v6, v7

    goto :goto_4

    :cond_11
    :goto_6
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v3, v3, v1

    if-ne v3, v13, :cond_12

    move v3, v14

    goto :goto_7

    :cond_12
    move v3, v4

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<![CDATA["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v6, v5, v1

    if-ne v6, v13, :cond_13

    move v6, v14

    goto :goto_8

    :cond_13
    move v6, v4

    :goto_8
    add-int/2addr v1, v14

    array-length v5, v5

    if-ne v1, v5, :cond_14

    move v1, v4

    :cond_14
    iget v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    add-int/lit8 v5, v5, -0x2

    :goto_9
    if-lez v5, :cond_19

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v7, v7, v1

    if-ne v7, v12, :cond_15

    if-eqz v3, :cond_15

    if-eqz v6, :cond_15

    const-string v3, "]]>><![CDATA["

    invoke-direct {v0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_a

    :cond_15
    invoke-static {v7}, Lorg/apache/xmlbeans/impl/store/Saver;->isBadChar(C)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_a

    :cond_16
    add-int/lit8 v1, v1, 0x1

    :goto_a
    if-ne v7, v13, :cond_17

    move v3, v14

    goto :goto_b

    :cond_17
    move v3, v4

    :goto_b
    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v7, v7

    if-ne v1, v7, :cond_18

    move v1, v4

    :cond_18
    add-int/lit8 v5, v5, -0x1

    move/from16 v16, v6

    move v6, v3

    move/from16 v3, v16

    goto :goto_9

    :cond_19
    const-string v1, "]]>"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private entitizeProcinst()V
    .locals 6

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lez v0, :cond_6

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/store/Saver;->isBadChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "?"

    invoke-direct {p0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    :cond_1
    const/16 v5, 0x3e

    if-ne v4, v5, :cond_3

    if-eqz v3, :cond_2

    const-string v3, " "

    invoke-direct {p0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v3, v2

    goto :goto_3

    :cond_3
    const/16 v3, 0x3f

    if-ne v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    :goto_3
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    if-ne v1, v4, :cond_5

    move v1, v2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private isEscapedChar(C)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->containsChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private preEmit(I)Z
    .locals 2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-gt v0, p1, :cond_1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->resize(II)I

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    return v1
.end method

.method private replace(ILjava/lang/String;)I
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-le v0, v2, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->resize(II)I

    move-result p1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-le v3, v4, :cond_2

    if-lt p1, v3, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    sub-int v5, v3, v0

    sub-int v6, p1, v3

    invoke-static {v4, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v3

    sub-int/2addr v5, v4

    if-gt v0, v5, :cond_3

    add-int v5, p1, v0

    sub-int/2addr v4, p1

    invoke-static {v3, p1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_0

    :cond_3
    add-int v6, v5, v4

    sub-int/2addr v6, p1

    add-int/lit8 v6, v6, -0x1

    if-gt v0, v6, :cond_4

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    add-int/lit8 v4, p1, 0x1

    add-int v6, v4, v0

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    sub-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v5

    invoke-static {v3, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_0

    :cond_4
    sub-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v4

    sub-int/2addr v5, p1

    sub-int/2addr v4, v6

    sub-int v7, v0, v5

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p2, v5, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v6, v0

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    move v2, v5

    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p2, v1, v2, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length p0, p0

    rem-int/2addr p1, p0

    return p1
.end method

.method private resize(II)I
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v1

    :goto_1
    sub-int v2, v0, v1

    if-ge v2, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    new-array p1, v0, [C

    if-lez v1, :cond_4

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_2
    sub-int v2, v1, v2

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-static {v5, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-static {v3, v4, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-lt p2, v3, :cond_3

    sub-int/2addr p2, v3

    goto :goto_2

    :cond_3
    add-int/2addr p2, v2

    :goto_2
    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    goto :goto_3

    :cond_4
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    :goto_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    return p2
.end method


# virtual methods
.method public emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeComment()V

    const-string p1, "-->"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, " SYSTEM "

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitLiteral(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, " PUBLIC "

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitLiteral(Ljava/lang/String;)V

    const-string p1, " "

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitLiteral(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, ">"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Saver;->_newLine:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitName(Ljavax/xml/namespace/QName;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitNamespacesHelper()V

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitAttrHelper(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitNamespacesHelper()V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasChildren()Z

    move-result p2

    const/16 p3, 0x3e

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasText()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x2f

    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return v1
.end method

.method public emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitName(Ljavax/xml/namespace/QName;Z)V

    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return-void
.end method

.method public emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeProcinst()V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    const-string p1, "?>"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_useCDataBookmarks:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isTextCData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeContent(Z)V

    return-void
.end method

.method public emitXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "xmlns"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3d

    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeAttrValue(Z)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return-void
.end method

.method public getAvailable()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public read()I
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->ensure(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    aget-char v3, v1, v2

    add-int/2addr v2, v0

    .line 3
    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    .line 4
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    return v3
.end method

.method public read([CII)I
    .locals 4

    .line 5
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->ensure(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-gtz p3, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, p3, :cond_2

    move p3, v0

    .line 6
    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v0, v2, :cond_3

    .line 7
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    if-lt v3, p3, :cond_4

    .line 9
    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {v2, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    add-int/2addr p2, v3

    sub-int v2, p3, v3

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :goto_0
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    .line 13
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    return p3

    :cond_5
    :goto_1
    return v1
.end method

.method public saveToString()Ljava/lang/String;
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-direct {v1, v2, p0, v0}, Ljava/lang/String;-><init>([CII)V

    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public write(Ljava/io/Writer;I)I
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    if-ge v0, p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result p2

    if-lez p2, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v1, v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-eq v1, v2, :cond_2

    array-length v1, v0

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_0
    return p2
.end method
