.class public final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->export(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->f:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->h:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->f:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->h:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v2, p1, p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;->onProgress(Ljava/lang/String;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$n;->a(I)V

    return-void
.end method
