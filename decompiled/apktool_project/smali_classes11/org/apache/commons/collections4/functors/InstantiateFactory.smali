.class public Lorg/apache/commons/collections4/functors/InstantiateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:[Ljava/lang/Object;

.field public transient h:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->h:Ljava/lang/reflect/Constructor;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->e:Ljava/lang/Class;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->f:[Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->g:[Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->h:Ljava/lang/reflect/Constructor;

    .line 9
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->e:Ljava/lang/Class;

    .line 10
    invoke-virtual {p2}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->f:[Ljava/lang/Class;

    .line 11
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->g:[Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->a()V

    return-void
.end method

.method public static instantiateFactory(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter types must match the arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    :cond_5
    :goto_1
    new-instance p1, Lorg/apache/commons/collections4/functors/InstantiateFactory;

    invoke-direct {p1, p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Class to instantiate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->e:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->f:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->h:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InstantiateFactory: The constructor must exist and be public "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public create()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->h:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->h:Ljava/lang/reflect/Constructor;

    iget-object p0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->g:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateFactory: Constructor threw an exception"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateFactory: Constructor must be public"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateFactory: InstantiationException"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
