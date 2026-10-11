.class final Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamSaver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _closed:Z

.field private final _converter:Ljava/io/OutputStreamWriter;

.field private final _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private final _outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

.field private final _textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_closed:Z

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;Lorg/apache/xmlbeans/impl/store/Saver$1;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v0, v3

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "UTF8"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_converter:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown encoding: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->ensure(I)I

    move-result p0

    return p0
.end method

.method private checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_closed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ensure(I)I
    .locals 3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->getAvailable()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_converter:Ljava/io/OutputStreamWriter;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->write(Ljava/io/Writer;I)I

    move-result v0

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->getAvailable()I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->getAvailable()I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;[BII)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->lambda$read$0([BII)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->lambda$available$1()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$available$1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->ensure(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$read$0([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read([BII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public available()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/h0;

    invoke-direct {v1, p0}, Lorg/apache/xmlbeans/impl/store/h0;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->access$000(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_closed:Z

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->checkClosed()V

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 6
    throw v0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    .line 8
    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 11
    throw v1

    :catchall_2
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->checkClosed()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 14
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 15
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/g0;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/g0;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;[BII)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->access$000(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;)I

    move-result p0

    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Offset is not within buf"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "buf to read into is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
