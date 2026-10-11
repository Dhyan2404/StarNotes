.class public final synthetic Lcom/sunia/HTREnginev2/s2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s2g;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s2g;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->L(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    return-void
.end method
