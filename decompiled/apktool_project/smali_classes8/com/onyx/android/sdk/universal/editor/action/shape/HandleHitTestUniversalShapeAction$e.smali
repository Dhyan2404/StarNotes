.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;->m()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandleHitTestUniversalShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleHitTestUniversalShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$startUniversalShapeEdit$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHandleHitTestUniversalShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleHitTestUniversalShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$startUniversalShapeEdit$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;",
            "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->f:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->f:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->g:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartEditUniversalShapeAction;->setReferenceShapes(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$e;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
