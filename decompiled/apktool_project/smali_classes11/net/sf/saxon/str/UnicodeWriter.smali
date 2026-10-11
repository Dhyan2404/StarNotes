.class public interface abstract Lnet/sf/saxon/str/UnicodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lnet/sf/saxon/str/UnicodeWriter$a;->a:Z

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

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract write(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lnet/sf/saxon/str/UnicodeString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeAscii([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeCodePoint(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/str/UnicodeChar;

    invoke-direct {v0, p1}, Lnet/sf/saxon/str/UnicodeChar;-><init>(I)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/str/UnicodeWriter;->write(Lnet/sf/saxon/str/UnicodeString;)V

    return-void
.end method

.method public writeRepeatedAscii(BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lnet/sf/saxon/str/UnicodeWriter$a;->a:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-array p2, p2, [B

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([BB)V

    invoke-interface {p0, p2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    return-void
.end method
