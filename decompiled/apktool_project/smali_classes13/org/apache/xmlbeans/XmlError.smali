.class public Lorg/apache/xmlbeans/XmlError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SEVERITY_ERROR:I = 0x0

.field public static final SEVERITY_INFO:I = 0x2

.field public static final SEVERITY_WARNING:I = 0x1

.field private static final _bundle:Ljava/util/ResourceBundle;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _code:Ljava/lang/String;

.field private final _column:I

.field private transient _cursor:Lorg/apache/xmlbeans/XmlCursor;

.field private final _line:I

.field private final _message:Ljava/lang/String;

.field private _offset:I

.field private final _severity:I

.field private final _source:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.apache.xmlbeans.message"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlError;->_bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/apache/xmlbeans/XmlError;->_message:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/apache/xmlbeans/XmlError;->_code:Ljava/lang/String;

    .line 14
    iput p3, p0, Lorg/apache/xmlbeans/XmlError;->_severity:I

    .line 15
    iput-object p4, p0, Lorg/apache/xmlbeans/XmlError;->_source:Ljava/lang/String;

    .line 16
    iput p5, p0, Lorg/apache/xmlbeans/XmlError;->_line:I

    .line 17
    iput p6, p0, Lorg/apache/xmlbeans/XmlError;->_column:I

    .line 18
    iput p7, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    .line 19
    iput-object p8, p0, Lorg/apache/xmlbeans/XmlError;->_cursor:Lorg/apache/xmlbeans/XmlCursor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjavax/xml/stream/Location;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    if-eqz p4, :cond_0

    .line 44
    invoke-interface {p4}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    .line 45
    invoke-interface {p4}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    .line 46
    invoke-interface {p4}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 47
    invoke-interface {p4}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v1, v0

    .line 48
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/XmlError;->_message:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/apache/xmlbeans/XmlError;->_code:Ljava/lang/String;

    .line 50
    iput p3, p0, Lorg/apache/xmlbeans/XmlError;->_severity:I

    .line 51
    iput-object v2, p0, Lorg/apache/xmlbeans/XmlError;->_source:Ljava/lang/String;

    .line 52
    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_line:I

    .line 53
    iput v1, p0, Lorg/apache/xmlbeans/XmlError;->_column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xmlbeans/XmlCursor;)V
    .locals 5

    .line 21
    const-class v0, Lorg/apache/xmlbeans/XmlLineNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    if-eqz p4, :cond_3

    .line 23
    invoke-interface {p4}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-interface {p4}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 25
    :try_start_0
    invoke-interface {v3, v0}, Lorg/apache/xmlbeans/XmlCursor;->getBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlLineNumber;

    if-nez v4, :cond_0

    .line 26
    invoke-interface {v3, v0}, Lorg/apache/xmlbeans/XmlCursor;->toPrevBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/xmlbeans/XmlLineNumber;

    :cond_0
    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {v4}, Lorg/apache/xmlbeans/XmlLineNumber;->getLine()I

    move-result v1

    .line 28
    invoke-virtual {v4}, Lorg/apache/xmlbeans/XmlLineNumber;->getColumn()I

    move-result v0

    .line 29
    invoke-virtual {v4}, Lorg/apache/xmlbeans/XmlLineNumber;->getOffset()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move v0, v1

    move v4, v0

    .line 30
    :goto_0
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_2

    .line 32
    :try_start_2
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    const/4 v2, 0x0

    move v0, v1

    move v4, v0

    .line 33
    :goto_2
    iput-object p1, p0, Lorg/apache/xmlbeans/XmlError;->_message:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/apache/xmlbeans/XmlError;->_code:Ljava/lang/String;

    .line 35
    iput p3, p0, Lorg/apache/xmlbeans/XmlError;->_severity:I

    .line 36
    iput-object v2, p0, Lorg/apache/xmlbeans/XmlError;->_source:Ljava/lang/String;

    .line 37
    iput v1, p0, Lorg/apache/xmlbeans/XmlError;->_line:I

    .line 38
    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_column:I

    .line 39
    iput v4, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    .line 40
    iput-object p4, p0, Lorg/apache/xmlbeans/XmlError;->_cursor:Lorg/apache/xmlbeans/XmlCursor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V
    .locals 9

    .line 20
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/XmlError;->formattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;ILjavax/xml/stream/Location;)V
    .locals 0

    .line 54
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/XmlError;->formattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjavax/xml/stream/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlCursor;)V
    .locals 0

    .line 41
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/XmlError;->formattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3, p4}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xmlbeans/XmlCursor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlError;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    .line 3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlError;->_message:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlError;->_code:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getSeverity()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_severity:I

    .line 6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getSourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlError;->_source:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getLine()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_line:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getColumn()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_column:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getCursorLocation()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/XmlError;->_cursor:Lorg/apache/xmlbeans/XmlCursor;

    return-void
.end method

.method public static forCursor(Ljava/lang/String;ILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/xmlbeans/XmlError;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xmlbeans/XmlCursor;)V

    return-object v0
.end method

.method public static forCursor(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;ILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forCursor(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/xmlbeans/XmlError;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlCursor;)V

    return-object v0
.end method

.method public static forCursor(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forLocation(Ljava/lang/String;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;
    .locals 10

    .line 5
    new-instance v9, Lorg/apache/xmlbeans/XmlError;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V

    return-object v9
.end method

.method public static forLocation(Ljava/lang/String;Ljava/lang/String;III)Lorg/apache/xmlbeans/XmlError;
    .locals 10

    .line 3
    new-instance v9, Lorg/apache/xmlbeans/XmlError;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V

    return-object v9
.end method

.method public static forLocation(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)Lorg/apache/xmlbeans/XmlError;
    .locals 10

    .line 1
    new-instance v9, Lorg/apache/xmlbeans/XmlError;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-interface {p2}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v5

    invoke-interface {p2}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V

    return-object v9
.end method

.method public static forLocation(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;
    .locals 10

    .line 4
    new-instance v9, Lorg/apache/xmlbeans/XmlError;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V

    return-object v9
.end method

.method public static forLocationAndCursor(Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;
    .locals 10

    new-instance v9, Lorg/apache/xmlbeans/XmlError;

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/xmlbeans/XmlError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/apache/xmlbeans/XmlCursor;)V

    return-object v9
.end method

.method public static forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/XmlError;->forSource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlError;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lorg/apache/xmlbeans/XmlError;->forSource(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forMessage(Ljava/lang/String;[Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lorg/apache/xmlbeans/XmlError;->forSource(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forObject(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;
    .locals 0

    if-nez p2, :cond_0

    .line 3
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;ILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forObject(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;
    .locals 0

    if-nez p3, :cond_0

    .line 6
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;[Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-interface {p3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p3

    .line 8
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forObject(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;[Ljava/lang/Object;ILorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forSource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/xmlbeans/XmlError;
    .locals 6

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 2
    invoke-static/range {v0 .. v5}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forSource(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static forSource(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;)Lorg/apache/xmlbeans/XmlError;
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 3
    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    return-object p0
.end method

.method public static formattedFileName(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :catch_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p0

    const-string v1, "file"

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5

    :goto_1
    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_5
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formattedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/MessageFormat;

    sget-object v1, Lorg/apache/xmlbeans/XmlError;->_bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/util/MissingResourceException;

    if-eqz p1, :cond_1

    const-string p1, "message.missing.resource"

    goto :goto_0

    :cond_1
    const-string p1, "message.pattern.invalid"

    :goto_0
    new-instance v0, Ljava/text/MessageFormat;

    sget-object v1, Lorg/apache/xmlbeans/XmlError;->_bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static severityAsString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "info"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown severity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "warning"

    return-object p0

    :cond_2
    const-string p0, "error"

    return-object p0
.end method


# virtual methods
.method public getColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/XmlError;->_column:I

    return p0
.end method

.method public getCursorLocation()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/XmlCursor;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlError;->getLocation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlError;->_code:Ljava/lang/String;

    return-object p0
.end method

.method public getLine()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/XmlError;->_line:I

    return p0
.end method

.method public getLocation(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/XmlCursor;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlError;->_cursor:Lorg/apache/xmlbeans/XmlCursor;

    return-object p0

    :cond_0
    const-class v0, Lorg/apache/xmlbeans/XmlObject;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlError;->_cursor:Lorg/apache/xmlbeans/XmlCursor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlError;->_message:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectLocation()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlError;->getLocation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/XmlError;->_offset:I

    return p0
.end method

.method public getSeverity()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/XmlError;->_severity:I

    return p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlError;->_source:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlError;->toString(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/XmlError;->formattedFileName(Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getLine()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v1, 0x3a

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getColumn()I

    move-result p1

    if-lez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getColumn()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, " "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getSeverity()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "warning: "

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p1, "error: "

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "<Unspecified message>"

    .line 19
    :cond_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
