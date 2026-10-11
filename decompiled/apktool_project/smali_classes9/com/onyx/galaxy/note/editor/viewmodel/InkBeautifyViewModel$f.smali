.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;
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

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;->e:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;-><init>()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;->e:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setLang(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "ink_beautify"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->getRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->shouldEnableSegmentFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setSegmentation(Z)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;->e:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;->f:Ljava/util/List;

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$f;->a(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
