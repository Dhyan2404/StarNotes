.class final Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
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
.field final synthetic $noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field final synthetic this$0:Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;->this$0:Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;->$noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;->this$0:Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;->$noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->access$decodeOrientationByFile(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;->invoke()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    return-object p0
.end method
