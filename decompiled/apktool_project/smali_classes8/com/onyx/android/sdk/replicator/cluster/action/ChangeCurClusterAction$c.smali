.class public final Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;->e:Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;-><init>()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->setLogoutReason(I)Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction$c;->a(Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
