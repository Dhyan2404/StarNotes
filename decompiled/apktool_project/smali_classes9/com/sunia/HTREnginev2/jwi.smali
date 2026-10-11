.class public final synthetic Lcom/sunia/HTREnginev2/jwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jwi;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jwi;->f:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jwi;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jwi;->f:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->v(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V

    return-void
.end method
