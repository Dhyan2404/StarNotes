.class public final Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->k(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field public final synthetic h:F


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;F)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput p4, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->getHwrBlockOutputs()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->h:F

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ILjava/util/List;F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$f;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
