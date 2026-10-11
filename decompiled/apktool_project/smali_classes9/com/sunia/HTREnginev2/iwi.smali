.class public final synthetic Lcom/sunia/HTREnginev2/iwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iwi;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iwi;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/action/layer/ToggleNotePageLayerLockAction;)V

    return-void
.end method
