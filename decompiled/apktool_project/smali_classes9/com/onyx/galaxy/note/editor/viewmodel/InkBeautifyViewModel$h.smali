.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

.field public final synthetic i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

.field public final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->e:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->g:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->h:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    iput-object p6, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->j:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;-><init>()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->h:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->i:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setTypeface(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->isFontSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->getRealFontSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setFontSize(Ljava/lang/Float;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->getLineSpacing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setLineSpacing(Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->isLineSpacingChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getTypesetViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->getLineSpacing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->setLineSpacing(Ljava/lang/Float;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->e:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/CloneTransformHWRShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->j:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$h;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
