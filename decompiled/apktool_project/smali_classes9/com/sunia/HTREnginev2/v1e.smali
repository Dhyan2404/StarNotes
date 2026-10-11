.class public final synthetic Lcom/sunia/HTREnginev2/v1e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v1e;->e:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v1e;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v1e;->e:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v1e;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Z)V

    return-void
.end method
