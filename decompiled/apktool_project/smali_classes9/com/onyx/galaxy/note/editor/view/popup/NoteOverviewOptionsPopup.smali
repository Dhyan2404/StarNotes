.class public final Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteOverviewOptionsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewOptionsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n256#2,2:73\n288#3,2:75\n*S KotlinDebug\n*F\n+ 1 NoteOverviewOptionsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup\n*L\n43#1:73,2\n45#1:75,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "s",
        "o",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "q",
        "Ljava/util/List;",
        "getNoteTabList",
        "()Ljava/util/List;",
        "noteTabList",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "getNote",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "note",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V",
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
        "SMAP\nNoteOverviewOptionsPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewOptionsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n256#2,2:73\n288#3,2:75\n*S KotlinDebug\n*F\n+ 1 NoteOverviewOptionsPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup\n*L\n43#1:73,2\n45#1:75,2\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteTabList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "note"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->q:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->s:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->o()V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewCloseDocumentEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->UP_DOWN:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->LEFT_RIGHT:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getNote()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->r:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-object p0
.end method

.method public final getNoteTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->q:Ljava/util/List;

    return-object p0
.end method

.method public final n()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;

    return-object p0
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;->tvCloseNote:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvCloseNote"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->q:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup$initListener$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup$initListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;->tvCloseNote:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/xzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xzj;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;->tvUpDownSplit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/yzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yzj;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;->tvLeftRightSplit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/zzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zzj;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupNoteOverviewOptionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method
