.class public final Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->onFunctionSwitchPenBush(Lcom/onyx/android/sdk/universal/editor/events/note/FunctionSwitchPenBushEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;->access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/QuickFunctionEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object p0

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->ensureSwitchUserTool$note_overseasRelease(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    :cond_0
    return-void
.end method
