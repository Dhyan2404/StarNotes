.class public final Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;,
        Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 #2\u00020\u0001:\u0002$#B)\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008!\u0010\"J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;",
        "listener",
        "",
        "setListener",
        "p",
        "n",
        "m",
        "",
        "eventId",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "model",
        "",
        "Z",
        "full",
        "Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;",
        "t",
        "Lkotlin/Lazy;",
        "o",
        "()Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;",
        "binding",
        "u",
        "Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Z)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Z

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Z)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p2, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    .line 5
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s:Z

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$binding$2;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->t:Lkotlin/Lazy;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->p()V

    if-eqz p4, :cond_0

    const-string p1, "view_galaxy_excerpt_0005"

    goto :goto_0

    :cond_0
    const-string p1, "view_galaxy_excerpt_0002"

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Z)V

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getFull$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s:Z

    return p0
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;

    return-object p0
.end method

.method public static final synthetic access$getModel$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->r:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-object p0
.end method

.method public static final synthetic access$reportEvent(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->n()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->m()V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;->delete(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "click_galaxy_excerpt_0008"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_excerpt_0003"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "view_galaxy_excerpt_0006"

    goto :goto_1

    :cond_1
    const-string v0, "view_galaxy_excerpt_0003"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;->onEdited()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s:Z

    if-eqz v0, :cond_1

    const-string v0, "click_galaxy_excerpt_0007"

    goto :goto_0

    :cond_1
    const-string v0, "click_galaxy_excerpt_0002"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->s(Ljava/lang/String;)V

    return-void
.end method

.method public final o()Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;

    return-object p0
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->o()Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->o()Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;->edit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/w6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w6f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->o()Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupDocExcerptActionBinding;->delete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/x6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x6f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;

    return-void
.end method
