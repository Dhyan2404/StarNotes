.class final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
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
.field final synthetic $args:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

.field final synthetic $hwrShapeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $model:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

.field final synthetic $notePageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$args:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$notePageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$hwrShapeList:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$model:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/selection/NormalizeTextShapesFontSizeAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$args:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$notePageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$hwrShapeList:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$model:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/selection/NormalizeTextShapesFontSizeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->$hwrShapeList:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$6;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
