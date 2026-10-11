.class public Lnet/sf/saxon/s9api/streams/XdmStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/Stream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Stream<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/rym;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rym;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/sym;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sym;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    iput-object p1, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    return-void
.end method

.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    return-void
.end method

.method public static synthetic H(Lnet/sf/saxon/s9api/streams/XdmStream;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmStream;->e0(Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V

    return-void
.end method

.method public static synthetic I(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    return-object p1
.end method

.method public static synthetic M(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    return-object p1
.end method

.method private synthetic e0(Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->M(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f0(Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    :cond_0
    return-void
.end method

.method public static synthetic j(Lnet/sf/saxon/s9api/streams/XdmStream;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmStream;->f0(Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V

    return-void
.end method

.method public static synthetic w(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->I(Lnet/sf/saxon/s9api/XdmItem;Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allMatch(Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public anyMatch(Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public asAtomic()Lnet/sf/saxon/s9api/XdmAtomicValue;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asAtomic()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    return-object p0
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public asListOfAtomic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asListOfAtomic()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public asListOfNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asListOfNodes()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public asNode()Lnet/sf/saxon/s9api/XdmNode;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asNode()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;

    return-object p0
.end method

.method public asOptionalAtomic()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asOptionalAtomic()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public asOptionalNode()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asOptionalNode()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public asOptionalString()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asOptionalString()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asString()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public asXdmValue()Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors;->asXdmValue()Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmValue;

    return-object p0
.end method

.method public at(I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TT;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public count()J
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic distinct()Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->distinct()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public distinct()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public exists()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->filter(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public findAny()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findFirst()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public first()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/Optional;)V

    return-object v0
.end method

.method public firstItem()Lnet/sf/saxon/s9api/XdmItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    return-object p0
.end method

.method public flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public flatMapToXdm(Lnet/sf/saxon/s9api/streams/Step;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TU;>;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isParallel()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->isParallel()Z

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

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public last()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/gvo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gvo;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/Optional;)V

    return-object v0
.end method

.method public lastItem()Lnet/sf/saxon/s9api/XdmItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    new-instance v0, Lcom/sunia/HTREnginev2/evo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/evo;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    return-object p0
.end method

.method public bridge synthetic limit(J)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmStream;->limit(J)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public limit(J)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public max(Ljava/util/Comparator;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public min(Ljava/util/Comparator;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public noneMatch(Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public bridge synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->parallel()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public parallel()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public bridge synthetic peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->peek(Ljava/util/function/Consumer;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public peek(Ljava/util/function/Consumer;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/BiFunction<",
            "TU;-TT;TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmStream;->reduce(Lnet/sf/saxon/s9api/XdmItem;Ljava/util/function/BinaryOperator;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method public reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public reduce(Lnet/sf/saxon/s9api/XdmItem;Ljava/util/function/BinaryOperator;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmItem;

    return-object p0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->sequential()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public sequential()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->sequential()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public bridge synthetic skip(J)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmStream;->skip(J)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public skip(J)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public bridge synthetic sorted()Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->sorted()Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->sorted(Ljava/util/Comparator;)Lnet/sf/saxon/s9api/streams/XdmStream;

    move-result-object p0

    return-object p0
.end method

.method public sorted()Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public sorted(Ljava/util/Comparator;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
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

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public subStream(II)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gt p2, p1, :cond_1

    new-instance p0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    int-to-long v1, p1

    invoke-interface {p0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    sub-int/2addr p2, p1

    int-to-long p1, p2

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmStream;->unordered()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public unordered()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public untilFirstExclusive(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    new-instance v1, Lcom/sunia/HTREnginev2/fvo;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/fvo;-><init>(Lnet/sf/saxon/s9api/streams/XdmStream;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-interface {p1}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public untilFirstInclusive(Ljava/util/function/Predicate;)Lnet/sf/saxon/s9api/streams/XdmStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)",
            "Lnet/sf/saxon/s9api/streams/XdmStream<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/streams/XdmStream;->e:Ljava/util/stream/Stream;

    new-instance v1, Lcom/sunia/HTREnginev2/dvo;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/dvo;-><init>(Lnet/sf/saxon/s9api/streams/XdmStream;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/s9api/streams/XdmStream;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/streams/XdmStream;-><init>(Ljava/util/stream/Stream;)V

    return-object p1
.end method
