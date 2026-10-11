.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/settings/data/LanguageType;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,50:1\n256#2,2:51\n256#2,2:53\n*S KotlinDebug\n*F\n+ 1 LanguageAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter\n*L\n36#1:51,2\n37#1:53,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014R*\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00028\u0006@GX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/settings/data/LanguageType;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;",
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
        "value",
        "r",
        "Lcom/onyx/galaxy/note/settings/data/LanguageType;",
        "getSelectLanguage",
        "()Lcom/onyx/galaxy/note/settings/data/LanguageType;",
        "setSelectLanguage",
        "(Lcom/onyx/galaxy/note/settings/data/LanguageType;)V",
        "selectLanguage",
        "<init>",
        "()V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLanguageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,50:1\n256#2,2:51\n256#2,2:53\n*S KotlinDebug\n*F\n+ 1 LanguageAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter\n*L\n36#1:51,2\n37#1:53,2\n*E\n"
    }
.end annotation


# instance fields
.field public r:Lcom/onyx/galaxy/note/settings/data/LanguageType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->CHINESE_SIMPLIFIED:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->r:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    return-void
.end method


# virtual methods
.method public final getSelectLanguage()Lcom/onyx/galaxy/note/settings/data/LanguageType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->r:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;

    check-cast p3, Lcom/onyx/galaxy/note/settings/data/LanguageType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;ILcom/onyx/galaxy/note/settings/data/LanguageType;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;ILcom/onyx/galaxy/note/settings/data/LanguageType;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/settings/data/LanguageType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/LanguageType;->getDisplayName()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;->getDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-eq p2, v1, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    const/16 v1, 0x8

    if-eqz p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v1

    .line 4
    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;->isSelect()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->r:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    if-ne p3, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    .line 6
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;
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

    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_setting_select_contianer:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter$MenuHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setSelectLanguage(Lcom/onyx/galaxy/note/settings/data/LanguageType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/data/LanguageType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LanguageAdapter;->r:Lcom/onyx/galaxy/note/settings/data/LanguageType;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
