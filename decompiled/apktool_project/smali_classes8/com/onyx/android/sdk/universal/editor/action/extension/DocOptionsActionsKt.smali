.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0010\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u001a\u0016\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006\u001a\u0012\u0010\u000c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006\u001a\n\u0010\r\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006\u001a\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0000\u001a\n\u0010\u0010\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u0011\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010\u0013\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0006\u001a\n\u0010\u0014\u001a\u00020\u0002*\u00020\u0000\u001a\u0012\u0010\u0016\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0002\u001a\u0012\u0010\u0018\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0002\u001a\u0012\u0010\u001a\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006\u001a\n\u0010\u001b\u001a\u00020\t*\u00020\u0000\u001a\n\u0010\u001c\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u001d\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u001e\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010 \u001a\u00020\u0006*\u00020\u001f\u001a\n\u0010\u0011\u001a\u00020\u0006*\u00020\u001f\u001a\n\u0010\u0007\u001a\u00020\u0006*\u00020\u001f\u001a\n\u0010\u001c\u001a\u00020\u0002*\u00020\u001f\u001a\n\u0010\u001d\u001a\u00020\u0002*\u00020\u001f\u001a\n\u0010\u001e\u001a\u00020\u0002*\u00020\u001f\u001a\n\u0010!\u001a\u00020\u0006*\u00020\u0000\u001a\u0012\u0010!\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006\u001a\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "isFirstApplyMargin",
        "value",
        "setFirstApplyMargin",
        "",
        "getLayoutType",
        "layoutType",
        "",
        "setLayoutType",
        "gravity",
        "setScrollerVerticalGravity",
        "getScrollerVerticalGravity",
        "setScrollerHorizontalGravity",
        "getScrollerHorizontalGravity",
        "isVerticalLayoutType",
        "getPageColumnCount",
        "pageColumnCount",
        "setPageColumnCount",
        "isEnabledPageMultiColumn",
        "continuousPage",
        "setEnabledContinuousPage",
        "adaptiveStrokeWidth",
        "setEnabledAdaptiveStrokeWidth",
        "fetchPolicy",
        "setOptionFetchPolicy",
        "toggleDocFetchPolicy",
        "isEnabledContinuousPage",
        "isEnabledAdaptiveStrokeWidth",
        "isEnabledDocConfig",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "getDisplayPageColumnCount",
        "getScrollerGravity",
        "a",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public static final a(I)I
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->getScrollerHorizontalGravity()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->getScrollerVerticalGravity()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getDisplayPageColumnCount(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->isEnabledPageColumn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getPageColumnCount(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->SINGLE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings$PageColumn;->getCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I

    move-result p0

    return p0
.end method

.method public static final getLayoutType(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getLayoutType()Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$getLayoutType$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$getLayoutType$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getPageColumnCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getPageColumnCount(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I

    move-result p0

    return p0
.end method

.method public static final getPageColumnCount(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getPageColumnCount()Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$getPageColumnCount$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$getPageColumnCount$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getScrollerGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getScrollerGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)I

    move-result p0

    return p0
.end method

.method public static final getScrollerGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getScrollerHorizontalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getScrollerVerticalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->a(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getScrollerHorizontalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getScrollerHorizontalGravity()I

    move-result p0

    return p0
.end method

.method public static final getScrollerVerticalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getScrollerVerticalGravity()I

    move-result p0

    return p0
.end method

.method public static final isEnabledAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result p0

    return p0
.end method

.method public static final isEnabledAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getEnabledAdaptiveStrokeWidth()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$isEnabledAdaptiveStrokeWidth$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$isEnabledAdaptiveStrokeWidth$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result p0

    return p0
.end method

.method public static final isEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getEnabledContinuousPage()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$isEnabledContinuousPage$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$isEnabledContinuousPage$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z

    move-result p0

    return p0
.end method

.method public static final isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->getFetchPolicy()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions$Companion;->isFetchFromDoc(I)Z

    move-result p0

    return p0
.end method

.method public static final isEnabledPageMultiColumn(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getPageColumnCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isFirstApplyMargin(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final isVerticalLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final setEnabledAdaptiveStrokeWidth(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setEnabledAdaptiveStrokeWidth(Z)V

    return-void
.end method

.method public static final setEnabledContinuousPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setEnabledContinuousPage(Z)V

    return-void
.end method

.method public static final setFirstApplyMargin(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt$b;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final setLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setLayoutType(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final setOptionFetchPolicy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setFetchPolicy(I)V

    return-void
.end method

.method public static final setPageColumnCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setPageColumnCount(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final setScrollerHorizontalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setScrollerHorizontalGravity(I)V

    return-void
.end method

.method public static final setScrollerVerticalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setScrollerVerticalGravity(I)V

    return-void
.end method

.method public static final toggleDocFetchPolicy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->setOptionFetchPolicy(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;-><init>(I)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
