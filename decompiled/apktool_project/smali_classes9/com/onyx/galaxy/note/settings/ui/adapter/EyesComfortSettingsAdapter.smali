.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter<",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "u",
        "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "getSelectSetting",
        "()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;",
        "setSelectSetting",
        "(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V",
        "selectSetting",
        "<init>",
        "()V",
        "EyesComfortModeAdapterHolder",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public u:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;->getDefaultSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->u:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-void
.end method


# virtual methods
.method public final getSelectSetting()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->u:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;

    check-cast p3, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;ILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;ILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;->ivStroke:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->u:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object p0

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getType()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;

    move-result-object v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;->icIndicatorColor:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getIndicatorColor()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;->tvSettingTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;->getTitleResId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter$EyesComfortModeAdapterHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemEyesComfortSettingBinding;)V

    return-object p0
.end method

.method public final setSelectSetting(Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/EyesComfortSettingsAdapter;->u:Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;

    return-void
.end method
