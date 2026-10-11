.class public abstract Lnet/sf/saxon/s9api/streams/XdmCollectors$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/s9api/streams/XdmCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "I:",
        "Lnet/sf/saxon/s9api/XdmItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector<",
        "Lnet/sf/saxon/s9api/XdmItem;",
        "Ljava/util/List<",
        "TI;>;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;Ljava/util/List;Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->f(Ljava/util/List;Lnet/sf/saxon/s9api/XdmItem;)V

    return-void
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    invoke-static {}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f(Ljava/util/List;Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->e(Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->l()V

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic g(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->l()V

    :cond_0
    return-object p1
.end method

.method private synthetic h(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->k()V

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->j(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "TI;>;",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xuo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xuo;-><init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;)V

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/util/List<",
            "TI;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/wuo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wuo;-><init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;)V

    return-object v0
.end method

.method public e(Lnet/sf/saxon/s9api/XdmItem;)Lnet/sf/saxon/s9api/XdmItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ")TI;"
        }
    .end annotation

    return-object p1
.end method

.method public finisher()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "TI;>;TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/yuo;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yuo;-><init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;)V

    return-object v0
.end method

.method public abstract j(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TI;>;)TR;"
        }
    .end annotation
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public supplier()Ljava/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TI;>;>;"
        }
    .end annotation

    new-instance p0, Lcom/sunia/HTREnginev2/zuo;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/zuo;-><init>()V

    return-object p0
.end method
