.class public Lorg/apache/http/protocol/HttpProcessorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/sunia/HTREnginev2/kqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/kqd<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/sunia/HTREnginev2/kqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/kqd<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    new-instance v0, Lorg/apache/http/protocol/HttpProcessorBuilder;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/sunia/HTREnginev2/kqd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/kqd<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->a:Lcom/sunia/HTREnginev2/kqd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/kqd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kqd;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->a:Lcom/sunia/HTREnginev2/kqd;

    :cond_0
    iget-object p0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->a:Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public add(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs addAll([Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addAllLast([Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs addAll([Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addAllLast([Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs addAllFirst([Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->a()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->b([Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public varargs addAllFirst([Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->b()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->b([Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public varargs addAllLast([Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->a()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->d([Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public varargs addAllLast([Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->b()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->d([Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public addFirst(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->a()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->e(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public addFirst(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->b()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->e(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public addLast(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->a()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->f(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public addLast(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->b()Lcom/sunia/HTREnginev2/kqd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/kqd;->f(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public final b()Lcom/sunia/HTREnginev2/kqd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/kqd<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->b:Lcom/sunia/HTREnginev2/kqd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/kqd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kqd;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->b:Lcom/sunia/HTREnginev2/kqd;

    :cond_0
    iget-object p0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->b:Lcom/sunia/HTREnginev2/kqd;

    return-object p0
.end method

.method public build()Lorg/apache/http/protocol/HttpProcessor;
    .locals 3

    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    iget-object v1, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->a:Lcom/sunia/HTREnginev2/kqd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/kqd;->g()Ljava/util/LinkedList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lorg/apache/http/protocol/HttpProcessorBuilder;->b:Lcom/sunia/HTREnginev2/kqd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/kqd;->g()Ljava/util/LinkedList;

    move-result-object v2

    :cond_1
    invoke-direct {v0, v1, v2}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
