.class public Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountCenterToWechatVerify"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string p0, "purpose"

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"purpose\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    const-string v3, "purpose"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getActionId()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getActionId()I

    move-result p1

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getActionId()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/R$id;->account_center_to_wechat_verify:I

    return p0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    const-string v2, "purpose"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getPurpose()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    const-string v0, "purpose"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getActionId()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setPurpose(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->a:Ljava/util/HashMap;

    const-string v1, "purpose"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"purpose\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountCenterToWechatVerify(actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getActionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountCenterFragmentDirections$AccountCenterToWechatVerify;->getPurpose()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
