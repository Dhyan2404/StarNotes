.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14;->invoke(Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->g:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
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
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->g:Landroid/graphics/RectF;

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$a;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
