.class public abstract Lcom/sunia/calculatorv2/ink/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/calculatorv2/ink/model/IElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sunia/calculatorv2/ink/model/IElement;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

.field public c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/model/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sunia/calculatorv2/ink/model/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->m(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->p(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/p1;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->j(Lcom/sunia/HTREnginev2/p1;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->k(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->l(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->o(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sunia/HTREnginev2/k;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->i(Lcom/sunia/HTREnginev2/k;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/f;->n(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sunia/HTREnginev2/k;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k;->b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sunia/HTREnginev2/p1;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    return-object p0
.end method

.method public static synthetic m(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    return-object p0
.end method

.method public static synthetic o(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/f;->b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zyo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zyo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/azo;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/azo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 6
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 8
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 10
    sget-object p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->EMPTY:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/f;->b:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/vyo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vyo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/wyo;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/wyo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Ljava/util/Iterator;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->union(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 6
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 8
    sget-object p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->EMPTY:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/f;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public getChildrenElement()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/stream/Stream;

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/xyo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xyo;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/yyo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yyo;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/stream/Stream;

    .line 4
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/tyo;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tyo;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/uyo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uyo;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/f;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 2
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    .line 3
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/f;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method
