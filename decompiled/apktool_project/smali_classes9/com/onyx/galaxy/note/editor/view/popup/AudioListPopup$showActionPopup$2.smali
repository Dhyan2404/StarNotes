.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->M(Ljava/util/List;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2",
        "Lcom/onyx/galaxy/note/editor/view/popup/AudioActionPopup$ActionListener;",
        "audioLink",
        "",
        "audioRecognize",
        "delete",
        "gotoLink",
        "rename",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

.field public final synthetic b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

.field public final synthetic c:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->c:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioLink()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsStoolbarRecordInEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/event/StatisticsStoolbarRecordInEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    const-string v1, "click_galaxy_audioRecord_0007"

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$reportOperateEvent(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$onAudioLink(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public audioRecognize()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$onAudioRecognize(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public delete()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$removeAudioList(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    const-string v1, "click_galaxy_audioRecord_0012"

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$reportOperateEvent(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method

.method public gotoLink()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->c:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public rename()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$renameAudio(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    const-string v1, "click_galaxy_audioRecord_0013"

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$showActionPopup$2;->b:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$reportOperateEvent(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    return-void
.end method
