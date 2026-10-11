.class final Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;->C(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lkotlin/Triple<",
        "+",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "+",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "+",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Triple;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $pointList:Lcom/onyx/android/sdk/base/data/TouchPointList;

.field final synthetic $virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->$pointList:Lcom/onyx/android/sdk/base/data/TouchPointList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lkotlin/Triple;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            ")",
            "Lkotlin/Triple<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->loadNotePage(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->$pointList:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDrawingArgs()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->createEraseArgs(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    move-result-object p1

    .line 4
    new-instance v1, Lkotlin/Triple;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StrokeEraserHandlerAction$beforeErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v1, p0, v0, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
