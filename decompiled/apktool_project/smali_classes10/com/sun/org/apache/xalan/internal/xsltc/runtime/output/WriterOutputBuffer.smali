.class Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;


# static fields
.field private static BUFFER_SIZE:I = 0x1000

.field private static final KB:I = 0x400


# instance fields
.field private _writer:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "solaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    sput v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->BUFFER_SIZE:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedWriter;

    sget v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->BUFFER_SIZE:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->_writer:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public append(C)Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append([CII)Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/WriterOutputBuffer;->_writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, ""

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
