.class public final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1;
.super Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n1#2:1069\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;",
        "onItemMoved",
        "",
        "fromPos",
        "",
        "toPos",
        "onSelectedChanged",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n1#2:1069\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic J:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1;->J:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V

    return-void
.end method


# virtual methods
.method public onItemMoved(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->onItemMoved(II)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    const/4 v1, 0x0

    if-ge p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {v0, p1, p2, v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;-><init>(IIZZ)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " docOverview onItemMoved, fromPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toPos:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1;->J:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$reattachItemTouchHelper(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/MovePageAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/MovePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/MovePageAction;->setMovePageArgs(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1;->J:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$1$a;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string p0, "doOnNext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onSelectedChanged()V
    .locals 0

    return-void
.end method
