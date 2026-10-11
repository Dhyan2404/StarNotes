.class public final Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction<",
        "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "",
        "l",
        "f",
        "Z",
        "loadAccountObservable",
        "<init>",
        "(Z)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->Companion:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;

    sget-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2;->INSTANCE:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$rxFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->g:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getRxFilter$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->g:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$loadAccountObservable(Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$f;-><init>(Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$g;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$h;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$h;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$i;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$i;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$j;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$j;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$k;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$l;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$l;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$m;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$m;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$n;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$n;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$a;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$b;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$c;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$e;-><init>(Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Z
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v0, "account_configurations"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->f:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
