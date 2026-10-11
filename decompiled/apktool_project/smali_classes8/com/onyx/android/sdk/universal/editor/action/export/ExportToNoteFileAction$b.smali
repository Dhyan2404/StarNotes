.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->p()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->f:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->g:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;->access$exportImpl(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction$b;->a(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToNoteFileAction;)V

    return-void
.end method
