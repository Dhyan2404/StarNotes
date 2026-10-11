.class public Lcom/miui/penengine/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/e/i$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "i"

.field public static final e:Ljava/lang/String; = "com.miui.penengine.impl.manager.PencilEngineManager"

.field public static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static g:Ljava/lang/reflect/Method;

.field public static h:Ljava/lang/reflect/Method;

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/reflect/Method;

.field public static k:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/miui/penengine/e/i$b;

.field public c:Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/penengine/e/i;->k:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    sget-object p0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    const-string v0, "Construct system pencil engine manager fail, sPencilManagerConstructor is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/penengine/e/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/penengine/e/i$b;-><init>(Lcom/miui/penengine/e/i;Lcom/miui/penengine/e/i$a;)V

    iput-object v0, p0, Lcom/miui/penengine/e/i;->b:Lcom/miui/penengine/e/i$b;

    :try_start_0
    sget-object v0, Lcom/miui/penengine/e/i;->k:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/penengine/e/i;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pencil engine manager object is unavailable, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ldalvik/system/PathClassLoader;)I
    .locals 9

    const-string v0, "Method setLogLevel does not exist, "

    const-string v1, "Method runAuthConnect does not exist, "

    const-string v2, "Method pencilEngineDestroy does not exist, "

    const-string v3, "Method pencilEngineInit does not exist, "

    const/4 v4, -0x1

    :try_start_0
    const-string v5, "com.miui.penengine.impl.manager.PencilEngineManager"

    invoke-virtual {p0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/i;->f:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/i;->k:Ljava/lang/reflect/Constructor;

    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, p0, v5

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, p0, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, p0, v8

    const-class v6, Ljava/util/Observer;

    const/4 v8, 0x3

    aput-object v6, p0, v8

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v6, p0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v6, Lcom/miui/penengine/e/i;->f:Ljava/lang/Class;

    const-string v8, "pencilEngineInit"

    invoke-virtual {v6, v8, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/i;->g:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    sget-object p0, Lcom/miui/penengine/e/i;->f:Ljava/lang/Class;

    const-string v3, "pencilEngineDestroy"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/i;->h:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    sget-object p0, Lcom/miui/penengine/e/i;->f:Ljava/lang/Class;

    const-string v2, "runAuthConnect"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/i;->i:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    new-array p0, v7, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p0, v5

    sget-object v1, Lcom/miui/penengine/e/i;->f:Ljava/lang/Class;

    const-string v2, "setLogLevel"

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/i;->j:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return v5

    :catch_0
    move-exception p0

    :try_start_5
    sget-object v1, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_1
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_2
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catch_3
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    return v4

    :catch_4
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pencil engine manager class or constructor is unavailable, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v4
.end method

.method public static synthetic a(Lcom/miui/penengine/e/i;)Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/e/i;->c:Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/miui/penengine/e/i;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/penengine/e/i;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/penengine/e/i;->c:Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;

    const/4 p0, 0x0

    :try_start_0
    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroy fail, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3
    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    const-string v0, "destroy init error, sPencilEngineDestroy is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    sget-object v0, Lcom/miui/penengine/e/i;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/i;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set log level fail, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 8
    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    const-string p1, "Set log level, sSetLogLevel is null!"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;)Z
    .locals 5

    sget-object v0, Lcom/miui/penengine/e/i;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/penengine/e/i;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/miui/penengine/e/i;->c:Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    sget-object v0, Lcom/miui/penengine/e/i;->g:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/penengine/e/i;->a:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x2

    aput-object p2, v3, v4

    iget-object p0, p0, Lcom/miui/penengine/e/i;->b:Lcom/miui/penengine/e/i$b;

    const/4 p2, 0x3

    aput-object p0, v3, p2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x4

    aput-object p0, v3, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Init fail, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p2, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    const-string p1, "Method init error, sPencilEngineInit is null!"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/miui/penengine/e/i;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/i;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run auth connect fail, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/i;->d:Ljava/lang/String;

    const-string v0, "Run auth connect error, sRunAuthConnect is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
