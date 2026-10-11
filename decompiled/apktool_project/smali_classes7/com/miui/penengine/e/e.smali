.class public Lcom/miui/penengine/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "e"

.field public static final c:Ljava/lang/String; = "com.miui.penengine.impl.algorithm.shape.ShapeRecognizeFacade"

.field public static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;

.field public static g:Ljava/lang/reflect/Method;

.field public static h:Ljava/lang/reflect/Method;

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/reflect/Method;

.field public static k:Ljava/lang/reflect/Method;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/penengine/e/e;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One stroke object is unavailable, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string v0, "Method getInstance error, mOneStrokeGetInstance is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ldalvik/system/PathClassLoader;)I
    .locals 13

    const-string v0, "Method setStopTime does not exist, "

    const-string v1, "Method getShapePath does not exist, "

    const-string v2, "Method processTouchEvent does not exist, "

    const-string v3, "Method isFeatureEnable does not exist, "

    const-string v4, "Method destroy does not exist, "

    const-string v5, "Method init does not exist, "

    const-string v6, "Method getInstance does not exist, "

    const/4 v7, -0x1

    :try_start_0
    const-string v8, "com.miui.penengine.impl.algorithm.shape.ShapeRecognizeFacade"

    invoke-virtual {p0, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v10, "getInstance"

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {p0, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->g:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    sget-object p0, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const-string v6, "init"

    invoke-virtual {p0, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->e:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    sget-object p0, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const-string v5, "destroy"

    new-array v6, v11, [Ljava/lang/Class;

    invoke-virtual {p0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->f:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    sget-object p0, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const-string v4, "isFeatureEnable"

    new-array v5, v11, [Ljava/lang/Class;

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->j:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    new-array p0, v8, [Ljava/lang/Class;

    const-class v3, Landroid/view/MotionEvent;

    aput-object v3, p0, v11

    sget-object v3, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const-string v4, "processTouchEvent"

    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->k:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    sget-object p0, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const-string v2, "getShapePath"

    new-array v3, v11, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->i:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    new-array p0, v8, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p0, v11

    sget-object v1, Lcom/miui/penengine/e/e;->d:Ljava/lang/Class;

    const-string v2, "setStopTime"

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/miui/penengine/e/e;->h:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return v11

    :catch_0
    move-exception p0

    :try_start_8
    sget-object v1, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_1
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_2
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_3
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_4
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_5
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_6
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    return v7

    :catch_7
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One stroke class or constructor is unavailable, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v7
.end method


# virtual methods
.method public a()I
    .locals 4

    sget-object v0, Lcom/miui/penengine/e/e;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, -0xa

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "One stroke destroy fail, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2

    .line 2
    :cond_2
    :goto_0
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string v0, "Method destroy error, mOneStrokeDestroy is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public a(I)V
    .locals 3

    sget-object v0, Lcom/miui/penengine/e/e;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

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

    sget-object p1, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set stop time fail, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 9
    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string p1, "Method setStopTime error, mOneStrokeSetStopTime is null!"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    sget-object v0, Lcom/miui/penengine/e/e;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process touch event fail, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 7
    :cond_1
    :goto_1
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string p1, "Method processTouchEvent error, mOneStrokeProcessTouchEvent is null!"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/miui/penengine/e/e;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "One stroke init fail, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_2
    :goto_0
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string p1, "Method init error, mOneStrokeInit is null!"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public b()Landroid/graphics/Path;
    .locals 4

    sget-object v0, Lcom/miui/penengine/e/e;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get shape path fail, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string v0, "Method getShapePath error, mOneStrokeGetShapePath is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public c()Z
    .locals 4

    sget-object v0, Lcom/miui/penengine/e/e;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/penengine/e/e;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get feature enable fail, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    sget-object p0, Lcom/miui/penengine/e/e;->b:Ljava/lang/String;

    const-string v0, "Method isFeatureEnable error, mOneStrokeIsFeatureEnable is null!"

    invoke-static {p0, v0}, Lcom/miui/penengine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
