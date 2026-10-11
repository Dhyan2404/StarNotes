.class public final Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;->l(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->buildFast()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->g:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelsAction$b;->a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
