.class public final Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->writeDraftPage(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1",
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;",
        "onThresholdReached",
        "",
        "shouldAbortExport",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;

.field public final synthetic b:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;",
            "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;->a:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;->b:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdReached()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdfShape save thresholdCountCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;->a:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->getSavedPdfShapeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;->b:Lcom/onyx/android/sdk/neopdf/export/PdfExport;

    invoke-static {v0, p0, v3}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->access$endAndRestartPageBackgroundRender(Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V

    return-void
.end method

.method public shouldAbortExport()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
