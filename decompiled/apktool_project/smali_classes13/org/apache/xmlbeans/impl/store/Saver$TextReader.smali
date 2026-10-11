.class final Lorg/apache/xmlbeans/impl/store/Saver$TextReader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextReader"
.end annotation


# instance fields
.field private _closed:Z

.field private final _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private final _textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    return-void
.end method

.method private checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Reader has been closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[CII)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->lambda$read$1([CII)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[C)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->lambda$read$0([C)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$read$0([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read([CII)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$read$1([CII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read([CII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

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
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->checkClosed()V

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/k0;

    invoke-direct {v1, p0}, Lorg/apache/xmlbeans/impl/store/k0;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->access$000(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;)I

    move-result p0

    return p0
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->checkClosed()V

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/j0;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/j0;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[C)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->access$000(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;)I

    move-result p0

    return p0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->checkClosed()V

    .line 6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/i0;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/i0;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[CII)V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->access$000(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;)I

    move-result p0

    return p0
.end method

.method public ready()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
