.class public final Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsThemeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsThemeViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00080\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002R*\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001e\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R.\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u000b0\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "initPayment",
        "e",
        "Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;",
        "paymentResult",
        "Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;",
        "userThemeResult",
        "d",
        "f",
        "",
        "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;",
        "i",
        "Ljava/util/List;",
        "getUserThemeList",
        "()Ljava/util/List;",
        "setUserThemeList",
        "(Ljava/util/List;)V",
        "userThemeList",
        "",
        "j",
        "Z",
        "isPaymentEnable",
        "()Z",
        "setPaymentEnable",
        "(Z)V",
        "k",
        "getHasPayment",
        "setHasPayment",
        "hasPayment",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "l",
        "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "getProductInfoBean",
        "()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;",
        "setProductInfoBean",
        "(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V",
        "productInfoBean",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/theme/SkinBean;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "getThemeDisplayList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setThemeDisplayList",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "themeDisplayList",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsThemeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsThemeViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
    }
.end annotation


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/theme/SkinBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->getDisplayList$default(Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$combinedResult(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->d(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;)V

    return-void
.end method

.method public static final synthetic access$updatePaymentThemeList(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->f()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->isPaymentEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->j:Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->getHasPayment()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->k:Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;->getProductBean()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->l:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;->getUserThemeList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->i:Ljava/util/List;

    return-void
.end method

.method public final e()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$a;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$a;-><init>(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;)V

    invoke-static {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel$b;-><init>(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f()V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->defaultThemeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/theme/SkinBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/theme/SkinBean;->getThemeStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->Companion:Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle$Companion;->getPaymentStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->j:Z

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/theme/SkinBean;->setDisplay(Z)V

    :cond_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->i:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/StringKt;->toHexValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/theme/SkinBean;->getThemeType()I

    move-result v8

    if-ne v7, v8, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_4
    check-cast v5, Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;

    :cond_5
    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/theme/SkinBean;->setDisplay(Z)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->getDisplayList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getHasPayment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->k:Z

    return p0
.end method

.method public final getProductInfoBean()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->l:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    return-object p0
.end method

.method public final getThemeDisplayList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/theme/SkinBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getUserThemeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->i:Ljava/util/List;

    return-object p0
.end method

.method public final initPayment()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->e()V

    return-void
.end method

.method public final isPaymentEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->j:Z

    return p0
.end method

.method public final setHasPayment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->k:Z

    return-void
.end method

.method public final setPaymentEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->j:Z

    return-void
.end method

.method public final setProductInfoBean(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->l:Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;

    return-void
.end method

.method public final setThemeDisplayList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/theme/SkinBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setUserThemeList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;->i:Ljava/util/List;

    return-void
.end method
