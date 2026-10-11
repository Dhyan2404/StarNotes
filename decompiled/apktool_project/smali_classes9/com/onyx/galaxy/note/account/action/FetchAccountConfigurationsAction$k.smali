.class public final Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/bean/ResultData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/ResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->updateChannelAuth(Lcom/onyx/android/sdk/data/account/bean/ResultData;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;->a(Lcom/onyx/android/sdk/data/account/bean/ResultData;)V

    return-void
.end method
