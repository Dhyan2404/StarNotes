.class public Lonyx/org/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field public final e:Ljava/io/BufferedReader;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "reader"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedReader;

    iput-object p1, p0, Lonyx/org/apache/commons/io/LineIterator;->e:Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lonyx/org/apache/commons/io/LineIterator;->e:Ljava/io/BufferedReader;

    :goto_0
    return-void
.end method

.method public static closeQuietly(Lonyx/org/apache/commons/io/LineIterator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lonyx/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/LineIterator;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lonyx/org/apache/commons/io/LineIterator;->f:Ljava/lang/String;

    iget-object p0, p0, Lonyx/org/apache/commons/io/LineIterator;->e:Ljava/io/BufferedReader;

    invoke-static {p0}, Lonyx/org/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lonyx/org/apache/commons/io/LineIterator;->f:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/LineIterator;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/LineIterator;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lonyx/org/apache/commons/io/LineIterator;->g:Z

    return v2

    :cond_2
    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lonyx/org/apache/commons/io/LineIterator;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunia/HTREnginev2/pyi;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/pyi;-><init>(Ljava/io/IOException;)V

    invoke-static {p0, v1}, Lonyx/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public isValidLine(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/LineIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/LineIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/LineIterator;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lonyx/org/apache/commons/io/LineIterator;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more lines"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
