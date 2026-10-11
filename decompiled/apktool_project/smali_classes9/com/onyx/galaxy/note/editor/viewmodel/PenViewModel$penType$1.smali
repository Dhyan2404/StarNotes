.class public final Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1;
.super Landroidx/lifecycle/MutableLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "setValue",
        "",
        "value",
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
.field public final synthetic m:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1;->m:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1;->m:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    new-instance v7, Lcom/onyx/galaxy/note/editor/data/PenContext;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/data/PenContext;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->setLastPenType(Lcom/onyx/galaxy/note/editor/data/PenContext;)V

    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1;->m:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLastPenType()Lcom/onyx/galaxy/note/editor/data/PenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/PenContext;->getLastShapeTool()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1;->m:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    new-instance v7, Lcom/onyx/galaxy/note/editor/data/PenContext;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/data/PenContext;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->setLastPenType(Lcom/onyx/galaxy/note/editor/data/PenContext;)V

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$penType$1;->setValue(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method
