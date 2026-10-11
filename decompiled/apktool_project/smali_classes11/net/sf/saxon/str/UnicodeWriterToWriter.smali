.class public Lnet/sf/saxon/str/UnicodeWriterToWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/str/UnicodeWriter;


# instance fields
.field public final e:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeAscii([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Lnet/sf/saxon/str/StringTool;->copy8to16([BI[CII)V

    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public writeCodePoint(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffff

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/UnicodeWriterToWriter;->e:Ljava/io/Writer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void
.end method
