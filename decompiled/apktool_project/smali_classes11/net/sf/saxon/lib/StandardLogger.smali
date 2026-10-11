.class public Lnet/sf/saxon/lib/StandardLogger;
.super Lnet/sf/saxon/lib/Logger;
.source "SourceFile"


# instance fields
.field public b:Ljava/io/PrintWriter;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/lib/Logger;-><init>()V

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    .line 4
    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardLogger;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lnet/sf/saxon/lib/Logger;-><init>()V

    .line 16
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    .line 18
    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardLogger;->d:Z

    .line 19
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/StandardLogger;->setPrintStream(Ljava/io/PrintStream;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lnet/sf/saxon/lib/StandardLogger;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lnet/sf/saxon/lib/Logger;-><init>()V

    .line 6
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    .line 8
    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardLogger;->d:Z

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/StandardLogger;->setPrintStream(Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lnet/sf/saxon/lib/Logger;-><init>()V

    .line 11
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    .line 13
    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardLogger;->d:Z

    .line 14
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/StandardLogger;->setPrintWriter(Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public asStreamResult()Ljavax/xml/transform/stream/StreamResult;
    .locals 1

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/lib/StandardLogger;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public getPrintWriter()Ljava/io/PrintWriter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public getThreshold()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    return p0
.end method

.method public println(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public setPrintStream(Ljava/io/PrintStream;)V
    .locals 1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    return-void
.end method

.method public setPrintWriter(Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardLogger;->b:Ljava/io/PrintWriter;

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/lib/StandardLogger;->c:I

    return-void
.end method
