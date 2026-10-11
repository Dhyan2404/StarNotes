.class public Lorg/apache/xml/serialize/Printer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x1000


# instance fields
.field protected _docWriter:Ljava/io/Writer;

.field protected _dtdWriter:Ljava/io/StringWriter;

.field protected _exception:Ljava/io/IOException;

.field protected final _format:Lorg/apache/xml/serialize/OutputFormat;

.field protected _writer:Ljava/io/Writer;

.field public final a:[C

.field public b:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object p2, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/Printer;->b:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v2, 0xa

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/serialize/Printer;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public breakLine(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    return-void
.end method

.method public enterDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/Printer;->flushLine(Z)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object v1, p0, Lorg/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v2, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput v3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_0
    throw v0
.end method

.method public flushLine(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v2, p0, Lorg/apache/xml/serialize/Printer;->b:I

    invoke-virtual {v0, v1, p1, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_0
    :goto_0
    iput p1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    return-void
.end method

.method public getException()Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    return-object p0
.end method

.method public getNextIndent()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public indent()V
    .locals 0

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/Printer;->flushLine(Z)V

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object p0, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public printSpace()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/Printer;->b:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v2, 0x20

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/serialize/Printer;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public printText(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/Printer;->b:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/serialize/Printer;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    throw p1
.end method

.method public printText(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    iput v1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v4, p0, Lorg/apache/xml/serialize/Printer;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    iget v3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xml/serialize/Printer;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    throw p1
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    iput v1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v4, p0, Lorg/apache/xml/serialize/Printer;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    iget v3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xml/serialize/Printer;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    throw p1
.end method

.method public printText([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget p3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    const/16 v1, 0x1000

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write([C)V

    const/4 p3, 0x0

    iput p3, p0, Lorg/apache/xml/serialize/Printer;->b:I

    :cond_1
    iget-object p3, p0, Lorg/apache/xml/serialize/Printer;->a:[C

    iget v1, p0, Lorg/apache/xml/serialize/Printer;->b:I

    aget-char v2, p1, p2

    aput-char v2, p3, v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/serialize/Printer;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez p2, :cond_2

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    throw p1
.end method

.method public setNextIndent(I)V
    .locals 0

    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    return-void
.end method

.method public unindent()V
    .locals 0

    return-void
.end method
