.class public final Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;
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
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->g:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->i:Ljava/util/Set;

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
            "Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->e:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->g:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->i:Ljava/util/Set;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$h;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
