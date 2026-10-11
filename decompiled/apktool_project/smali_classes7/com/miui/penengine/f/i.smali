.class public Lcom/miui/penengine/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "i"


# instance fields
.field public final a:Lcom/miui/penengine/f/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/penengine/f/j;

    invoke-direct {v0, p1}, Lcom/miui/penengine/f/j;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/miui/penengine/f/i;-><init>(Lcom/miui/penengine/f/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/penengine/f/c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    sget-object p0, Lcom/miui/penengine/f/i;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/miui/penengine/f/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/miui/penengine/facade/algorithm/JNIPathEstimateInterface;->destroy()I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    invoke-interface {p0, p1}, Lcom/miui/penengine/f/c;->b(I)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    invoke-interface {p0, p1, p2}, Lcom/miui/penengine/f/c;->b(J)V

    return-void
.end method

.method public a(Lcom/miui/penengine/d/c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    invoke-interface {p0, p1}, Lcom/miui/penengine/f/c;->a(Lcom/miui/penengine/d/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/penengine/f/i;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPoint error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0, p1}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Lcom/miui/penengine/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    return-object p0
.end method

.method public b(J)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    invoke-interface {p0, p1, p2}, Lcom/miui/penengine/f/c;->a(J)V

    return-void
.end method

.method public c()Lcom/miui/penengine/f/f;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/penengine/f/i;->d()[Lcom/miui/penengine/f/f;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()[Lcom/miui/penengine/f/f;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/miui/penengine/f/i;->a:Lcom/miui/penengine/f/c;

    invoke-interface {p0}, Lcom/miui/penengine/f/c;->a()[Lcom/miui/penengine/f/f;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/miui/penengine/f/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPredictPoints error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/miui/penengine/d/d;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
