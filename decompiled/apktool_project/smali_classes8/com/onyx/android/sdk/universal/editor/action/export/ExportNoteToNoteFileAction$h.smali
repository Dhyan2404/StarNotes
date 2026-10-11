.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->R(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

.field public final synthetic g:Ljava/io/File;

.field public final synthetic h:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->g:Ljava/io/File;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->h:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Ljava/io/File;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->g:Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->h:Ljava/io/File;

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;->access$zipExportFolder(Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportNoteToNoteFileAction$h;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
