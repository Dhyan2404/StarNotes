.class public final Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->Companion:Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest$Companion;->getBearerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "authorization"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->webWidget:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->loadUrlWithHeader(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$a;->a(Ljava/lang/String;)V

    return-void
.end method
