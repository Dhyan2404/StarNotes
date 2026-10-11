.class public final Lcom/sunia/HTREnginev2/xrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/BaseStream;


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
        "Ljava/util/stream/BaseStream<",
        "TT;TB;>;"
    }
.end annotation


# instance fields
.field public final e:Lonyx/org/apache/commons/io/function/IOBaseStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lonyx/org/apache/commons/io/function/IOBaseStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    return-void
.end method

.method public static synthetic f(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/xrn;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->close()V

    return-void
.end method

.method public isParallel()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->isParallel()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->iterator()Lonyx/org/apache/commons/io/function/IOIterator;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOIterator;->asIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TB;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/vrn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vrn;-><init>(Lonyx/org/apache/commons/io/function/IOBaseStream;)V

    new-instance p0, Lcom/sunia/HTREnginev2/wrn;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/wrn;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public parallel()Ljava/util/stream/BaseStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->parallel()Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public sequential()Ljava/util/stream/BaseStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->sequential()Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->spliterator()Lonyx/org/apache/commons/io/function/IOSpliterator;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public unordered()Ljava/util/stream/BaseStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrn;->e:Lonyx/org/apache/commons/io/function/IOBaseStream;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unordered()Lonyx/org/apache/commons/io/function/IOBaseStream;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/function/IOBaseStream;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method
