.class public final Lcom/tencent/qimei/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/uin/U;->p()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/tencent/qimei/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/qimei/h/b;->c:Ljava/lang/String;

    sget-boolean v1, Lcom/tencent/qimei/m/b;->a:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/tencent/qimei/h/b;->d:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qimei/h/a;->a:Ljava/lang/String;

    return-object v0
.end method
