.class public final Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteModePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteModePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n256#2,2:72\n256#2,2:74\n256#2,2:76\n*S KotlinDebug\n*F\n+ 1 NoteModePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteModePopup\n*L\n65#1:72,2\n67#1:74,2\n69#1:76,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0017B!\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "o",
        "s",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;",
        "q",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;",
        "getListener",
        "()Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;",
        "listener",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;",
        "r",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
        "NoteModeListener",
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
        "SMAP\nNoteModePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteModePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteModePopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n256#2,2:72\n256#2,2:74\n256#2,2:76\n*S KotlinDebug\n*F\n+ 1 NoteModePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteModePopup\n*L\n65#1:72,2\n67#1:74,2\n69#1:76,2\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;

    .line 5
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->r:Lkotlin/Lazy;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->o()V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->s()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->READING:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-interface {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;->onNoteMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-interface {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;->onNoteMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-interface {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;->onNoteMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->q:Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup$NoteModeListener;

    return-object p0
.end method

.method public final n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    return-object p0
.end method

.method public final o()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->llyReadingMode:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyReadingMode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/wyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/wyj;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->llyStylusMode:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyStylusMode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/xyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/xyj;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->llyFingerMode:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyFingerMode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/yyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/yyj;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->llyReadingMode:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isReadingMode()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->ivReadingModeSelected:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivReadingModeSelected"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isReadingMode()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->llyStylusMode:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isStylusMode()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->ivStylusModeSelected:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivStylusModeSelected"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isStylusMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->llyFingerMode:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isFingerMode()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteModePopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupNoteModeBinding;->ivFingerModeSelected:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivFingerModeSelected"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isFingerMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
