.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0015B!\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "q",
        "",
        "Z",
        "existShape",
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;",
        "r",
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;",
        "actionListener",
        "Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;",
        "s",
        "Lkotlin/Lazy;",
        "p",
        "()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;ZLcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;)V",
        "ActionListener",
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
.field public final q:Z

.field public final r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->q:Z

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;

    .line 5
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->s:Lkotlin/Lazy;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->q()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;-><init>(Landroid/content/Context;ZLcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->s(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->u(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->v(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->t(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;->audioRecognize()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;->audioLink()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;->gotoLink()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;->rename()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;->delete()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    return-object p0
.end method

.method public final q()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->setDefaultAttribute(Landroid/widget/PopupWindow;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->audioRecognize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "audioRecognize"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/oh;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/oh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->audioLink:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "audioLink"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/ph;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ph;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->gotoLink:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "gotoLink"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/qh;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->rename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "rename"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/rh;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "delete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/sh;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/sh;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->audioLink:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->q:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->p()Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupAudioActionBinding;->gotoLink:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup;->q:Z

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method
