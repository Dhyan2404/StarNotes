.class public final Lorg/reactivestreams/FlowAdapters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reactivestreams/FlowAdapters$a;,
        Lorg/reactivestreams/FlowAdapters$e;,
        Lorg/reactivestreams/FlowAdapters$b;,
        Lorg/reactivestreams/FlowAdapters$f;,
        Lorg/reactivestreams/FlowAdapters$g;,
        Lorg/reactivestreams/FlowAdapters$c;,
        Lorg/reactivestreams/FlowAdapters$h;,
        Lorg/reactivestreams/FlowAdapters$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No instances!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toFlowProcessor(Lorg/reactivestreams/Processor;)Ljava/util/concurrent/Flow$Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Processor<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/Flow$Processor<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsProcessor"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/reactivestreams/FlowAdapters$f;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/reactivestreams/FlowAdapters$f;

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$f;->e:Ljava/util/concurrent/Flow$Processor;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/rng;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/sng;->a(Ljava/lang/Object;)Ljava/util/concurrent/Flow$Processor;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/reactivestreams/FlowAdapters$b;

    invoke-direct {v0, p0}, Lorg/reactivestreams/FlowAdapters$b;-><init>(Lorg/reactivestreams/Processor;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toFlowPublisher(Lorg/reactivestreams/Publisher;)Ljava/util/concurrent/Flow$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsPublisher"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/reactivestreams/FlowAdapters$e;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/reactivestreams/FlowAdapters$e;

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$e;->e:Ljava/util/concurrent/Flow$Publisher;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/vng;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/wng;->a(Ljava/lang/Object;)Ljava/util/concurrent/Flow$Publisher;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/reactivestreams/FlowAdapters$a;

    invoke-direct {v0, p0}, Lorg/reactivestreams/FlowAdapters$a;-><init>(Lorg/reactivestreams/Publisher;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toFlowSubscriber(Lorg/reactivestreams/Subscriber;)Ljava/util/concurrent/Flow$Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsSubscriber"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/reactivestreams/FlowAdapters$g;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/reactivestreams/FlowAdapters$g;

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$g;->e:Ljava/util/concurrent/Flow$Subscriber;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/tng;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ung;->a(Ljava/lang/Object;)Ljava/util/concurrent/Flow$Subscriber;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/reactivestreams/FlowAdapters$c;

    invoke-direct {v0, p0}, Lorg/reactivestreams/FlowAdapters$c;-><init>(Lorg/reactivestreams/Subscriber;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toProcessor(Ljava/util/concurrent/Flow$Processor;)Lorg/reactivestreams/Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Processor<",
            "-TT;+TU;>;)",
            "Lorg/reactivestreams/Processor<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "flowProcessor"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/reactivestreams/FlowAdapters$b;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/reactivestreams/FlowAdapters$b;

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$b;->a:Lorg/reactivestreams/Processor;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/Processor;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/reactivestreams/Processor;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/reactivestreams/FlowAdapters$f;

    invoke-direct {v0, p0}, Lorg/reactivestreams/FlowAdapters$f;-><init>(Ljava/util/concurrent/Flow$Processor;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toPublisher(Ljava/util/concurrent/Flow$Publisher;)Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Publisher<",
            "+TT;>;)",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "flowPublisher"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/reactivestreams/FlowAdapters$a;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/reactivestreams/FlowAdapters$a;

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$a;->a:Lorg/reactivestreams/Publisher;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/Publisher;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/reactivestreams/Publisher;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/reactivestreams/FlowAdapters$e;

    invoke-direct {v0, p0}, Lorg/reactivestreams/FlowAdapters$e;-><init>(Ljava/util/concurrent/Flow$Publisher;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static toSubscriber(Ljava/util/concurrent/Flow$Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "TT;>;)",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "flowSubscriber"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lorg/reactivestreams/FlowAdapters$c;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/reactivestreams/FlowAdapters$c;

    iget-object p0, p0, Lorg/reactivestreams/FlowAdapters$c;->a:Lorg/reactivestreams/Subscriber;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/reactivestreams/Subscriber;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/reactivestreams/FlowAdapters$g;

    invoke-direct {v0, p0}, Lorg/reactivestreams/FlowAdapters$g;-><init>(Ljava/util/concurrent/Flow$Subscriber;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
