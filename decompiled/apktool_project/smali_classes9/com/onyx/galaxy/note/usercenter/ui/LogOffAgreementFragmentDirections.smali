.class public Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToMixedVerify;,
        Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToWechatVerify;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAccountCenter()Landroidx/navigation/NavDirections;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    sget v1, Lcom/onyx/galaxy/note/R$id;->to_account_center:I

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method

.method public static toMixedVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToMixedVerify;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToMixedVerify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToMixedVerify;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$a;)V

    return-object v0
.end method

.method public static toWechatVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToWechatVerify;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToWechatVerify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$ToWechatVerify;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragmentDirections$a;)V

    return-object v0
.end method
