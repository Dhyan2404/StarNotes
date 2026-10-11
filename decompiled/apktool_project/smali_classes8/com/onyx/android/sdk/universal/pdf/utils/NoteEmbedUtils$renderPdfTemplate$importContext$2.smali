.class final Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->renderPdfTemplate(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;[ILjava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/neopdf/PdfImportContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/neopdf/PdfImportContext;",
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
.field final synthetic $pdfExport:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

.field final synthetic $srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/export/PdfExport;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;->$srcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;->$pdfExport:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/neopdf/PdfImportContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->Companion:Lcom/onyx/android/sdk/neopdf/PdfImportContext$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;->$srcPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfImportContext$Companion;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;->$pdfExport:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    .line 3
    invoke-interface {p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getImportContextList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;->invoke()Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    move-result-object p0

    return-object p0
.end method
