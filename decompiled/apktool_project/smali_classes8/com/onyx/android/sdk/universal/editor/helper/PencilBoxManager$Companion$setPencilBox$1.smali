.class final Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->setPencilBox(Ljava/util/List;Ljava/lang/String;)V
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
        "manager",
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
.field final synthetic $boxId:Ljava/lang/String;

.field final synthetic $penItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;->$boxId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;->$penItems:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;->invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;->$boxId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->access$getPenBox(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;->$penItems:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->setPenList(Ljava/util/List;)V

    return-void
.end method
