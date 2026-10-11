.class public Lcom/miui/penengine/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "f"

.field public static final d:Ljava/lang/String; = "com.miui.penengine.impl.algorithm.recognizelib.algorithm.RecognizeFacade"

.field public static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Ljava/lang/reflect/Method;

.field public static h:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/penengine/e/f;->b:Z

    return-void
.end method

.method public static a(Ldalvik/system/PathClassLoader;)I
    .locals 7

    const-string v0, "Method on destroy does not exist, "

    const-string v1, "Method recognize text does not exist, "

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "com.miui.penengine.impl.algorithm.recognizelib.algorithm.RecognizeFacade"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/f;->e:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/f;->h:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object p0, Lcom/miui/penengine/e/f;->e:Ljava/lang/Class;

    const-string v4, "recognizeStrokes"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v6

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/f;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object p0, Lcom/miui/penengine/e/f;->e:Ljava/lang/Class;

    const-string v1, "onDestroy"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/f;->g:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v6

    :catch_0
    move-exception p0

    :try_start_3
    sget-object v1, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_1
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v2

    :catch_2
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Recognize class or constructor is unavailable, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public a(Lcom/miui/penengine/ocr/MiuiInk;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/miui/penengine/e/f;->e:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/penengine/e/f;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/f;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/penengine/ocr/MiuiInk;->getStrokes()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Recognize text fail, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    const-string p1, "Recognize recognize text error, recognizeClass is null!"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()V
    .locals 4

    sget-object v0, Lcom/miui/penengine/e/f;->e:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/penengine/e/f;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/penengine/e/f;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/miui/penengine/e/f;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On destroy fail, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    const-string v0, "Recognize on destroy error, recognizeClass is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/miui/penengine/e/f;->h:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/miui/penengine/e/f;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/penengine/e/f;->a:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/miui/penengine/e/f;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/e/f;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Recognize object is unavailable, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method
