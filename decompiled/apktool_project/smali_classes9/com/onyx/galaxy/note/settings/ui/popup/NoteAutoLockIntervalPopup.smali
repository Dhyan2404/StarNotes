.class public final Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;
.super Lcom/onyx/android/sdk/ui/BasePopWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\rR\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;",
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "Landroid/view/View;",
        "contentView",
        "",
        "setContentView",
        "e",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "",
        "l",
        "I",
        "selectIndex",
        "Lkotlin/Function1;",
        "m",
        "Lkotlin/jvm/functions/Function1;",
        "pickCallback",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;",
        "n",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;",
        "binding",
        "o",
        "visibleItemCount",
        "Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;",
        "p",
        "Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;",
        "adapter",
        "<init>",
        "(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V",
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

.field public final l:I

.field public final m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:I

.field public final p:Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pickCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->k:Landroid/content/Context;

    iput p2, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->l:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->m:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->n:Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;

    const/4 p2, 0x5

    iput p2, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->o:I

    new-instance p2, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    const/4 p3, 0x0

    const/16 v0, 0x1e

    invoke-direct {p2, p3, v0}, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;-><init>(II)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->p:Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->e()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;)Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->p:Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    return-object p0
.end method

.method public static final synthetic access$getPickCallback$p(Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->m:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->n:Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAlphaGradient(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCyclic(Z)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->counter_label_minute:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->isCenterLabel(Z)V

    iget v1, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->o:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setItemsVisibleCount(I)V

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setOnItemSelectedListener(Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->n:Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->p:Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setAdapter(Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->n:Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteAutoLockIntervalBinding;->wvMinute:Lcom/onyx/android/sdk/ui/wheelview/WheelView;

    iget p0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->l:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->k:Landroid/content/Context;

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
