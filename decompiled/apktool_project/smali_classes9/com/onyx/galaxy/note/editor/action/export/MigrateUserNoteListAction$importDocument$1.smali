.class final Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
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
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
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
.field final synthetic $copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

.field final synthetic $documentId:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->$documentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->this$0:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->invoke(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->$documentId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;-><init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    .line 3
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->setCopyNoteArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->setPrintLogToFile(Z)V

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->copyPBDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->this$0:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->access$importStashShapes(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    return-void
.end method
