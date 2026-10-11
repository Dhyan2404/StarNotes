.class Lcom/sun/org/apache/bcel/internal/classfile/Utility$JavaWriter;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/classfile/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char v0, p1

    .line 1
    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->isJavaIdentifierPart(C)Z

    move-result v0

    const/16 v1, 0x24

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 2
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    const/16 v0, 0x30

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->access$100()[I

    move-result-object v0

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 7
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 8
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    aget-char p1, p1, v2

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    aget-char v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 10
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    aget-char p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility$JavaWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 11
    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility$JavaWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
