.class public final Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/regexp/internal/CharacterIterator;


# instance fields
.field private final buff:Ljava/lang/StringBuffer;

.field private closed:Z

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->reader:Ljava/io/Reader;

    new-instance p1, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->closed:Z

    return-void
.end method

.method private ensure(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->read(I)I

    return-void
.end method

.method private read(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-array v0, p1, [C

    move v2, v1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->reader:Ljava/io/Reader;

    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-gez v3, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->closed:Z

    goto :goto_0

    :cond_2
    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    if-lt v2, p1, :cond_1

    :goto_0
    return v2
.end method

.method private readAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->closed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->read(I)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->ensure(I)V

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEnd(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->ensure(I)V

    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public substring(I)Ljava/lang/String;
    .locals 0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->readAll()V

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->ensure(I)V

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/regexp/internal/ReaderCharacterIterator;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
