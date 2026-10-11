.class public interface abstract Lonyx/org/apache/commons/io/function/IOBaseStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Lonyx/org/apache/commons/io/function/IOBaseStream<",
        "TT;TS;TB;>;B::",
        "Ljava/util/stream/BaseStream<",
        "TT;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# direct methods
.method public static synthetic E(Lonyx/org/apache/commons/io/function/IORunnable;)V
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->z(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public static synthetic z(Lonyx/org/apache/commons/io/function/IORunnable;)V
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Erase;->g(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method


# virtual methods
.method public asBaseStream()Ljava/util/stream/BaseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/BaseStream<",
            "TT;TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xrn;-><init>(Lonyx/org/apache/commons/io/function/IOBaseStream;)V

    return-object v0
.end method

.method public close()V
    .locals 0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public isParallel()Z
    .locals 0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->isParallel()Z

    move-result p0

    return p0
.end method

.method public iterator()Lonyx/org/apache/commons/io/function/IOIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOIterator<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tdi;->a(Ljava/util/Iterator;)Lcom/sunia/HTREnginev2/tdi;

    move-result-object p0

    return-object p0
.end method

.method public onClose(Lonyx/org/apache/commons/io/function/IORunnable;)Lonyx/org/apache/commons/io/function/IOBaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/function/IORunnable;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ici;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/ici;-><init>(Lonyx/org/apache/commons/io/function/IORunnable;)V

    invoke-interface {v0, v1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p1

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/function/IOBaseStream;->wrap(Ljava/util/stream/BaseStream;)Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    return-object p0
.end method

.method public parallel()Lonyx/org/apache/commons/io/function/IOBaseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-interface {p0, v0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->wrap(Ljava/util/stream/BaseStream;)Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public sequential()Lonyx/org/apache/commons/io/function/IOBaseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-interface {p0, v0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->wrap(Ljava/util/stream/BaseStream;)Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public spliterator()Lonyx/org/apache/commons/io/function/IOSpliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lonyx/org/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/dei;->a(Ljava/util/Spliterator;)Lcom/sunia/HTREnginev2/dei;

    move-result-object p0

    return-object p0
.end method

.method public unordered()Lonyx/org/apache/commons/io/function/IOBaseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    move-result-object v0

    invoke-interface {p0, v0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->wrap(Ljava/util/stream/BaseStream;)Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    return-object p0
.end method

.method public abstract unwrap()Ljava/util/stream/BaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract wrap(Ljava/util/stream/BaseStream;)Lonyx/org/apache/commons/io/function/IOBaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TS;"
        }
    .end annotation
.end method
