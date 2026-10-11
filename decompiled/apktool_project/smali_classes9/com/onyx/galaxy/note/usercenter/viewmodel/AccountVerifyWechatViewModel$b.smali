.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->f(Landroid/app/Activity;)V
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
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;->f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;->e:Landroid/app/Activity;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;->f:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;

    invoke-virtual {p1, v0, v1, p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->getWeChatInfo(Landroid/content/Context;Landroid/app/Activity;Lcom/onyx/android/sdk/statistics/AuthResultListener;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;->a(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)V

    return-void
.end method
