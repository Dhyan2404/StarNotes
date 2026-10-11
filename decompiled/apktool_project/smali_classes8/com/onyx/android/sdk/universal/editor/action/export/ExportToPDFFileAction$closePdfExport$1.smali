.class final Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$closePdfExport$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->N(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
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
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$closePdfExport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/reader/ReaderBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$closePdfExport$1;->invoke(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$closePdfExport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->access$getPdfExport$p(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;)Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->close()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction$closePdfExport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;->access$setPdfExport$p(Lcom/onyx/android/sdk/universal/editor/action/export/ExportToPDFFileAction;Lcom/onyx/android/sdk/neopdf/export/PdfExport;)V

    return-void
.end method
