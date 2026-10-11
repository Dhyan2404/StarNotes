.class final Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportImportArgs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportImportArgs$2;->this$0:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportImportArgs$2;->this$0:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->access$getSrcUserId$p(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getUserExportCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->setDirPath(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportImportArgs$2;->invoke()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object p0

    return-object p0
.end method
