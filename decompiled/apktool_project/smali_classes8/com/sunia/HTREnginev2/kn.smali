.class public final synthetic Lcom/sunia/HTREnginev2/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kn;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kn;->e:Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->m(Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method
