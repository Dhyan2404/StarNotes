.class public Lorg/mortbay/util/MultiPartWriter;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String; = null

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String; = null

.field public static final g:Ljava/lang/String; = "\r\n"

.field public static final h:Ljava/lang/String; = "--"


# instance fields
.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/mortbay/util/MultiPartOutputStream;->MULTIPART_MIXED:Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/MultiPartWriter;->MULTIPART_MIXED:Ljava/lang/String;

    sget-object v0, Lorg/mortbay/util/MultiPartOutputStream;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    sput-object v0, Lorg/mortbay/util/MultiPartWriter;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "jetty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/MultiPartWriter;->e:Ljava/lang/String;

    iput-boolean p1, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    const-string v1, "\r\n"

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lorg/mortbay/util/MultiPartWriter;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    return-void
.end method

.method public endPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/MultiPartWriter;->e:Ljava/lang/String;

    return-object p0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    const-string v1, "\r\n"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/mortbay/util/MultiPartWriter;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v2, "Content-Type: "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-boolean v0, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    const-string v1, "\r\n"

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lorg/mortbay/util/MultiPartWriter;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v2, "Content-Type: "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 19
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 20
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    aget-object v2, p2, p1

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lorg/mortbay/util/MultiPartWriter;->f:Z

    return-void
.end method
