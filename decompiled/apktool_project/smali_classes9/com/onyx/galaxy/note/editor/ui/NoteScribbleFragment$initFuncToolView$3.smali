.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$3",
        "Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;",
        "toggleFunctionTool",
        "",
        "type",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "left",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$3;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toggleFunctionTool(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initFuncToolView$3;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$handleFunctionTool(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)V

    return-void
.end method
