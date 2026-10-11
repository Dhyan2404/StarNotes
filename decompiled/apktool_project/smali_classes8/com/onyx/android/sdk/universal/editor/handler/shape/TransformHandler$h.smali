.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->onInsertConvertTextEvent(Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->f:Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->access$getRenderContext(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v3

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->f:Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;->getContent()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->f:Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/InsertConvertedTextEvent;->getTextContentTypes()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$h;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
