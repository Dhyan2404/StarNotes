.class public Lcom/tencent/qimei/r/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/r/c$b;,
        Lcom/tencent/qimei/r/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/qimei/r/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qimei/r/c;

    invoke-direct {v0}, Lcom/tencent/qimei/r/c;-><init>()V

    sput-object v0, Lcom/tencent/qimei/r/c;->a:Lcom/tencent/qimei/r/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 3

    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    sget-object v1, Lcom/tencent/qimei/r/c$b;->c:Lcom/tencent/qimei/k/d;

    invoke-virtual {v1, p0}, Lcom/tencent/qimei/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qimei/r/c$b;->d:Lcom/tencent/qimei/k/d;

    invoke-virtual {v2, p0}, Lcom/tencent/qimei/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/qimei/e/c;Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/t/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "harmony"

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/qimei/e/c;->u()Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_1
    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p4, "clone"

    .line 20
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v3, 0x186a0

    div-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 21
    :goto_2
    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p4, "containe"

    :try_start_3
    invoke-virtual {p1}, Lcom/tencent/qimei/e/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p4, "oz"

    .line 22
    :try_start_4
    iget-object v0, p2, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->e()Z

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, ""

    if-nez v0, :cond_3

    move-object v0, v5

    goto :goto_3

    :cond_3
    :try_start_5
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/e/c;->q()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_3
    invoke-virtual {p0, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p4, "oo"

    .line 26
    :try_start_6
    iget-object p2, p2, Lcom/tencent/qimei/o/d;->b:Ljava/lang/String;

    .line 27
    invoke-static {p2}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/tencent/qimei/ac/b;->d()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/qimei/e/c;->o()Ljava/lang/String;

    move-result-object v5

    .line 29
    :goto_4
    invoke-virtual {p0, p4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string p2, "kelong"

    :try_start_7
    invoke-virtual {p3}, Lcom/tencent/qimei/t/a;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string p3, "multiUser"

    :try_start_8
    invoke-virtual {p0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string p2, "bod"

    const/16 p3, 0xc

    :try_start_9
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string p2, "brd"

    const/16 p3, 0xd

    :try_start_a
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string p2, "dv"

    const/16 p3, 0xe

    :try_start_b
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string p2, "firstLevel"

    const/16 p3, 0xf

    :try_start_c
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string p2, "manufact"

    const/16 p3, 0x10

    :try_start_d
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string p2, "name"

    const/16 p3, 0x11

    :try_start_e
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string p2, "host"

    const/16 p3, 0x12

    :try_start_f
    invoke-static {p3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string p2, "kernel"

    :try_start_10
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/qimei/e/c;->t()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    const-string p2, "pre"

    .line 30
    :try_start_11
    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_7

    .line 31
    :cond_6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    if-eqz p4, :cond_7

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_6

    :cond_7
    move p4, v3

    :goto_6
    if-ltz p4, :cond_8

    and-int/2addr p4, v4

    if-ne p4, v4, :cond_8

    const/4 v3, 0x2

    .line 32
    :cond_8
    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    if-nez p4, :cond_9

    const-string p4, "/system"

    :try_start_12
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    move v3, v4

    .line 33
    :cond_9
    :goto_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    const-string p2, "ip"

    :try_start_13
    invoke-virtual {p1}, Lcom/tencent/qimei/e/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string v0, "/android"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qimei/h/a;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/sdk/Qimei;JLjava/lang/String;)Ljava/lang/String;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, ""

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v4

    new-instance v5, Lcom/tencent/qimei/y/a;

    invoke-direct {v5, v2}, Lcom/tencent/qimei/y/a;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v6

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v7

    invoke-static {}, Lcom/tencent/qimei/p/b;->a()Lcom/tencent/qimei/p/b;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/t/a;

    move-result-object v9

    invoke-static {}, Lcom/tencent/qimei/m/d;->a()Lcom/tencent/qimei/m/d;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    sget-object v13, Lcom/tencent/qimei/r/c$a;->j:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v13, "platformId"

    :try_start_1
    invoke-virtual {v7}, Lcom/tencent/qimei/e/c;->r()B

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v13, "appKey"

    :try_start_2
    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v13, "appVersion"

    :try_start_3
    invoke-static {}, Lcom/tencent/qimei/e/a;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->k:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v13, "brand"

    :try_start_4
    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v13, "channelId"

    .line 4
    :try_start_5
    invoke-virtual {v5}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v14

    if-nez v14, :cond_0

    move-object v14, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v14

    invoke-interface {v14}, Lcom/tencent/qimei/y/b;->b()Ljava/lang/String;

    move-result-object v14

    .line 5
    :goto_0
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->l:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->m:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->n:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->o:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v13, "model"

    :try_start_6
    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v13, "networkType"

    :try_start_7
    invoke-virtual {v7}, Lcom/tencent/qimei/e/c;->m()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->p:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/qimei/o/d;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    const-string v13, "osVersion"

    :try_start_8
    invoke-virtual {v7}, Lcom/tencent/qimei/e/c;->p()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->q:Ljava/lang/String;

    if-nez p3, :cond_1

    move-object v14, v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qimei/sdk/Qimei;->a()Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v13, Lcom/tencent/qimei/r/c$a;->r:Ljava/lang/String;

    if-nez p3, :cond_2

    move-object v14, v3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qimei/sdk/Qimei;->b()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    const-string v13, "sdkVersion"

    :try_start_9
    invoke-virtual {v4}, Lcom/tencent/qimei/y/d;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    const-string v4, "targetSdkVersion"

    :try_start_a
    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    const-string v4, "audit"

    :try_start_b
    invoke-virtual {v8}, Lcom/tencent/qimei/p/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    const-string v4, "userId"

    .line 6
    :try_start_c
    invoke-static/range {p2 .. p2}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v8

    .line 7
    iget-object v8, v8, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    .line 8
    invoke-virtual {v8}, Lcom/tencent/qimei/ac/b;->j()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v8

    if-nez v8, :cond_4

    :goto_3
    move-object v8, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v8

    invoke-interface {v8}, Lcom/tencent/qimei/y/b;->d()Ljava/lang/String;

    move-result-object v8

    .line 10
    :goto_4
    invoke-virtual {v12, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    const-string v4, "packageId"

    .line 11
    :try_start_d
    iget-object v8, v7, Lcom/tencent/qimei/e/c;->b:Landroid/content/Context;

    if-nez v8, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 12
    :goto_5
    invoke-virtual {v12, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    const-string v4, "deviceType"

    :try_start_e
    invoke-virtual {v7}, Lcom/tencent/qimei/e/c;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    const-string v4, "sdkName"

    .line 13
    :try_start_f
    invoke-virtual {v5}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v5, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v5}, Lcom/tencent/qimei/y/a;->c()Lcom/tencent/qimei/y/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qimei/y/b;->e()Ljava/lang/String;

    move-result-object v5

    .line 14
    :goto_6
    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1

    const-string v4, "uptimes"

    const-string v5, "c_f_uptimes"

    :try_start_10
    invoke-virtual {v10, v2, v5}, Lcom/tencent/qimei/m/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1

    const-string v4, "bts"

    const-string v5, "c_f_bootids"

    :try_start_11
    invoke-virtual {v10, v2, v5}, Lcom/tencent/qimei/m/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1

    const-string v4, "reserved"

    :try_start_12
    invoke-virtual {p0, v7, v6, v9, v2}, Lcom/tencent/qimei/r/c;->a(Lcom/tencent/qimei/e/c;Lcom/tencent/qimei/o/d;Lcom/tencent/qimei/t/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1

    const-string v2, "key"

    .line 15
    :try_start_13
    sget-object v4, Lcom/tencent/qimei/h/a;->a:Ljava/lang/String;

    .line 16
    invoke-static {v0, v4}, Lcom/tencent/qimei/b/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_1

    const-string v2, "params"

    :try_start_14
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1

    .line 17
    :try_start_15
    invoke-static {v4, v0}, Lcom/tencent/qimei/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 18
    :try_start_16
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v3

    .line 19
    :goto_7
    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide/from16 v4, p4

    move-object/from16 v2, p6

    invoke-virtual {p0, v11, v4, v5, v2}, Lcom/tencent/qimei/r/c;->a(Lorg/json/JSONObject;JLjava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/sdk/Qimei;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v0

    :goto_0
    const-string v0, "appKey"

    :try_start_1
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p4, ""

    :goto_1
    move-object v6, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qimei/r/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/sdk/Qimei;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;JLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/tencent/qimei/m/a;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/e/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/m/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "time"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "nonce"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sign"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "extra"

    invoke-virtual {p1, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
