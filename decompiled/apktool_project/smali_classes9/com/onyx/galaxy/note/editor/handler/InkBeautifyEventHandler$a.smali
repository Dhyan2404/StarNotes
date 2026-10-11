.class public final Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$a;
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

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$a;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$a;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->getRelayoutShapes()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$a;->a(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
