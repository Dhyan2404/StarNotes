.class public Lcom/tencent/qmsp/oaid2/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 4
    sget-boolean v0, Lcom/tencent/qmsp/oaid2/d0;->a:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/tencent/qmsp/oaid2/h0;->f:Lcom/tencent/qmsp/oaid2/h0;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/d0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qmsp/oaid2/h0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/qmsp/oaid2/d0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/tencent/qmsp/oaid2/d0;->b:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK Need Init First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/tencent/qmsp/oaid2/d0;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qmsp/oaid2/h0;->f:Lcom/tencent/qmsp/oaid2/h0;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/d0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qmsp/oaid2/h0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/oaid2/h0;->f:Lcom/tencent/qmsp/oaid2/h0;

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/d0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/qmsp/oaid2/h0;->a(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/tencent/qmsp/oaid2/d0;->b:Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/qmsp/oaid2/d0;->a:Z

    return-void
.end method
