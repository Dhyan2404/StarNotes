.class public Lcom/tencent/qimei/u/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/u/b$a;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/qimei/u/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)B
    .locals 1

    iget-boolean p0, p0, Lcom/tencent/qimei/u/b;->a:Z

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean p0, Lcom/tencent/qimei/uin/U;->a:Z

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Lcom/tencent/qimei/uin/U;->e(Ljava/lang/String;Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;B)V

    :goto_1
    return v0
.end method
