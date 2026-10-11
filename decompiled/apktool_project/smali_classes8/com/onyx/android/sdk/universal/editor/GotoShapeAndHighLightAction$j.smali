.class public final Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;->q()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;

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
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$j;->e:Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$j;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;",
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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$j;->e:Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$j;->f:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;->access$transformShapesMatrix(Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$j;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
