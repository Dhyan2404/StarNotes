.class public Lcom/twelvemonkeys/io/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/io/WriterOutputStream$c;,
        Lcom/twelvemonkeys/io/WriterOutputStream$a;,
        Lcom/twelvemonkeys/io/WriterOutputStream$b;
    }
.end annotation


# static fields
.field public static final g:Z


# instance fields
.field protected final decoder:Lcom/twelvemonkeys/io/WriterOutputStream$b;

.field public final e:Ljava/io/ByteArrayOutputStream;

.field public volatile f:Z

.field protected writer:Ljava/io/Writer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/twelvemonkeys/io/WriterOutputStream;->w()Z

    move-result v0

    sput-boolean v0, Lcom/twelvemonkeys/io/WriterOutputStream;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/io/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Lcom/twelvemonkeys/io/FastByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/io/FastByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->e:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->f:Z

    .line 4
    iput-object p1, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->writer:Ljava/io/Writer;

    .line 5
    invoke-static {p2}, Lcom/twelvemonkeys/io/WriterOutputStream;->j(Ljava/lang/String;)Lcom/twelvemonkeys/io/WriterOutputStream$b;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->decoder:Lcom/twelvemonkeys/io/WriterOutputStream$b;

    return-void
.end method

.method public static j(Ljava/lang/String;)Lcom/twelvemonkeys/io/WriterOutputStream$b;
    .locals 1

    sget-boolean v0, Lcom/twelvemonkeys/io/WriterOutputStream;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twelvemonkeys/io/WriterOutputStream$a;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/WriterOutputStream$a;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/io/WriterOutputStream$c;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/io/WriterOutputStream$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd klashf lkash ljah lhaaklhghdfgu ksd"

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Lcom/twelvemonkeys/io/NullOutputStream;

    invoke-direct {v2}, Lcom/twelvemonkeys/io/NullOutputStream;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/twelvemonkeys/io/WriterOutputStream$c;

    invoke-direct {v2, v0}, Lcom/twelvemonkeys/io/WriterOutputStream$c;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x2710

    if-ge v4, v5, :cond_0

    array-length v5, p0

    invoke-interface {v2, v1, p0, v3, v5}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v4, v3

    :goto_1
    const v8, 0xf4240

    if-ge v4, v8, :cond_1

    array-length v8, p0

    invoke-interface {v2, v1, p0, v3, v8}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Lcom/twelvemonkeys/lang/DateUtil;->delta(J)J

    move-result-wide v6

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "StringDecoder"

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    array-length v6, p0

    invoke-interface {v2, v4, p0, v3, v6}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "str: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chars.length: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    sget-boolean v2, Lcom/twelvemonkeys/io/WriterOutputStream;->g:Z

    if-eqz v2, :cond_4

    new-instance v2, Lcom/twelvemonkeys/io/WriterOutputStream$a;

    invoke-direct {v2, v0}, Lcom/twelvemonkeys/io/WriterOutputStream$a;-><init>(Ljava/lang/String;)V

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_2

    array-length v6, p0

    invoke-interface {v2, v1, p0, v3, v6}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, v3

    :goto_3
    if-ge v6, v8, :cond_3

    array-length v12, p0

    invoke-interface {v2, v1, p0, v3, v12}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v4, v5}, Lcom/twelvemonkeys/lang/DateUtil;->delta(J)J

    move-result-wide v4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "CharsetDecoder"

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    array-length v4, p0

    invoke-interface {v2, v1, p0, v3, v4}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    :cond_4
    new-instance v1, Lcom/twelvemonkeys/io/WriterOutputStream;

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2, v0}, Lcom/twelvemonkeys/io/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    array-length v0, p0

    :goto_4
    if-ge v3, v0, :cond_5

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static w()Z
    .locals 1

    :try_start_0
    const-string v0, "java.nio.charset.Charset"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/WriterOutputStream;->flush()V

    iget-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->writer:Ljava/io/Writer;

    return-void
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->f:Z

    iget-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->f:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/WriterOutputStream;->f()V

    iget-object p0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/twelvemonkeys/io/WriterOutputStream;->write([BII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/WriterOutputStream;->f()V

    .line 4
    iget-object v0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->decoder:Lcom/twelvemonkeys/io/WriterOutputStream$b;

    iget-object p0, p0, Lcom/twelvemonkeys/io/WriterOutputStream;->writer:Ljava/io/Writer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/twelvemonkeys/io/WriterOutputStream$b;->a(Ljava/io/Writer;[BII)V

    return-void
.end method
