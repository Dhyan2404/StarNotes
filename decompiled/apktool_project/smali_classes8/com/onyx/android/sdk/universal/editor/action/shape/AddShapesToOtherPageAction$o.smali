.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->r(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
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

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;->f:Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/tag/SavePageTagModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
