.class public final Lcom/sunia/HTREnginev2/rnj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/sunia/HTREnginev2/rnj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/sunia/HTREnginev2/rnj;->f:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Lcom/sunia/HTREnginev2/rnj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;",
            "Lnet/vrallev/android/task/Task<",
            "*>;)",
            "Lcom/sunia/HTREnginev2/rnj;"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/rnj;->f:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/rnj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/rnj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rnj;-><init>()V

    :cond_0
    invoke-virtual {p3}, Lnet/vrallev/android/task/Task;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sunia/HTREnginev2/rnj;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public d()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public e()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/Task;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->e:Ljava/lang/Class;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const-class v2, Lcom/sunia/HTREnginev2/rnj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_6

    :cond_1
    check-cast p1, Lcom/sunia/HTREnginev2/rnj;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->a:Ljava/lang/Class;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/sunia/HTREnginev2/rnj;->a:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sunia/HTREnginev2/rnj;->a:Ljava/lang/Class;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->b:Ljava/lang/Class;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/sunia/HTREnginev2/rnj;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/sunia/HTREnginev2/rnj;->b:Ljava/lang/Class;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->c:Ljava/lang/Class;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/sunia/HTREnginev2/rnj;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/sunia/HTREnginev2/rnj;->c:Ljava/lang/Class;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/sunia/HTREnginev2/rnj;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/sunia/HTREnginev2/rnj;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    :cond_9
    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->e:Ljava/lang/Class;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lcom/sunia/HTREnginev2/rnj;->e:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_a
    iget-object p0, p1, Lcom/sunia/HTREnginev2/rnj;->e:Ljava/lang/Class;

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    move v0, v1

    :cond_c
    :goto_5
    return v0

    :cond_d
    :goto_6
    return v1
.end method

.method public final f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/Task;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rnj;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rnj;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rnj;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/rnj;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/rnj;->e:Ljava/lang/Class;

    return-void
.end method

.method public h()V
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/rnj;->f:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rnj;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->b:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->c:Ljava/lang/Class;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sunia/HTREnginev2/rnj;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rnj;->e:Ljava/lang/Class;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method
