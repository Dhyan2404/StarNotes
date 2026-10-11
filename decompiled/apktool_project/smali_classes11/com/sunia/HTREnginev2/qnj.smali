.class public final Lcom/sunia/HTREnginev2/qnj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/sunia/HTREnginev2/qnj;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/sunia/HTREnginev2/qnj;


# instance fields
.field public a:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/sunia/HTREnginev2/qnj;->b:Landroidx/core/util/Pools$SynchronizedPool;

    new-instance v0, Lcom/sunia/HTREnginev2/qnj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qnj;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/qnj;->c:Lcom/sunia/HTREnginev2/qnj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/reflect/Method;)Lcom/sunia/HTREnginev2/qnj;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/sunia/HTREnginev2/qnj;->c:Lcom/sunia/HTREnginev2/qnj;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/qnj;->b:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/qnj;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/qnj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qnj;-><init>()V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/qnj;->b(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qnj;->a:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public final b(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qnj;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/qnj;->b:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lcom/sunia/HTREnginev2/qnj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/sunia/HTREnginev2/qnj;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qnj;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/sunia/HTREnginev2/qnj;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/sunia/HTREnginev2/qnj;->a:Ljava/lang/reflect/Method;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qnj;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
