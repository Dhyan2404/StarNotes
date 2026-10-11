.class public Lorg/apache/commons/collections4/list/LazyList;
.super Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3309f2bb6f747451L


# instance fields
.field private final factory:Lorg/apache/commons/collections4/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private final transformer:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/apache/commons/collections4/Factory;

    iput-object p2, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/apache/commons/collections4/Transformer;

    iput-object p2, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private element(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/collections4/Factory;->create()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Factory and Transformer are both null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/list/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/list/LazyList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method

.method public static lazyList(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/list/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Integer;",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/list/LazyList<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/LazyList;->element(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/LazyList;->element(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections4/list/LazyList;->factory:Lorg/apache/commons/collections4/Factory;

    if-eqz p2, :cond_0

    new-instance p0, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Factory;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/list/LazyList;->transformer:Lorg/apache/commons/collections4/Transformer;

    if-eqz p0, :cond_1

    new-instance p2, Lorg/apache/commons/collections4/list/LazyList;

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/collections4/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections4/Transformer;)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Factory and Transformer are both null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
