.class public abstract Lnet/sf/saxon/str/WhitespaceString;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    return-void
.end method


# virtual methods
.method public a([CI)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/WhitespaceString;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->a([CI)V

    return-void
.end method

.method public b([BI)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/WhitespaceString;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->b([BI)V

    return-void
.end method

.method public c([BI)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/WhitespaceString;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->c([BI)V

    return-void
.end method

.method public getWidth()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public indexOf(IJ)J
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/WhitespaceString;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/WhitespaceString;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/WhitespaceString;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract uncompress()Lnet/sf/saxon/str/UnicodeString;
.end method

.method public abstract write(Lnet/sf/saxon/str/UnicodeWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEscape([ZLnet/sf/saxon/str/UnicodeWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
