.class public final synthetic Lcom/onyx/galaxy/note/editor/handler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

.field public final synthetic f:Lio/reactivex/rxjava3/core/Observable;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lio/reactivex/rxjava3/core/Observable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/a;->e:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/a;->f:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/a;->e:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/a;->f:Lio/reactivex/rxjava3/core/Observable;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->a(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method
