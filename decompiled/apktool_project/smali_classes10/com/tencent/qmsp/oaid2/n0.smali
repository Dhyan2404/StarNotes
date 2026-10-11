.class public Lcom/tencent/qmsp/oaid2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qmsp/oaid2/b;


# static fields
.field public static b:Ljava/lang/Class;

.field public static c:Ljava/lang/Object;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 5

    const-class v0, Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string p0, "xm start"

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->c(Ljava/lang/String;)V

    const-string p0, "com.android.id.impl.IdProviderImpl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/tencent/qmsp/oaid2/n0;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/tencent/qmsp/oaid2/n0;->c:Ljava/lang/Object;

    sget-object p0, Lcom/tencent/qmsp/oaid2/n0;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getOAID"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/tencent/qmsp/oaid2/n0;->d:Ljava/lang/reflect/Method;

    sget-object p0, Lcom/tencent/qmsp/oaid2/n0;->b:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "getAAID"

    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/tencent/qmsp/oaid2/n0;->e:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xm reflect exception!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lcom/tencent/qmsp/oaid2/n0;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/qmsp/oaid2/n0;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/tencent/qmsp/oaid2/n0;->a:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/qmsp/oaid2/n0;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 4
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/IVendorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/n0;->a:Landroid/content/Context;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/qmsp/oaid2/n0;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/qmsp/oaid2/n0;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/qmsp/oaid2/n0;->a:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/qmsp/oaid2/n0;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Z
    .locals 0

    sget-object p0, Lcom/tencent/qmsp/oaid2/n0;->b:Ljava/lang/Class;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/tencent/qmsp/oaid2/n0;->c:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method
