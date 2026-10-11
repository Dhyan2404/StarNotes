.class final Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->onSingleClickEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $event:Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 0

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->isClickValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->access$editorBundle(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$onSingleClickEvent$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/SingleTapUpEvent;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
