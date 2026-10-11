.class final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->onChangePenArgsEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$onChangePenArgsEvent$1;->invoke(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->onPenTypeChanged(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setSelectByType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Z)V

    return-void
.end method
