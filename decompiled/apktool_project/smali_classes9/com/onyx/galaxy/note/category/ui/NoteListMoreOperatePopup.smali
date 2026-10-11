.class public final Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;
.super Lcom/onyx/android/sdk/ui/BasePopWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;,
        Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListMoreOperatePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListMoreOperatePopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,109:1\n256#2,2:110\n256#2,2:112\n256#2,2:114\n256#2,2:116\n*S KotlinDebug\n*F\n+ 1 NoteListMoreOperatePopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup\n*L\n86#1:110,2\n87#1:112,2\n88#1:114,2\n89#1:116,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;",
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "Landroid/view/View;",
        "view",
        "",
        "setContentView",
        "i",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;",
        "l",
        "Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;",
        "operateContext",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;",
        "m",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;)V",
        "MoreOperateCallback",
        "NoteListMoreOperateContext",
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
        "SMAP\nNoteListMoreOperatePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListMoreOperatePopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,109:1\n256#2,2:110\n256#2,2:112\n256#2,2:114\n256#2,2:116\n*S KotlinDebug\n*F\n+ 1 NoteListMoreOperatePopup.kt\ncom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup\n*L\n86#1:110,2\n87#1:112,2\n88#1:114,2\n89#1:116,2\n*E\n"
    }
.end annotation


# instance fields
.field public final k:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operateContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->i()V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->k(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->j(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->getCallback()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;->onToggleDisplay()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->getCallback()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;->onMultiSelect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->getCallback()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;->onSort(Landroid/view/View;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->getCallback()Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$MoreOperateCallback;->onCloudSync()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    return-object p0
.end method

.method public final i()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->isGird()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_display_grid:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_display_linear:I

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->getSortIconId()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_checked:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$drawable;->ic_cloud:I

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->isGird()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/onyx/galaxy/note/R$string;->note_list_op_display_gird:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/onyx/galaxy/note/R$string;->note_list_op_display_linear:I

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvSort:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvMultiSelect:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvCloudSync:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->vDivideSort:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v1, "vDivideSort"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->isShowSync()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvCloudSync:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvCloudSync"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->isShowSync()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v7

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->vDividerSort:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v3, "vDividerSort"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->isShowSort()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvSort:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvSort"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->isShowSort()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvSort:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->l:Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup$NoteListMoreOperateContext;->getSortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDisplayType"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/rxj;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/rxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvMultiSelect:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvMultiSelect"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/sunia/HTREnginev2/sxj;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/sxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;)V

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvSort:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/sunia/HTREnginev2/txj;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/txj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;)V

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->m:Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;

    iget-object v2, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListMoreOperateBinding;->tvCloudSync:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/uxj;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/uxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListMoreOperatePopup;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->popup_shadow_bg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/onyx/galaxy/note/R$style;->popupWindowAnimation:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method
