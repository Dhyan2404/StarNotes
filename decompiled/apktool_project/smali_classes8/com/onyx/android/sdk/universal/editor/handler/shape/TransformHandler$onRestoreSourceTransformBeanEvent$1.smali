.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$1;
.super Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->onRestoreSourceTransformBeanEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$1",
        "Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;",
        "handle",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "sdk-universal_overseasRelease"
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
.field public final synthetic i:Lcom/onyx/android/sdk/note/common/command/Command;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/command/Command;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$1;->i:Lcom/onyx/android/sdk/note/common/command/Command;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public handle()Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$onRestoreSourceTransformBeanEvent$1;->i:Lcom/onyx/android/sdk/note/common/command/Command;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;->getUndoRedoArgs()Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/Command;->undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;->getUndoRedoArgs()Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    move-result-object p0

    return-object p0
.end method
