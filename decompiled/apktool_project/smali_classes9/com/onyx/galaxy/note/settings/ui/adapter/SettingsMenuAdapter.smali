.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;",
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
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;",
        "r",
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;",
        "settingViewModel",
        "<init>",
        "(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;)V",
        "MenuHolder",
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
.field public final r:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "settingViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;->r:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;

    check-cast p3, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;ILcom/onyx/galaxy/note/settings/data/SettingsMenuType;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;ILcom/onyx/galaxy/note/settings/data/SettingsMenuType;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;->r:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p0, p3, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->getTvName()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->getMenuName()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->getIcon()Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->getImageResource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->getIcon()Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setSelected(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->getItemContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->getNewFeatureImage()Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-result-object p0

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->getNewFeatureImageResource()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;->getNewFeatureImage()Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-result-object p0

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->getNewFeatureImageResource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;
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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_settings_menu:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter$MenuHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
