.class public final synthetic Lcom/sunia/HTREnginev2/t2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t2g;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t2g;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t2g;->e:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2g;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->J(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method
