.class public final Lcom/sunia/HTREnginev2/cfi;
.super Lcom/sunia/HTREnginev2/jci;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/jci<",
        "TT;",
        "Lonyx/org/apache/commons/io/function/IOStream<",
        "TT;>;",
        "Ljava/util/stream/Stream<",
        "TT;>;>;",
        "Lonyx/org/apache/commons/io/function/IOStream<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/jci;-><init>(Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method public static adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/cfi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cfi;-><init>(Ljava/util/stream/Stream;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lonyx/org/apache/commons/io/function/IOStream;->empty()Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public f(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lonyx/org/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jci;->unwrap()Ljava/util/stream/BaseStream;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sunia/HTREnginev2/cfi;->adapt(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic wrap(Ljava/util/stream/BaseStream;)Lonyx/org/apache/commons/io/function/IOBaseStream;
    .locals 0

    check-cast p1, Ljava/util/stream/Stream;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/cfi;->f(Ljava/util/stream/Stream;)Lonyx/org/apache/commons/io/function/IOStream;

    move-result-object p0

    return-object p0
.end method
