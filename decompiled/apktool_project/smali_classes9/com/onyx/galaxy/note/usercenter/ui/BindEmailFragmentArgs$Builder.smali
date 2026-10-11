.class public final Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;->a(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string p0, "purpose"

    .line 6
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"purpose\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;-><init>(Ljava/util/HashMap;Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$a;)V

    return-object v0
.end method

.method public getOldSocialAccount()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const-string v0, "oldSocialAccount"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOldVerifyCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const-string v0, "oldVerifyCode"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPurpose()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const-string v0, "purpose"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setOldSocialAccount(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const-string v1, "oldSocialAccount"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"oldSocialAccount\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOldVerifyCode(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const-string v1, "oldVerifyCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"oldVerifyCode\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPurpose(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs$Builder;->a:Ljava/util/HashMap;

    const-string v1, "purpose"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"purpose\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
