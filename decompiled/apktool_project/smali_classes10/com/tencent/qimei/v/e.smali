.class public Lcom/tencent/qimei/v/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/qimei/q/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/v/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/v/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/v/e;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qimei/v/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qimei/e/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/v/e;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/v/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/v/e;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/v/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/e;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/v/e;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/v/e;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/v/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/v/e;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-direct {v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->e(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/b/a;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/b/a;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qimei/v/g;->a()Lcom/tencent/qimei/v/g;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/qimei/v/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/qimei/v/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qimei/v/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/qimei/v/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/v/e;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    sget-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    const-string v1, "sp_need_report"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/tencent/qimei/l/c;->a(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/tencent/qimei/v/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 2
    sget-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/qimei/l/c;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/tencent/qimei/l/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "l_u_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/tencent/qimei/v/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "SpreadQM"

    const-string v1, "spread data upload success."

    invoke-static {v0, v1, p0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 18

    move-object/from16 v15, p0

    sget-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    invoke-virtual {v0}, Lcom/tencent/qimei/l/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/tencent/qimei/l/c;->a:Landroid/content/SharedPreferences;

    const-string v4, "l_u_time"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_0
    iget-object v1, v15, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->u()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/qimei/b/a;->a(JJ)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "sp_need_report"

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    iget-object v1, v15, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->s()Z

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qimei/l/c;->a()Landroid/content/SharedPreferences;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/tencent/qimei/l/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v1, :cond_3

    move v0, v4

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Lcom/tencent/qimei/v/c;

    invoke-direct {v0}, Lcom/tencent/qimei/v/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qimei/v/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gt v1, v4, :cond_5

    return-void

    :cond_5
    iget-object v1, v15, Lcom/tencent/qimei/v/e;->b:Ljava/lang/String;

    iget-object v5, v15, Lcom/tencent/qimei/v/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qimei/sdk/S/SpreadValue;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v6, v15, Lcom/tencent/qimei/v/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v6, v15, Lcom/tencent/qimei/v/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/sdk/S/SpreadValue;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "appKey"

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "source"

    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "oaid"

    :try_start_2
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "aid"

    :try_start_3
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "q16"

    :try_start_4
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "q36"

    :try_start_5
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v7, "firstTime"

    :try_start_6
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v7, "updateTime"

    :try_start_7
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->j()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v7, "fromKey"

    :try_start_8
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v7, "fromSource"

    :try_start_9
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :goto_5
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    invoke-virtual {v0, v3, v2}, Lcom/tencent/qimei/l/c;->a(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->j()J

    move-result-wide v10

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qimei/y/d;->getSdkVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qimei/ac/b;->u()I

    move-result v13

    invoke-static {v1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->s()Z

    move-result v16

    const-string v17, "android"

    move-object v1, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-object v11, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, p0

    invoke-static/range {v1 .. v16}, Lcom/tencent/qimei/q/b;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZLorg/json/JSONArray;Lcom/tencent/qimei/q/a;)V

    :goto_6
    return-void
.end method
