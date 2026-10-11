.class public Lorg/apache/xml/serialize/IndentPrinter;
.super Lorg/apache/xml/serialize/Printer;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/StringBuffer;

.field public e:Ljava/lang/StringBuffer;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V

    new-instance p1, Ljava/lang/StringBuffer;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/StringBuffer;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->g:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/IndentPrinter;->breakLine(Z)V

    return-void
.end method

.method public breakLine(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    :try_start_0
    iget-object p1, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    :goto_2
    return-void
.end method

.method public enterDTD()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

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
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serialize/IndentPrinter;->breakLine()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_2

    iput-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    :goto_0
    return-void
.end method

.method public flushLine(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->g:I

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p1}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :cond_0
    :goto_0
    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    iget-object p1, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    iput-object p1, p0, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_3
    :goto_2
    return-void
.end method

.method public getNextIndent()I
    .locals 0

    iget p0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    return p0
.end method

.method public indent()V
    .locals 2

    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

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
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->g:I

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
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
    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    return-void
.end method

.method public printText(C)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public printText(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public printText([CII)V
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public setNextIndent(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xml/serialize/IndentPrinter;->g:I

    return-void
.end method

.method public unindent()V
    .locals 2

    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    iget-object v1, p0, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/xml/serialize/IndentPrinter;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->h:I

    iput v0, p0, Lorg/apache/xml/serialize/IndentPrinter;->g:I

    :cond_1
    return-void
.end method
