.class public Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;


# static fields
.field private static final noparms:[Ljava/lang/Object;

.field private static final parmsfalse:[Ljava/lang/Object;


# instance fields
.field fConfigInputSourceCtor:Ljava/lang/reflect/Constructor;

.field fConfigParse:Ljava/lang/reflect/Method;

.field fConfigSetByteStream:Ljava/lang/reflect/Method;

.field fConfigSetCharStream:Ljava/lang/reflect/Method;

.field fConfigSetEncoding:Ljava/lang/reflect/Method;

.field fConfigSetInput:Ljava/lang/reflect/Method;

.field fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

.field private fParseInProgress:Z

.field fParseSome:Ljava/lang/reflect/Method;

.field fParseSomeSetup:Ljava/lang/reflect/Method;

.field fPullParserConfig:Ljava/lang/Object;

.field fReset:Ljava/lang/reflect/Method;

.field fSetInputSource:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->noparms:[Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->parmsfalse:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSomeSetup:Ljava/lang/reflect/Method;

    .line 3
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSome:Ljava/lang/reflect/Method;

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fPullParserConfig:Ljava/lang/Object;

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetInput:Ljava/lang/reflect/Method;

    .line 6
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigParse:Ljava/lang/reflect/Method;

    .line 7
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fSetInputSource:Ljava/lang/reflect/Method;

    .line 8
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigInputSourceCtor:Ljava/lang/reflect/Constructor;

    .line 9
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetByteStream:Ljava/lang/reflect/Method;

    .line 10
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetCharStream:Ljava/lang/reflect/Method;

    .line 11
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetEncoding:Ljava/lang/reflect/Method;

    .line 12
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fReset:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseInProgress:Z

    :try_start_0
    const-string v2, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    .line 14
    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v2, v3, v1

    .line 15
    const-class v2, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "com.sun.org.apache.xerces.internal.parsers.StandardParserConfiguration"

    .line 16
    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fPullParserConfig:Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v1

    .line 18
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    const-string v2, "com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource"

    .line 19
    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v1

    const-string v6, "setInputSource"

    .line 20
    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetInput:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v1

    aput-object v0, v5, v4

    const/4 v6, 0x2

    aput-object v0, v5, v6

    .line 21
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigInputSourceCtor:Ljava/lang/reflect/Constructor;

    new-array v5, v4, [Ljava/lang/Class;

    .line 22
    const-class v6, Ljava/io/InputStream;

    aput-object v6, v5, v1

    const-string v6, "setByteStream"

    .line 23
    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetByteStream:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    .line 24
    const-class v6, Ljava/io/Reader;

    aput-object v6, v5, v1

    const-string v6, "setCharacterStream"

    .line 25
    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetCharStream:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v1

    const-string v0, "setEncoding"

    .line 26
    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetEncoding:Ljava/lang/reflect/Method;

    new-array v0, v4, [Ljava/lang/Class;

    .line 27
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v2, "parse"

    .line 28
    invoke-virtual {v3, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigParse:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Class;

    .line 29
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reset"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fReset:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>()V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;)V

    .line 31
    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSomeSetup:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSomeSetup:Ljava/lang/reflect/Method;

    .line 32
    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSome:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSome:Ljava/lang/reflect/Method;

    .line 33
    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSomeSetup:Ljava/lang/reflect/Method;

    .line 36
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSome:Ljava/lang/reflect/Method;

    .line 37
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fPullParserConfig:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetInput:Ljava/lang/reflect/Method;

    .line 39
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigParse:Ljava/lang/reflect/Method;

    .line 40
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fSetInputSource:Ljava/lang/reflect/Method;

    .line 41
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigInputSourceCtor:Ljava/lang/reflect/Constructor;

    .line 42
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetByteStream:Ljava/lang/reflect/Method;

    .line 43
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetCharStream:Ljava/lang/reflect/Method;

    .line 44
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetEncoding:Ljava/lang/reflect/Method;

    .line 45
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fReset:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseInProgress:Z

    .line 47
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 49
    const-class v2, Lorg/xml/sax/InputSource;

    aput-object v2, v1, v0

    const-string v2, "parseSomeSetup"

    .line 50
    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSomeSetup:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "parseSome"

    .line 51
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSome:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Starting..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/CoroutineManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/CoroutineManager;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ERROR: Couldn\'t allocate coroutine number.\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->createIncrementalSAXSource()Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lorg/xml/sax/InputSource;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V

    invoke-interface {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    move-result-object v4

    move v5, v3

    :goto_1
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\nSome parsing successful, trying more.\n"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    array-length v6, p0

    if-ge v4, v6, :cond_1

    const-string v6, "!"

    aget-object v7, p0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    move v2, v4

    :cond_1
    invoke-interface {v0, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\nParser ended (EOF or on request).\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\nUNEXPECTED: Parser says shut down prematurely.\n"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    instance-of v5, v4, Ljava/lang/Exception;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    check-cast v4, Ljava/lang/Exception;

    invoke-direct {v5, v4}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static createIncrementalSAXSource()Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 3
    new-instance v1, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-object v0
.end method

.method public static createIncrementalSAXSource(Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;)Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;
    .locals 1

    .line 4
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-object v0
.end method

.method private parseSome()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetInput:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigParse:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fPullParserConfig:Ljava/lang/Object;

    sget-object v1, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->parmsfalse:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSome:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    sget-object v1, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->noparms:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private parseSomeSetup(Lorg/xml/sax/InputSource;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetInput:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigInputSourceCtor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetByteStream:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetCharStream:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetEncoding:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fReset:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-virtual {v2, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v0, v1, v3

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fConfigSetInput:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fPullParserConfig:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->parseSome()Z

    move-result p0

    return p0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseSomeSetup:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deliverMoreNodes(Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseInProgress:Z

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->parseSome()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    move-object p0, p1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    return-object p0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startParse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fIncrementalParser:Lcom/sun/org/apache/xerces/internal/parsers/SAXParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->fParseInProgress:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Xerces;->parseSomeSetup(Lorg/xml/sax/InputSource;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_COULD_NOT_INIT_PARSER"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_STARTPARSE_WHILE_PARSING"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_STARTPARSE_NEEDS_SAXPARSER"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
