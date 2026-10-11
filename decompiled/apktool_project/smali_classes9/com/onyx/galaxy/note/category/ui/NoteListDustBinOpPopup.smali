.class public final Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;
.super Lcom/onyx/android/sdk/ui/BasePopWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012!\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00040\u0013\u0012!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00040\u0013\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R/\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00040\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R/\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00040\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0017\u0010!\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;",
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "Landroid/view/View;",
        "view",
        "",
        "setContentView",
        "anchor",
        "show",
        "Landroid/graphics/Point;",
        "g",
        "h",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "syncNoteModel",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "noteModelBean",
        "m",
        "Lkotlin/jvm/functions/Function1;",
        "dustBinDeleteNote",
        "n",
        "dustBinRestoreNote",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;",
        "o",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
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
.field public final k:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncNoteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dustBinDeleteNote"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dustBinRestoreNote"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->l:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->m:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->n:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->h()V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->i(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->j(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->m:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->l:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->n:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->l:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final g(Landroid/view/View;)Landroid/graphics/Point;
    .locals 8

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getDrawingPosition(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const-string v4, "getContentView(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v1, v1, v4, v5}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    aget v1, v2, v1

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    aget v2, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v2, p1

    invoke-direct {v4, v1, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->k:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    iget p1, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p0

    float-to-int p0, v1

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Point;->x:I

    return-object v0
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;->btnDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/zwj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zwj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListDustBinOpBinding;->btnRestore:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/axj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/axj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->k:Landroid/content/Context;

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

.method public final show(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;->g(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
