.class public Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToPhoneVerify;,
        Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToEmailVerify;,
        Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToWechatVerify;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyMethodToEmailVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToEmailVerify;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToEmailVerify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToEmailVerify;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$a;)V

    return-object v0
.end method

.method public static verifyMethodToPhoneVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToPhoneVerify;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToPhoneVerify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToPhoneVerify;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$a;)V

    return-object v0
.end method

.method public static verifyMethodToWechatVerify(Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToWechatVerify;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToWechatVerify;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$VerifyMethodToWechatVerify;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/usercenter/ui/VerifyMethodFragmentDirections$a;)V

    return-object v0
.end method
