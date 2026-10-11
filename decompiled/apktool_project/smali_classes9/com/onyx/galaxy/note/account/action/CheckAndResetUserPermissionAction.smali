.class public final Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "l",
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

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkScribbleErasePermission(Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;->l()V

    return-void
.end method

.method public static final synthetic access$checkThemePermission(Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction$a;-><init>(Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction$b;-><init>(Lcom/onyx/galaxy/note/account/action/CheckAndResetUserPermissionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getScribbleEraseSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getScribbleEraseSwitchOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeHelper;->getTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->getThemeByType(I)Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->isVipStyle()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/utils/ThemeExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/SkinType;->DEFAULT:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/onyx/galaxy/note/utils/ThemeExt;->resetTheme$default(Lcom/onyx/galaxy/note/utils/ThemeExt;ILandroid/view/View;ILjava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
