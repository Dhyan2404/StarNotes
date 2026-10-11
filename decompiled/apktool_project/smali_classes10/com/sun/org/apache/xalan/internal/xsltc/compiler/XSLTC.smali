.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTEARRAY_AND_FILE_OUTPUT:I = 0x4

.field public static final BYTEARRAY_AND_JAR_OUTPUT:I = 0x5

.field public static final BYTEARRAY_OUTPUT:I = 0x2

.field public static final CLASSLOADER_OUTPUT:I = 0x3

.field public static final FILE_OUTPUT:I = 0x0

.field public static final JAR_OUTPUT:I = 0x1


# instance fields
.field private _attributeSetSerial:I

.field private _attributes:Ljava/util/Hashtable;

.field private _bcelClasses:Ljava/util/Vector;

.field private _callsNodeset:Z

.field private _className:Ljava/lang/String;

.field private _classes:Ljava/util/Vector;

.field private _debug:Z

.field private _destDir:Ljava/io/File;

.field private _elements:Ljava/util/Hashtable;

.field private _hasIdCall:Z

.field private _helperClassSerial:I

.field private _isSecureProcessing:Z

.field private _jarFileName:Ljava/lang/String;

.field private _loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

.field private _modeSerial:I

.field private _multiDocument:Z

.field private _namesIndex:Ljava/util/Vector;

.field private _namespaceIndex:Ljava/util/Vector;

.field private _namespacePrefixes:Ljava/util/Hashtable;

.field private _namespaces:Ljava/util/Hashtable;

.field private _nextGType:I

.field private _nextNSType:I

.field private _numberFieldIndexes:[I

.field private _outputType:I

.field private _packageName:Ljava/lang/String;

.field private _parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

.field private _reader:Lorg/xml/sax/XMLReader;

.field private _stepPatternSerial:I

.field private _stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field private _stylesheetSerial:I

.field private _templateInlining:Z

.field private m_characterData:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_modeSerial:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheetSerial:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stepPatternSerial:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_helperClassSerial:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributeSetSerial:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_debug:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_jarFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_destDir:Ljava/io/File;

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_callsNodeset:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_multiDocument:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_hasIdCall:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_templateInlining:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_isSecureProcessing:Z

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    return-void
.end method

.method private classFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2e

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private entryName(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    sget-char p1, Ljava/io/File;->separatorChar:C

    const/16 v0, 0x2f

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOutputFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_destDir:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_destDir:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->classFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->classFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private reset()V
    .locals 3

    const/16 v0, 0xe

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_elements:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespaces:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextNSType:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespaceIndex:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespacePrefixes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->init()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_modeSerial:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheetSerial:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stepPatternSerial:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_helperClassSerial:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributeSetSerial:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_multiDocument:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_hasIdCall:Z

    const/4 v0, -0x1

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_numberFieldIndexes:[I

    return-void
.end method


# virtual methods
.method public addCharacterData(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->m_characterData:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->m_characterData:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->m_characterData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x5555

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->m_characterData:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return p0
.end method

.method public callsNodeset()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_callsNodeset:Z

    return p0
.end method

.method public compile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 1

    .line 11
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 12
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Lorg/xml/sax/InputSource;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/net/URL;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Lorg/xml/sax/InputSource;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    const/4 p0, 0x0

    return p0
.end method

.method public compile(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 7
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Lorg/xml/sax/InputSource;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    const/4 p0, 0x0

    return p0
.end method

.method public compile(Ljava/util/Vector;)Z
    .locals 4

    .line 48
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of v0, p1, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Ljava/net/URL;)Z

    move-result p0

    return p0

    :cond_1
    return v2

    .line 52
    :cond_2
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 53
    :cond_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v3, v0, Ljava/net/URL;

    if-eqz v3, :cond_3

    .line 57
    check-cast v0, Ljava/net/URL;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method public compile(Lorg/xml/sax/InputSource;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->reset()V

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    if-nez v3, :cond_4

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const-string p2, ""

    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 19
    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    .line 20
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    const-string p2, "GregorSamsa"

    .line 21
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    .line 22
    :cond_4
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    if-nez p2, :cond_5

    .line 23
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parse(Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    goto :goto_2

    .line 24
    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {v3, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parse(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    .line 25
    :goto_2
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result p2

    if-nez p2, :cond_6

    if-eqz p1, :cond_6

    .line 26
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->makeStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    .line 27
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSourceLoader(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;)V

    .line 28
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSystemId(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setParentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    .line 30
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_templateInlining:Z

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setTemplateInlining(Z)V

    .line 31
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    .line 32
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->createAST(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz p1, :cond_8

    .line 34
    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_callsNodeset:Z

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setCallsNodeset(Z)V

    .line 35
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_multiDocument:Z

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setMultiDocument(Z)V

    .line 36
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_hasIdCall:Z

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setHasIdCall(Z)V

    .line 37
    const-class p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->translate()V

    .line 39
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 40
    :try_start_3
    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_debug:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_7
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :cond_8
    :goto_3
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    .line 45
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 46
    :goto_4
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    .line 47
    throw p1
.end method

.method public compile(Ljava/lang/String;Lorg/xml/sax/InputSource;)[[B
    .locals 1

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Ljava/lang/String;Lorg/xml/sax/InputSource;I)[[B

    move-result-object p0

    return-object p0
.end method

.method public compile(Ljava/lang/String;Lorg/xml/sax/InputSource;I)[[B
    .locals 0

    .line 58
    iput p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->compile(Lorg/xml/sax/InputSource;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getBytecodes()[[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public debug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_debug:Z

    return p0
.end method

.method public dumpClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_classes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_bcelClasses:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_bcelClasses:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public getBytecodes()[[B
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_classes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_classes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCharacterData(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->m_characterData:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharacterDataCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->m_characterData:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getErrors()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getErrors()Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public getHelperClassName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_helperClassSerial:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_helperClassSerial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJarFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_jarFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamesIndex()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    return-object p0
.end method

.method public getNamespaceIndex()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespaceIndex:Ljava/util/Vector;

    return-object p0
.end method

.method public getNumberFieldIndexes()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_numberFieldIndexes:[I

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    return-object p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public getWarnings()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getWarnings()Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public hasIdCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_hasIdCall:Z

    return p0
.end method

.method public init()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_classes:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_bcelClasses:Ljava/util/Vector;

    return-void
.end method

.method public isMultiDocument()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_multiDocument:Z

    return p0
.end method

.method public isSecureProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_isSecureProcessing:Z

    return p0
.end method

.method public nextAttributeSetSerial()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributeSetSerial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributeSetSerial:I

    return v0
.end method

.method public nextHelperClassSerial()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_helperClassSerial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_helperClassSerial:I

    return v0
.end method

.method public nextModeSerial()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_modeSerial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_modeSerial:I

    return v0
.end method

.method public nextStepPatternSerial()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stepPatternSerial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stepPatternSerial:I

    return v0
.end method

.method public nextStylesheetSerial()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheetSerial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheetSerial:I

    return v0
.end method

.method public outputToJar()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v3, "1.2"

    invoke-virtual {v1, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_bcelClasses:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/jar/Attributes$Name;

    const-string v5, "Date"

    invoke-direct {v4, v5}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const-string v6, ".class"

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/jar/Attributes;

    invoke-direct {v7}, Ljava/util/jar/Attributes;-><init>()V

    invoke-virtual {v7, v4, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_destDir:Ljava/io/File;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_jarFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_bcelClasses:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/jar/JarEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->dump(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public printErrors()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->printErrors()V

    return-void
.end method

.method public printWarnings()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->printWarnings()V

    return-void
.end method

.method public registerAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)I
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_attributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->registerNamespace(Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public registerElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)I
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_elements:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_elements:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->registerNamespace(Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public registerNamespace(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextNSType:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextNSType:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespaceIndex:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public registerNamespacePrefix(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespacePrefixes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_nextGType:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namespacePrefixes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_namesIndex:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setCallsNodeset(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setMultiDocument(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_callsNodeset:Z

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->noExtName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_debug:Z

    return-void
.end method

.method public setDestDirectory(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_destDir:Ljava/io/File;

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_destDir:Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method

.method public setHasIdCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_hasIdCall:Z

    return-void
.end method

.method public setJarFileName(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_jarFileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_jarFileName:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    return-void
.end method

.method public setMultiDocument(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_multiDocument:Z

    return-void
.end method

.method public setOutputType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_outputType:I

    return-void
.end method

.method public setPIParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setPIParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_className:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setClassName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_isSecureProcessing:Z

    return-void
.end method

.method public setSourceLoader(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    return-void
.end method

.method public setStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    :cond_0
    return-void
.end method

.method public setTemplateInlining(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_templateInlining:Z

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->_reader:Lorg/xml/sax/XMLReader;

    return-void
.end method
