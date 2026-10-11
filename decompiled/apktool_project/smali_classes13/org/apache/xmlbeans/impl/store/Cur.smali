.class public final Lorg/apache/xmlbeans/impl/store/Cur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;,
        Lorg/apache/xmlbeans/impl/store/Cur$Locations;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ATTR:I = 0x3

.field static final COMMENT:I = 0x4

.field static final DISPOSED:I = 0x3

.field static final ELEM:I = 0x2

.field static final EMBEDDED:I = 0x2

.field static final END_POS:I = -0x1

.field static final NO_POS:I = -0x2

.field static final POOLED:I = 0x0

.field static final PROCINST:I = 0x5

.field static final REGISTERED:I = 0x1

.field static final ROOT:I = 0x1

.field static final TEXT:I


# instance fields
.field _cchSrc:I

.field _id:Ljava/lang/String;

.field _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field _next:Lorg/apache/xmlbeans/impl/store/Cur;

.field _nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

.field _offSrc:I

.field _pos:I

.field private _posTemp:I

.field _prev:Lorg/apache/xmlbeans/impl/store/Cur;

.field _prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

.field _ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

.field _selectionCount:I

.field _selectionFirst:I

.field _selectionLoc:I

.field _selectionN:I

.field _stackTop:I

.field _state:I

.field _tempFrame:I

.field _xobj:Lorg/apache/xmlbeans/impl/store/Xobj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 p1, -0x2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public static createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    return-object p0
.end method

.method public static createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;Z)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/store/DocumentXobj;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/DocumentXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :cond_2
    return-object p1
.end method

.method public static createElementXobj(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_0

    new-instance p2, Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/ElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->identifyElement(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_1
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    if-ne p2, v0, :cond_2

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapBodyXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapBodyXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_2
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPBodyElement;

    if-ne p2, v0, :cond_3

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapBodyElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapBodyElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_3
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;

    if-ne p2, v0, :cond_4

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapEnvelopeXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapEnvelopeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_4
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    if-ne p2, v0, :cond_5

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapHeaderXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapHeaderXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_5
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    if-ne p2, v0, :cond_6

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapHeaderElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapHeaderElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_6
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPFaultElement;

    if-ne p2, v0, :cond_7

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapFaultElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapFaultElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_7
    const-class v0, Lorg/apache/xmlbeans/impl/soap/Detail;

    if-ne p2, v0, :cond_8

    new-instance p2, Lorg/apache/xmlbeans/impl/store/DetailXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DetailXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_8
    const-class v0, Lorg/apache/xmlbeans/impl/soap/DetailEntry;

    if-ne p2, v0, :cond_9

    new-instance p2, Lorg/apache/xmlbeans/impl/store/DetailEntryXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/DetailEntryXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_9
    const-class v0, Lorg/apache/xmlbeans/impl/soap/SOAPFault;

    if-ne p2, v0, :cond_a

    new-instance p2, Lorg/apache/xmlbeans/impl/store/SoapFaultXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/SoapFaultXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object p2

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown SAAJ element class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    move-object p2, p1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpXobj(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private static dumpBookmarks(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V
    .locals 4

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p2, p1, :cond_0

    const-string v0, "*:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/XmlLineNumber;

    const-string v2, "]"

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/XmlLineNumber;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<line:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlLineNumber;->getLine()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<mark>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dumpCharNodes(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/CharNode;Ljava/lang/Object;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/TextNode;

    if-eqz v1, :cond_1

    const-string v1, "TEXT"

    goto :goto_1

    :cond_1
    const-string v1, "CDATA"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V
    .locals 7

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p3, v1, :cond_7

    const/16 v1, 0x24

    if-ne p3, v1, :cond_0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const-string v5, ">"

    const-string v6, "<#"

    if-ne v3, v4, :cond_6

    aget-char v2, v2, p2

    const/16 v3, 0x20

    const/16 v4, 0x22

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    const-string v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p3, v1

    goto/16 :goto_0

    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpCur(Ljava/io/PrintStream;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V
    .locals 1

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p3, p2, :cond_0

    const-string p3, "*:"

    invoke-virtual {p0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "<cur>"

    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpCurs(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "E:"

    invoke-static {p0, v1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCur(Ljava/io/PrintStream;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, p1, :cond_1

    const-string v1, "R:"

    invoke-static {p0, v1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCur(Ljava/io/PrintStream;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static dumpXobj(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;ILjava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "  "

    if-ne p1, p3, :cond_1

    const-string v1, "* "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_4

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    const-string v1, " )"

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, " Value( "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {p0, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-static {p0, v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCharNodes(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/CharNode;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v0, :cond_7

    const-string v0, " (USER)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " (VACANT)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, " After( "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {p0, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    invoke-static {p0, v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCharNodes(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/CharNode;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    invoke-static {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCurs(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    invoke-static {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpBookmarks(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    const-string v1, " ("

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_2
    if-eqz p1, :cond_c

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpXobj(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;ILjava/lang/Object;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_c
    return-void
.end method

.method private getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    return-object p0
.end method

.method private getDenormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p2

    .line 3
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    return-object p2
.end method

.method private getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getNormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p2

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    return-object p2
.end method

.method public static kindIsContainer(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static kindIsFinish(I)Z
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static kindName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< Unknown Kind ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") >>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PROCINST"

    return-object p0

    :cond_1
    const-string p0, "COMMENT"

    return-object p0

    :cond_2
    const-string p0, "ATTR"

    return-object p0

    :cond_3
    const-string p0, "ELEM"

    return-object p0

    :cond_4
    const-string p0, "ROOT"

    return-object p0

    :cond_5
    const-string p0, "TEXT"

    return-object p0
.end method

.method public static moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 4
    iget v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    .line 6
    :cond_0
    iget v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq v0, p0, :cond_2

    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    .line 9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    .line 10
    iget-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    if-eqz p1, :cond_4

    .line 11
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-eq v1, v0, :cond_4

    .line 12
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    .line 13
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    .line 14
    iget-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    .line 15
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParentRaw()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    :cond_7
    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    .line 21
    :cond_8
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    const/4 v1, 0x0

    if-lez v0, :cond_9

    .line 22
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posTemp()I

    move-result v3

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {p0, v0, v2, v3, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    .line 23
    :cond_9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->embedCurs()V

    move-object v0, p0

    :goto_2
    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 24
    :goto_3
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v3, :cond_a

    .line 25
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->getNormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_3

    .line 26
    :cond_a
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    if-eqz p1, :cond_b

    .line 27
    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 28
    :cond_b
    invoke-virtual {v0, p0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeXobj()V

    if-eqz p1, :cond_12

    .line 30
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 31
    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_4

    :cond_d
    move v3, v1

    .line 32
    :goto_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v4

    if-lez v4, :cond_f

    .line 33
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 34
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 35
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 36
    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v3, :cond_e

    move v1, v2

    .line 37
    :cond_e
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move v3, v1

    :cond_f
    if-eqz v3, :cond_10

    .line 38
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->appendXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_5

    .line 39
    :cond_10
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :goto_5
    if-lez v4, :cond_11

    .line 40
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    invoke-static {v0, v1, p0, v2, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    .line 41
    :cond_11
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :cond_12
    return-void
.end method

.method public static moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V
    .locals 11

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasAttrs()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    const-wide/16 v6, 0x1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    const/16 p1, 0x100

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->clearBit(I)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    .line 7
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    .line 8
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr p1, v6

    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextEnsureOccupancy()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 12
    invoke-virtual {p0, p1, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-eqz p1, :cond_9

    .line 14
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne p0, v1, :cond_6

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne v1, v5, :cond_6

    .line 15
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 16
    :goto_2
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->next(Z)Z

    return-void

    .line 17
    :cond_6
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v8, :cond_8

    .line 18
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 19
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    .line 20
    :goto_3
    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next(Z)Z

    .line 21
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtLastPush()Z

    move-result v0

    .line 22
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    if-eqz v0, :cond_9

    return-void

    .line 23
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextNoEnsureOccupancy()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 26
    invoke-virtual {v0, p1, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-eqz p1, :cond_a

    .line 28
    iget v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    goto :goto_5

    :cond_a
    move v0, v3

    .line 29
    :goto_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->embedCurs()V

    .line 30
    invoke-virtual {p0, p0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    move-object v8, v1

    move v9, v3

    :goto_6
    if-eqz v1, :cond_12

    .line 31
    iget-object v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v10, p0, :cond_d

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez p2, :cond_b

    .line 32
    iget-object v8, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_a

    :cond_b
    if-nez p1, :cond_c

    move-object v10, v4

    goto :goto_7

    .line 33
    :cond_c
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v10

    :goto_7
    invoke-virtual {v1, v10}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    .line 34
    :cond_d
    :goto_8
    iget-object v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v10, :cond_e

    .line 35
    invoke-virtual {v10, p0, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_8

    .line 36
    :cond_e
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    if-eqz p1, :cond_f

    .line 37
    iget-object v10, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    :cond_f
    if-nez v9, :cond_11

    .line 38
    iget-object v9, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    if-eqz v9, :cond_10

    goto :goto_9

    :cond_10
    move v9, v3

    goto :goto_a

    :cond_11
    :goto_9
    move v9, v2

    .line 39
    :goto_a
    invoke-virtual {v1, p0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    goto :goto_6

    .line 40
    :cond_12
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v9, :cond_13

    if-nez p1, :cond_13

    .line 41
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-object v4, p1

    .line 44
    :cond_13
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-nez v1, :cond_14

    .line 45
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    .line 46
    :cond_14
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr v9, v6

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    .line 47
    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v9, v6

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    if-eqz p1, :cond_15

    if-nez v0, :cond_15

    .line 48
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    .line 49
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr v9, v6

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    .line 50
    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v9, v6

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    .line 51
    :cond_15
    invoke-virtual {p0, v8, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz p1, :cond_1f

    .line 52
    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 53
    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_b

    :cond_16
    move v1, v3

    .line 54
    :goto_b
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v5

    if-lez v5, :cond_18

    .line 55
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 57
    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 58
    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v1, :cond_17

    move v3, v2

    .line 59
    :cond_17
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move v1, v3

    .line 60
    :cond_18
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v3, v8

    .line 61
    :goto_c
    iget-object v6, v3, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 62
    iget-object v3, v3, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_c

    .line 63
    :cond_19
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v6

    if-lez v5, :cond_1a

    .line 64
    iget-object v7, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v9, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v10

    invoke-static {v7, v9, v3, v10, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    .line 65
    :cond_1a
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextNoEnsureOccupancy()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 66
    iget v5, v6, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-lez v5, :cond_1b

    goto :goto_d

    .line 67
    :cond_1b
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    .line 69
    iget v5, v6, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    .line 70
    :goto_d
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v7

    invoke-static {v6, v2, v3, v7, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    goto :goto_e

    :cond_1c
    if-lez v5, :cond_1d

    .line 71
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v6

    invoke-static {v2, v3, p2, v6, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    :cond_1d
    :goto_e
    if-eqz v1, :cond_1e

    .line 72
    invoke-virtual {p0, v8, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->appendXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_f

    .line 73
    :cond_1e
    invoke-virtual {p0, v8, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V

    .line 74
    :goto_f
    invoke-virtual {p1, v8}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    .line 75
    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->prevChars(I)I

    :cond_1f
    if-eqz v4, :cond_20

    .line 76
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_20
    return-void
.end method

.method private selectionIndex(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->next(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->prev(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    return p0
.end method

.method private tempCur(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :cond_0
    return-object v0
.end method

.method private static transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V
    .locals 9

    invoke-virtual {p0, p1, p4}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsHelper(II)Ljava/lang/Object;

    move-result-object v5

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v6, v3, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iget v7, v3, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    const/4 v8, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertCharsHelper(ILjava/lang/Object;IIZ)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeCharsHelper(IILorg/apache/xmlbeans/impl/store/Xobj;IZZ)V

    return-void
.end method

.method public static updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p2

    move v2, v0

    :goto_0
    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    iget v3, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    if-le v3, p3, :cond_0

    iput p3, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    :cond_0
    iput v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget v3, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    add-int/2addr v2, v3

    sub-int/2addr p3, v3

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_1
    if-gtz p3, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget p0, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    if-eqz p0, :cond_2

    iput v0, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    :cond_2
    iput v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/TextNode;

    move-result-object p0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/CharNode;->setDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->appendNode(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object p2

    :cond_4
    return-object p2
.end method


# virtual methods
.method public addToSelection()V
    .locals 4

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    .line 6
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    .line 3
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public cchLeft()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchLeft(I)I

    move-result p0

    return p0
.end method

.method public cchRight()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result p0

    return p0
.end method

.method public clearSelection()V
    .locals 1

    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->removeFirstSelection()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public comparePosition(Lorg/apache/xmlbeans/impl/store/Cur;)I
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p0

    sub-int/2addr p0, v3

    :cond_1
    iget-object v4, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne p1, v1, :cond_2

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    sub-int/2addr p1, v3

    :cond_2
    if-ne v0, v4, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_3
    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-eqz v5, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v4, :cond_5

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p0

    sub-int/2addr p0, v3

    if-ge p1, p0, :cond_4

    move v1, v3

    :cond_4
    return v1

    :cond_5
    iget-object v5, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_6
    iget-object p1, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_1
    if-eqz p1, :cond_9

    add-int/lit8 v6, v6, 0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    sub-int/2addr p1, v3

    if-ge p0, p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    return v1

    :cond_8
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1

    :cond_9
    :goto_3
    if-le v7, v6, :cond_a

    add-int/lit8 v7, v7, -0x1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_3

    :cond_a
    :goto_4
    if-le v6, v7, :cond_b

    add-int/lit8 v6, v6, -0x1

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_4

    :cond_b
    if-nez v6, :cond_c

    return v2

    :cond_c
    :goto_5
    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq p0, p1, :cond_e

    if-nez p0, :cond_d

    return v2

    :cond_d
    move-object v0, p0

    move-object v4, p1

    goto :goto_5

    :cond_e
    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p0, :cond_13

    iget-object p0, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p0, :cond_f

    goto :goto_7

    :cond_f
    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p0, :cond_12

    iget-object p0, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p0, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v0, :cond_11

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, v4, :cond_10

    return v3

    :cond_11
    return v1

    :cond_12
    :goto_6
    return v3

    :cond_13
    :goto_7
    return v1
.end method

.method public contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public copyNode(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->copyNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :goto_0
    return-void
.end method

.method public createAttr(Ljavax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/AttrXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/AttrXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createComment()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CommentXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/CommentXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createDomDocFragRoot()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createDomDocumentRoot()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createElement(Ljavax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public createElement(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->createElementXobj(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createProcinst(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/ProcInstXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/ProcInstXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createRoot()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    return-void
.end method

.method public dump()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_0

    const-string p0, "Unpositioned xptr"

    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    return-void
.end method

.method public firstBookmarkInChars(Ljava/lang/Object;I)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    move v2, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_key:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Bookmark;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v1, :cond_0

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_1

    :cond_0
    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    sub-int/2addr v2, v3

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public firstBookmarkInCharsLeft(Ljava/lang/Object;I)I
    .locals 10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    sub-int/2addr p0, p2

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    move v9, v1

    move-object v8, v2

    :goto_0
    if-eqz v8, :cond_2

    iget-object v2, v8, Lorg/apache/xmlbeans/impl/store/Bookmark;->_key:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    iget-object v4, v8, Lorg/apache/xmlbeans/impl/store/Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v5, v8, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    const/4 v7, 0x0

    move-object v2, v0

    move v3, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v9, v1, :cond_0

    iget v2, v8, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    sub-int/2addr v2, p0

    if-ge v2, v9, :cond_1

    :cond_0
    iget v2, v8, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    sub-int/2addr v2, p0

    move v9, v2

    :cond_1
    iget-object v8, v8, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_2
    move v1, v9

    :cond_3
    return v1
.end method

.method public getAttrValue(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toAttr(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object p1
.end method

.method public getBookmark(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_key:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_value:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_0
    return-object p0
.end method

.method public getChars(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1, p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getChars(IILorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCharsAsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharsAsString(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsAsString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object p0

    :goto_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    return-object p0
.end method

.method public getFirstChars()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getFirstChars()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getParent()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    return-object p0
.end method

.method public getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-nez p1, :cond_3

    .line 4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    .line 7
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 8
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    .line 10
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p0
.end method

.method public getParentNoRoot()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p0
.end method

.method public getParentRaw()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    return-object p0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueAsString(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlnsPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlnsUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getXsiTypeName()Ljavax/xml/namespace/QName;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXsiTypeName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public hasAttrs()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasAttrs()Z

    move-result p0

    return p0
.end method

.method public hasChildren()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result p0

    return p0
.end method

.method public hasParent()Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public hasText()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextEnsureOccupancy()Z

    move-result p0

    return p0
.end method

.method public inChars(Lorg/apache/xmlbeans/impl/store/Bookmark;IZ)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z

    move-result p0

    return p0
.end method

.method public inChars(Lorg/apache/xmlbeans/impl/store/Cur;IZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z

    move-result p0

    return p0
.end method

.method public insertChars(Ljava/lang/Object;II)V
    .locals 8

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    const/4 v6, 0x1

    move-object v1, v0

    move v2, v7

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertCharsHelper(ILjava/lang/Object;IIZ)V

    invoke-virtual {p0, v0, v7}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    return-void
.end method

.method public insertString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public isAtEndOf(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p1, :cond_0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAtEndOfLastPush()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->isAtEndOf(ILorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public isAtLastPush()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->isSamePos(ILorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public isAttr()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComment()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainer()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainerOrFinish()Z
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public isDomDocRoot()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    instance-of p0, p0, Lorg/w3c/dom/Document;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDomFragRoot()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    instance-of p0, p0, Lorg/w3c/dom/DocumentFragment;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isElem()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnd()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEndRoot()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinish()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInSameTree(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isInSameTree(Lorg/apache/xmlbeans/impl/store/Xobj;)Z

    move-result p0

    return p0
.end method

.method public isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z

    move-result p0

    return p0
.end method

.method public isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z

    move-result p0

    return p0
.end method

.method public isNode()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormal()Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_2

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public isNormalAttr()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormalAttr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isPositioned()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcinst()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoot()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isText()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextCData()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const-class v1, Lorg/apache/xmlbeans/CDataBookmark;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasBookmark(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public isUserNode()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isXmlns()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isXmlns()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kind()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    neg-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    if-nez p1, :cond_0

    iput-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_3
    :goto_1
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    return-object p1
.end method

.method public moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;
    .locals 9

    if-gez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v7

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    if-nez p1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Bookmark;IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p0

    :cond_2
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Cur;IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    iput v8, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return-object v7

    :cond_4
    invoke-virtual {p1, v7, v8, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    if-nez p1, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeCharsHelper(IILorg/apache/xmlbeans/impl/store/Xobj;IZZ)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v4, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeCharsHelper(IILorg/apache/xmlbeans/impl/store/Xobj;IZZ)V

    :goto_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iput v8, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return-object v7
.end method

.method public moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    .line 3
    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-void
.end method

.method public moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    return-void
.end method

.method public moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void
.end method

.method public moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToNoCheck(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void
.end method

.method public moveToCharNode(Lorg/apache/xmlbeans/impl/store/CharNode;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/CharNode;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_0
    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void

    :cond_0
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/CharNode;I)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_1
    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void

    :cond_2
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :goto_0
    return-void
.end method

.method public moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/xmlbeans/impl/store/SoapPartDom;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/SoapPartDom;->_docXobj:Lorg/apache/xmlbeans/impl/store/SoapPartDocXobj;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public moveToNoCheck(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq p1, v0, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    return-void
.end method

.method public moveToSelection(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->moveTo(ILorg/apache/xmlbeans/impl/store/Cur;)V

    return-void
.end method

.method public final namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Z
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 3
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    .line 4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v2

    goto/16 :goto_3

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 6
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_1
    return v5

    :cond_2
    if-lez v1, :cond_4

    .line 7
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_3

    :goto_0
    move-object v0, v1

    :goto_1
    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    .line 9
    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-nez v1, :cond_8

    .line 10
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_8

    .line 11
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    .line 13
    :goto_2
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    .line 15
    :cond_5
    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-lez v2, :cond_6

    .line 16
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    move v2, v0

    move-object v0, v1

    goto :goto_3

    .line 17
    :cond_6
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_8

    goto :goto_0

    .line 18
    :cond_7
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1

    :cond_8
    move v2, v3

    .line 19
    :cond_9
    :goto_3
    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v3
.end method

.method public next(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public nextChars(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    add-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    return v0
.end method

.method public nextWithAttrs()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result p0

    return p0
.end method

.method public peekUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    return-object p0
.end method

.method public pop()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->moveTo(ILorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v0, v1, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 p0, 0x1

    return p0
.end method

.method public popButStay()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v1, v0, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    :cond_0
    return-void
.end method

.method public final prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Xobj;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public prev()Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-gtz v2, :cond_3

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-lez v2, :cond_7

    goto :goto_0

    :cond_6
    if-le v2, v4, :cond_7

    :goto_0
    move v1, v4

    :cond_7
    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v4
.end method

.method public prevChars(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :cond_2
    return p1
.end method

.method public prevWithAttrs()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    return v1
.end method

.method public push()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v1, v2, v2, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    return-void
.end method

.method public release()V
    .locals 5

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v4, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    aput-object v3, v4, v0

    goto :goto_0

    :cond_1
    iput-object v3, v4, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-eqz v0, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->clearSelection()V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_4
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    const/16 v4, 0x10

    if-ge v1, v4, :cond_5

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    :cond_6
    :goto_2
    return-void
.end method

.method public removeAttr(Ljavax/xml/namespace/QName;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeAttr(Ljavax/xml/namespace/QName;)Z

    move-result p0

    return p0
.end method

.method public removeFirstSelection()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionIndex(I)I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public removeFollowingAttrs()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void
.end method

.method public selectionCount()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return p0
.end method

.method public setAttrValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->setAttr(Ljavax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    return-void
.end method

.method public setAttrValueAsQName(Ljavax/xml/namespace/QName;)V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Ljavax/xml/namespace/QName;

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeAttr(Ljavax/xml/namespace/QName;)Z

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toAttr(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->removeFollowingAttrs()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Ljavax/xml/namespace/QName;)V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setValueAsQName(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    return-void
.end method

.method public final setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Bookmark;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->setBookmark(ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    move-result-object p0

    return-object p0
.end method

.method public setCharNodes(Lorg/apache/xmlbeans/impl/store/CharNode;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    if-lt p0, v1, :cond_0

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_0
    if-eqz p1, :cond_1

    move-object p0, v0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->setDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setSubstitution(Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->peekUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_schema_type()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-ne v1, p2, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Ljavax/xml/namespace/QName;)V

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->removeAttr(Ljavax/xml/namespace/QName;)Z

    return-void

    :cond_3
    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eq v0, p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValueAsQName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-void
.end method

.method public setType(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->peekUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_schema_type()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setStableType(Lorg/apache/xmlbeans/SchemaType;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_attribute_type(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    if-ne p0, p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set type of attribute to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void

    .line 10
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 11
    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->removeAttr(Ljavax/xml/namespace/QName;)Z

    return-void

    .line 12
    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_7

    if-nez p2, :cond_6

    return-void

    .line 13
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t set type of element, type is un-named"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eq v0, p1, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 15
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t set type of element, invalid type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_9
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValueAsQName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    return-void
.end method

.method public setValueAsQName(Ljavax/xml/namespace/QName;)V
    .locals 3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final setXsiType(Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValueAsQName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public skip()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public skipWithAttrs()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    return v1
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object v0
.end method

.method public toAttr(Ljavax/xml/namespace/QName;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toEnd()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void
.end method

.method public toFirstAttr()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->firstAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toFirstChild()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0
.end method

.method public toLastAttr()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public toLastChild()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toNextAttr()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->nextAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toNextSibling()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent(Z)Z

    move-result p0

    return p0
.end method

.method public toParent(Z)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0
.end method

.method public toParentRaw()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent(Z)Z

    move-result p0

    return p0
.end method

.method public toPrevAttr()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastAttr()Z

    move-result p0

    return p0
.end method

.method public toRoot()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p1
.end method
