.class public final Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;",
        "",
        "",
        "debounceFetch",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "",
        "rxFilter$delegate",
        "Lkotlin/Lazy;",
        "a",
        "()Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "rxFilter",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRxFilter(Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;)Lcom/onyx/android/sdk/base/rx/RxFilter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;->a()Lcom/onyx/android/sdk/base/rx/RxFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/base/rx/RxFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->access$getRxFilter$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-object p0
.end method

.method public final debounceFetch()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
