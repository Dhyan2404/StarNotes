.class public final Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 $2\u00020\u0001:\u0001$B)\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "A",
        "t",
        "v",
        "J",
        "M",
        "y",
        "w",
        "K",
        "x",
        "",
        "eventId",
        "L",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "r",
        "I",
        "pageIndex",
        "",
        "s",
        "Z",
        "full",
        "Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;",
        "Lkotlin/Lazy;",
        "z",
        "()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;IZ)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DocOverviewActionPopup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_FULL:Ljava/lang/String; = "DocOverviewActionPopup_Full"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:I

.field public final s:Z

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;IZ)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p2, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    .line 5
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$binding$2;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->t:Lkotlin/Lazy;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->A()V

    if-eqz p4, :cond_0

    const-string p1, "view_galaxy_docsOverview_0004"

    goto :goto_0

    :cond_0
    const-string p1, "view_galaxy_docsOverview_0002"

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;IZ)V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->J()V

    return-void
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->y()V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->M()V

    return-void
.end method

.method public static final E(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->w()V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->K()V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->x()V

    return-void
.end method

.method public static final H(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->v()V

    return-void
.end method

.method public static final I(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->t()V

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getFull$p(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    return p0
.end method

.method public static final synthetic access$reportEvent(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->I(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->E(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->H(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->C(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->B(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->u(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->G(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->F(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final u(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->pastePage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->isCanPastePage(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->addPageAfterCurrentPage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "addPageAfterCurrentPage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/w7f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w7f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->shortClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->duplicateCurrentPage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "duplicateCurrentPage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/x7f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x7f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->shortClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->rotateCurrentPage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "rotateCurrentPage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/y7f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y7f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->shortClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->cloneCurrentPage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/z7f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z7f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->pastePage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/a8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a8f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->deleteCurrentPage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "deleteCurrentPage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/b8f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/b8f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->addToToc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "addToToc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/c8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c8f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->shortClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;->addToCustomPaper:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "addToCustomPaper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/d8f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d8f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->shortClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final J()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageAfterSpecifiedPageEvent;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageAfterSpecifiedPageEvent;-><init>(I)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "click_galaxy_page_add_0004"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_page_add_0002"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public final K()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;-><init>(I)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Create;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Create;-><init>(Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;)V

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/bean/PasteState;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final M()V
    .locals 8

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$rotateCurrentPage$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$rotateCurrentPage$1;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->rotatePages$default(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final t()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/v7f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/v7f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->addToCustomPaper(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lio/reactivex/rxjava3/functions/Action;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "click_galaxy_custom_template_0002"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_custom_template_0001"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public final v()V
    .locals 9

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    const-string v0, ""

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    invoke-direct {v3, v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    new-instance v8, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$addToToc$1;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$addToToc$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "click_galaxy_outline_add_0004"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_outline_add_0001"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public final w()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getClonePageInfo()Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ClonePageInfo;->setDocId(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;-><init>(IIZ)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/ClonePageEvent;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Create;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Create;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ClonePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/bean/CloneState;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final x()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->prohibit_delete_all_page_warning:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "view_galaxy_docsOverview_0005"

    goto :goto_0

    :cond_1
    const-string v0, "view_galaxy_noteEditor_docsOverview_0001"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    if-eqz v0, :cond_2

    const-string v0, "click_galaxy_docsOverview_0006"

    goto :goto_1

    :cond_2
    const-string v0, "click_galaxy_docsOverview_0003"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->r:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;-><init>(IIZ)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEvent;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "click_galaxy_page_add_0005"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_page_add_0003"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->L(Ljava/lang/String;)V

    return-void
.end method

.method public final z()Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupDocOverviewActionBinding;

    return-object p0
.end method
