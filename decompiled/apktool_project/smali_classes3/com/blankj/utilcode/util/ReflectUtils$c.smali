.class public Lcom/blankj/utilcode/util/ReflectUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ReflectUtils;->proxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/blankj/utilcode/util/ReflectUtils;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;Z)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils$c;->f:Lcom/blankj/utilcode/util/ReflectUtils;

    iput-boolean p2, p0, Lcom/blankj/utilcode/util/ReflectUtils$c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/blankj/utilcode/util/ReflectUtils$c;->f:Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-static {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->b(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/blankj/utilcode/util/ReflectUtils$ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$c;->e:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/blankj/utilcode/util/ReflectUtils$c;->f:Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->b(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p3

    :goto_0
    const/4 v2, 0x3

    if-nez v1, :cond_1

    const-string v3, "get"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v1, :cond_2

    const-string v3, "is"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p3, v0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_3
    throw p2
.end method
