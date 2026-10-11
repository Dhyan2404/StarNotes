.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:F

.field public final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/String;IFLjava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
            "Ljava/lang/String;",
            "IF",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->g:Ljava/lang/String;

    iput p4, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->h:I

    iput p5, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->i:F

    iput-object p6, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->j:Ljava/util/List;

    iput-object p7, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hwrBlockOutputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->setFontPath(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->g:Ljava/lang/String;

    iget v5, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->h:I

    iget v7, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->i:F

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3$a;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3$2;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3$2;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3$3;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v1, v2, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3$3;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$updateInkFont$3;->a(Ljava/util/ArrayList;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
