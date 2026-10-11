.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;->erasing(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$a;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$a;->f:Ljava/util/List;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->collectErasePoint(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$a;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
