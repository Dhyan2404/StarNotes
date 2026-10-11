.class final Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->addPencilBox(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $penBox:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;->$penBox:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;->invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->getBoxList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;->$penBox:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;->$penBox:Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->ensureUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->setSelectedId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
