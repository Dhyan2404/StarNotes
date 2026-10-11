.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->o(Ljava/util/Map;Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map$Entry;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;",
            "Ljava/util/Map$Entry<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->f:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->f:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->g:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->access$addShapes(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
