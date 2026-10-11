.class public final Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;
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
.field public static final e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;->e:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;->c()V

    return-void
.end method

.method public static final c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$d;->b(Lkotlin/Unit;)V

    return-void
.end method

.method public final b(Lkotlin/Unit;)V
    .locals 6
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;

    const-string p0, "SuNia"

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/cag;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/cag;-><init>()V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
