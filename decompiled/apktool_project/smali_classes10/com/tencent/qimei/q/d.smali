.class public Lcom/tencent/qimei/q/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "dZdcQik9lkNsvFYx"

.field public static final b:Lcom/tencent/qimei/q/d;


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qimei/q/d;

    invoke-direct {v0}, Lcom/tencent/qimei/q/d;-><init>()V

    sput-object v0, Lcom/tencent/qimei/q/d;->b:Lcom/tencent/qimei/q/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qimei/q/d;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/q/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/q/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qimei/h/a;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/tencent/qimei/q/d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/e/c;->r()B

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qimei/q/d;->c:I

    :cond_0
    new-instance v0, Lcom/tencent/qimei/y/a;

    invoke-direct {v0, p2}, Lcom/tencent/qimei/y/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qimei/q/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qimei/y/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qimei/q/d;->d:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/tencent/qimei/q/d;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qimei/y/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/q/d;->e:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/y/d;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qimei/q/d;->c:I

    const-string v2, "platformId"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/qimei/q/d;->d:Ljava/lang/String;

    const-string v2, "q16"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tencent/qimei/q/d;->e:Ljava/lang/String;

    const-string v1, "q36"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "appKey"

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdkVersion"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
