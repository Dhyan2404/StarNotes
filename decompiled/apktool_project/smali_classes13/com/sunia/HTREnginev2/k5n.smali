.class public final Lcom/sunia/HTREnginev2/k5n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lorg/greenrobot/eventbus/SubscriberMethod;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k5n;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k5n;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/k5n;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sunia/HTREnginev2/k5n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sunia/HTREnginev2/k5n;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k5n;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/sunia/HTREnginev2/k5n;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k5n;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/k5n;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/SubscriberMethod;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k5n;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k5n;->b:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object p0, p0, Lorg/greenrobot/eventbus/SubscriberMethod;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
