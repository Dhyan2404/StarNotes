.class public Lcom/sunia/HTREnginev2/t9n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "TargetMethodFinder"

.field public static final c:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Lcom/sunia/HTREnginev2/rnj;",
            "Lcom/sunia/HTREnginev2/qnj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/t9n$a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/t9n$a;-><init>(I)V

    sput-object v0, Lcom/sunia/HTREnginev2/t9n;->c:Landroidx/collection/LruCache;

    new-instance v0, Lcom/sunia/HTREnginev2/t9n$b;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/t9n$b;-><init>(I)V

    sput-object v0, Lcom/sunia/HTREnginev2/t9n;->d:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t9n;->a:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/t9n;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/rnj;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/t9n;->e(Lcom/sunia/HTREnginev2/rnj;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/t9n;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/t9n;->c(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;",
            "Lnet/vrallev/android/task/Task<",
            "*>;Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/t9n;->c(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/t9n;->h(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/sunia/HTREnginev2/rnj;)Ljava/lang/reflect/Method;
    .locals 16

    const-string v1, "TargetMethodFinder"

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/rnj;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/rnj;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/rnj;->c()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/rnj;->e()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/rnj;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    array-length v9, v0

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_a

    aget-object v12, v0, v11

    invoke-virtual {v12, v2}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v12, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lnet/vrallev/android/task/TaskResult;

    invoke-interface {v13}, Lnet/vrallev/android/task/TaskResult;->id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {v12, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lnet/vrallev/android/task/TaskResult;

    invoke-interface {v13}, Lnet/vrallev/android/task/TaskResult;->id()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13

    if-eqz v14, :cond_9

    array-length v14, v13

    const/4 v15, 0x2

    if-le v14, v15, :cond_4

    goto :goto_2

    :cond_4
    aget-object v14, v13, v10

    invoke-virtual {v14, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-nez v8, :cond_5

    move-object v8, v12

    goto :goto_1

    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found another method, which is ignored "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    aget-object v7, v13, v10

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    array-length v7, v13

    if-ne v7, v15, :cond_8

    const/4 v7, 0x1

    aget-object v13, v13, v7

    invoke-virtual {v13, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_2

    :cond_8
    return-object v12

    :cond_9
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_a
    return-object v8

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v8
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Ljava/lang/reflect/Method;
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
            "Lnet/vrallev/android/task/Task<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/rnj;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Lcom/sunia/HTREnginev2/rnj;

    move-result-object p0

    sget-object p1, Lcom/sunia/HTREnginev2/t9n;->d:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/qnj;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qnj;->a()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroidx/fragment/app/Fragment;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;",
            "Lnet/vrallev/android/task/Task<",
            "*>;Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lnet/vrallev/android/task/Task;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/nug;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5}, Lcom/sunia/HTREnginev2/nug;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/t9n;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/sunia/HTREnginev2/t9n;->g(Landroidx/fragment/app/Fragment;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Lcom/sunia/HTREnginev2/t9n;->h(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/vrallev/android/task/TaskResult;",
            ">;",
            "Lnet/vrallev/android/task/Task<",
            "*>;Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/sunia/HTREnginev2/t9n;->g(Landroidx/fragment/app/Fragment;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static i(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-class v1, Lnet/vrallev/android/task/Task;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "execute"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v5, v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/t9n;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j(Lnet/vrallev/android/task/TaskCacheFragmentInterface;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/vrallev/android/task/Task<",
            "*>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "TargetMethodFinder"

    if-nez p1, :cond_0

    const-string p0, "Activity is null, can\'t find target"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    instance-of v2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/t9n;->a:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {p1, p2, v2, p3, v3}, Lcom/sunia/HTREnginev2/t9n;->d(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t9n;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p1, p2, p0, p3, v2}, Lcom/sunia/HTREnginev2/t9n;->d(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;Z)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t9n;->a:Ljava/lang/Class;

    invoke-static {p1, v2, p2, p0, p3}, Lcom/sunia/HTREnginev2/t9n;->c(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    :try_start_0
    invoke-virtual {p3}, Lnet/vrallev/android/task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p3}, Lnet/vrallev/android/task/Task;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lnet/vrallev/android/task/Task;->d()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Didn\'t find method, result type %s, result %s, annotationId %s, fragmentId %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2
.end method

.method public k(Ljava/lang/Object;Lnet/vrallev/android/task/Task;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnet/vrallev/android/task/Task<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p2}, Lnet/vrallev/android/task/Task;->getResultClass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sunia/HTREnginev2/t9n;->c:Landroidx/collection/LruCache;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    const-string p1, "TargetMethodFinder"

    const-string p2, "Couldn\'t find result type"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public l(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lnet/vrallev/android/task/Task<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/t9n;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V

    return-void
.end method

.method public m(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lnet/vrallev/android/task/Task<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "TargetMethodFinder"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
