.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->Q(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILkotlin/jvm/functions/Function1;)V
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

.field public final synthetic f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;->f:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
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

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;->f:Landroid/graphics/RectF;

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$u;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
