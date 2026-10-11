.class public final Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteEmbedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteEmbedUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,816:1\n288#2,2:817\n1603#2,9:819\n1855#2:828\n1856#2:830\n1612#2:831\n1855#2:833\n1856#2:845\n1864#2,3:874\n1855#2,2:880\n1#3:829\n1#3:832\n18#4,4:834\n50#4,7:838\n344#5,3:846\n344#5,3:860\n344#5,3:863\n344#5,3:866\n344#5,3:869\n344#5,3:877\n215#6,2:849\n215#6,2:858\n526#7:851\n511#7,6:852\n37#8,2:872\n*S KotlinDebug\n*F\n+ 1 NoteEmbedUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils\n*L\n106#1:817,2\n154#1:819,9\n154#1:828\n154#1:830\n154#1:831\n156#1:833\n156#1:845\n730#1:874,3\n804#1:880,2\n154#1:829\n180#1:834,4\n180#1:838,7\n248#1:846,3\n523#1:860,3\n563#1:863,3\n589#1:866,3\n595#1:869,3\n766#1:877,3\n378#1:849,2\n429#1:858,2\n426#1:851\n426#1:852,6\n679#1:872,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008W\u0010XJ0\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0004H\u0002J\"\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008H\u0002J(\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J \u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J(\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J$\u0010#\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!H\u0002J$\u0010%\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!H\u0002J,\u0010\'\u001a\u00020\u001f2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001dH\u0002J,\u0010)\u001a\u00020\u001f2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001dH\u0002J(\u0010-\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010,\u001a\u00020+H\u0002J0\u00106\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J0\u00107\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J0\u00108\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J0\u00109\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010:\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010;\u001a\u00020\r2\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J0\u0010=\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\rH\u0002J4\u0010@\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u001f0>J.\u0010A\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\u000b2\u0006\u00101\u001a\u000200J.\u0010G\u001a\u00020\u001f2\u0006\u0010D\u001a\u00020C2\u0006\u0010F\u001a\u00020E2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00103\u001a\u0002022\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010J\u001a\u0004\u0018\u00010I*\u00020\u001b2\u0008\u0010H\u001a\u0004\u0018\u00010\u0011J\u000e\u0010N\u001a\u00020M2\u0006\u0010L\u001a\u00020KJ&\u0010O\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u0006J<\u0010U\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010P\u001a\u00020\u00062\u0006\u0010R\u001a\u00020Q2\u000c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00060SJ&\u0010V\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;",
        "",
        "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
        "neoPdf",
        "",
        "pageIndex",
        "",
        "pageId",
        "Landroid/graphics/RectF;",
        "rectF",
        "color",
        "",
        "t",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "pageBoxInfo",
        "dstPageRect",
        "pageOriginRect",
        "Landroid/graphics/Matrix;",
        "p",
        "pageSizeWithMargin",
        "contentInfo",
        "exportRect",
        "contentOriginRectF",
        "o",
        "Landroid/graphics/Rect;",
        "pageRect",
        "c",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
        "args",
        "",
        "u",
        "",
        "pendingShapeMap",
        "h",
        "shapeLinkShapeMap",
        "g",
        "embedShapeArgs",
        "e",
        "linkShapeMap",
        "d",
        "pdfNative",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
        "pdfExport",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "exportArgs",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "virtualPage",
        "j",
        "n",
        "k",
        "l",
        "f",
        "i",
        "box",
        "m",
        "Lkotlin/Function0;",
        "abortCallback",
        "writeDraftPage",
        "writeNotePageShapes",
        "saveFile",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "noteDocument",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "writePageShapes",
        "renderMatrix",
        "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
        "toPdfHighlight",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;",
        "createPdfPageLayerInfo",
        "renderContentTemplate",
        "srcPath",
        "",
        "contentIndexList",
        "",
        "pageIdList",
        "renderPdfTemplate",
        "renderAppendPage",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteEmbedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteEmbedUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,816:1\n288#2,2:817\n1603#2,9:819\n1855#2:828\n1856#2:830\n1612#2:831\n1855#2:833\n1856#2:845\n1864#2,3:874\n1855#2,2:880\n1#3:829\n1#3:832\n18#4,4:834\n50#4,7:838\n344#5,3:846\n344#5,3:860\n344#5,3:863\n344#5,3:866\n344#5,3:869\n344#5,3:877\n215#6,2:849\n215#6,2:858\n526#7:851\n511#7,6:852\n37#8,2:872\n*S KotlinDebug\n*F\n+ 1 NoteEmbedUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils\n*L\n106#1:817,2\n154#1:819,9\n154#1:828\n154#1:830\n154#1:831\n156#1:833\n156#1:845\n730#1:874,3\n804#1:880,2\n154#1:829\n180#1:834,4\n180#1:838,7\n248#1:846,3\n523#1:860,3\n563#1:863,3\n589#1:866,3\n595#1:869,3\n766#1:877,3\n378#1:849,2\n429#1:858,2\n426#1:851\n426#1:852,6\n679#1:872,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->s(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$endAndRestartPageBackgroundRender(Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->f(Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->r(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    return p0
.end method

.method public static final r(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final s(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p0, p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->appendPage(Ljava/lang/String;FF)Z

    return-void
.end method

.method public final createPdfPageLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->toPdfLayerId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->currentLayerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    new-instance v5, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-direct {v5}, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;-><init>()V

    sget-object v6, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->toPdfLayerId(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;->id:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result v4

    iput-boolean v4, v5, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;->visible:Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    return-object p0
.end method

.method public final d(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
            ")Z"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isLinkShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShape(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getMatrixValues()[F

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues([F)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getType()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string p2, "PAGE_NUMBER"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    const-string p2, "NOTE"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetPageIndex()I

    move-result p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getPageIndex()I

    move-result p2

    if-le p0, p2, :cond_5

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :cond_5
    return v2
.end method

.method public final e(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->d(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V
    .locals 0

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->endPageBackgroundRender()Z

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->beginPageBackgroundRender(I)Z

    :cond_0
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->createLinkModel(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;->getTargetPageIndex()I

    move-result v4

    if-gt v4, p0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getPageIndex()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->u(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final h(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/NeoPdf;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->g(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/Map;)V

    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 p3, 0x1

    int-to-float p3, p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getBenchmarkScale()F

    move-result p2

    div-float/2addr p3, p2

    invoke-static {p1, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    return-object p0
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geo_layout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v3, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getLayoutType()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "LayoutImage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->k(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->n(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :goto_1
    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 10

    invoke-interface {p2}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    sget-object v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v7, v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->l(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, p5, v1, v8}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->p(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0, v9, p1, p2, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->resizePageWithContent(IFFLandroid/graphics/Matrix;)Z

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportTemplate()Z

    move-result v2

    invoke-interface/range {p2 .. p2}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3, v7, v8}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offsetToOrigin()V

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getTemplateLimitSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v8

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    const/4 v9, 0x0

    if-gez v8, :cond_2

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v10

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v11, v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-direct {v8, v9, v9, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-direct {v8, v9, v9, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_1
    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->beginPageBackgroundRender(I)Z

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v9

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v12

    cmpg-float v12, v9, v12

    if-gez v12, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v12

    invoke-static {v8}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setBox(Landroid/graphics/RectF;)V

    new-instance v13, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v14

    invoke-direct {v13, v14, v12, v2}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    invoke-virtual {v13}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v12

    invoke-static {v12}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    neg-float v14, v7

    neg-float v15, v9

    invoke-virtual {v12, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v15, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual/range {p4 .. p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v17

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v14

    invoke-static {v14}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v19

    invoke-virtual {v13}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v22

    const/16 v23, 0x40

    const/16 v24, 0x0

    move-object v14, v15

    move-object v10, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v24}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;-><init>(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;

    invoke-static/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v14

    invoke-direct {v12, v14, v10}, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V

    invoke-virtual {v12}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    :cond_3
    invoke-static {v8}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10, v7, v9}, Landroid/graphics/RectF;->offset(FF)V

    iget v12, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iput v12, v10, Landroid/graphics/RectF;->bottom:F

    sget-object v12, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v12}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v12

    sget-object v14, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v14}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPageId(Ljava/lang/String;)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v14}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    const-string v14, "0"

    invoke-virtual {v12, v14}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLayerId(Ljava/lang/String;)V

    const-string v14, ""

    invoke-virtual {v12, v14}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v10}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v12, v10}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v12}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->drawPageBackgroundShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    add-float/2addr v7, v10

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result v10

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v7

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v10

    add-float/2addr v9, v10

    :cond_4
    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v10, v11, 0xa

    if-nez v10, :cond_5

    invoke-virtual {v0, v1, v6}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->f(Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V

    sget-object v10, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v12, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " pdf renderBg("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") save by native size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v15, Lcom/onyx/android/sdk/base/utils/MemoryUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MemoryUtils;

    move/from16 v17, v2

    move-object/from16 v16, v3

    invoke-virtual {v15}, Lcom/onyx/android/sdk/base/utils/MemoryUtils;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v12, v2, v13}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move/from16 v17, v2

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_2

    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->f(Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 17

    move-object/from16 v6, p4

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPixel;->hasMargin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPageIndexMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->beginPageBackgroundRender(I)Z

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->getPageMarginTemplateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin;->Companion:Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion;

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v3

    invoke-virtual {v2, v1, v6, v3}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutMargin$Companion;->loadFromFileOrDefault(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/NeoPdf;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    move-result-object v8

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x1

    int-to-float v3, v2

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getBenchmarkScale()F

    move-result v4

    div-float v4, v3, v4

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getBenchmarkScale()F

    move-result v5

    div-float/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    const/4 v9, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getBenchmarkScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scale(Landroid/graphics/RectF;Ljava/lang/Number;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v2, v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->updateVirtualPageSize(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v2, v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->rotate(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object v10, v3

    goto :goto_1

    :cond_2
    move-object/from16 v2, p5

    move-object v10, v1

    :goto_1
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v3

    neg-float v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v16}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotateSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getBenchmarkScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scale(Landroid/graphics/RectF;Ljava/lang/Number;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    invoke-virtual {v8, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setViewport(Landroid/graphics/RectF;)V

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->getNonIntersectRectFs(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    sget-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getColor()I

    move-result v5

    move v2, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->t(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILjava/lang/String;Landroid/graphics/RectF;I)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v8, v0, v9, v10}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->drawMarginTemplate(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->endPageBackgroundRender()Z

    :cond_4
    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result v1

    invoke-interface/range {p2 .. p2}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2, v4, v5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportTemplate()Z

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getTemplateLimitSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getTemplateLimitSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/data/SizeF;->ratioPageSize(Lcom/onyx/android/sdk/base/data/Size;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v3, v4, v5, v6, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    new-instance v5, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    if-eqz v2, :cond_2

    new-instance v2, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual/range {p4 .. p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v9

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v15

    const/16 v16, 0x40

    const/16 v17, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v17}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;-><init>(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;

    invoke-static/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/request/page/CreateVirtualPageBitmapRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->q(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final o(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 8

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v1, p1

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p4

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotate$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)V

    invoke-static {p4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_3

    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_3

    :cond_3
    const/high16 v0, 0x43870000    # 270.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p2, p4

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget p1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p3

    sub-float/2addr p2, p3

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1
.end method

.method public final p(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->o(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const-string v2, ""

    const-string v5, "{}"

    move-object v0, p1

    move v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->setBackground(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    return-void
.end method

.method public final renderAppendPage(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/neopdf/export/PdfExport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pdfExport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->i(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1, p4, v2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->c(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/lang/String;Landroid/graphics/Rect;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->m(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    return-void
.end method

.method public final renderContentTemplate(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)V
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/neopdf/export/PdfExport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    const-string v0, "pdfExport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, p0

    invoke-virtual {p0, p2, p3, v9}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->i(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v11

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->j(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->m(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    return-void
.end method

.method public final renderPdfTemplate(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;[ILjava/util/List;)Ljava/lang/String;
    .locals 21
    .param p1    # Lcom/onyx/android/sdk/neopdf/export/PdfExport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move-object/from16 v1, p6

    const-string v2, "pdfExport"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "editorBundle"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "exportArgs"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "srcPath"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentIndexList"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageIdList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lkotlin/collections/ArraysKt;->first([I)I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getImportContextList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->getSrcPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->getImportedPageIndexList()Ljava/util/List;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    move/from16 v9, v17

    goto :goto_0

    :cond_1
    move/from16 v9, v18

    :goto_0
    if-eqz v9, :cond_0

    goto :goto_1

    :cond_2
    move-object v4, v15

    :goto_1
    new-instance v2, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;

    invoke-direct {v2, v6, v0}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$renderPdfTemplate$importContext$2;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/neopdf/export/PdfExport;)V

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v3, 0x10

    const/16 v16, 0x0

    move-object v10, v2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object v4, v15

    move v15, v3

    invoke-static/range {v9 .. v16}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->importPages$default(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/PdfImportContext;Ljava/lang/String;[IILjava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/PdfImportContext;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->getImportedPageIndexList()Ljava/util/List;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lkotlin/collections/ArraysKt;->toList([I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->getObjNumberMapData()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/neopdf/PdfImportContext;->setObjNumberMapData([I)V

    new-instance v15, Lcom/onyx/android/sdk/neopdf/NeoPdf;

    invoke-direct {v15}, Lcom/onyx/android/sdk/neopdf/NeoPdf;-><init>()V

    :try_start_0
    invoke-virtual {v15, v6}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->openDocument(Ljava/lang/String;)J

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v9, v18

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v19, v9, 0x1

    if-gez v9, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPageIndexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v14

    sget-object v1, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    invoke-virtual {v1, v7, v8, v10}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->i(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v11

    sget-object v12, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v2

    invoke-virtual {v12, v2, v14}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->loadPageSize(Lcom/onyx/android/sdk/neopdf/NeoPdf;I)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->hasMargin()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v13

    const/4 v4, 0x0

    cmpg-float v13, v13, v4

    if-nez v13, :cond_4

    move/from16 v13, v17

    goto :goto_3

    :cond_4
    move/from16 v13, v18

    :goto_3
    if-eqz v13, :cond_6

    const/4 v13, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v13, v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->equalsWithTolerance$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v20, v5

    move-object v13, v6

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    move-object v5, v4

    :goto_4
    invoke-virtual {v1, v11, v3, v2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->p(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v4, v14, v13, v3, v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->resizePageWithContent(IFFLandroid/graphics/Matrix;)Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v20, v5

    move-object/from16 v4, p3

    move-object v5, v10

    move-object v13, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->m(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportFlattenPage()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->flattenPage(I)Z

    :cond_8
    aget v1, p5, v9

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPendingPdfPageLinkMap()Ljava/util/LinkedHashMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v12

    move-object v10, v15

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v13, p4

    move v3, v14

    move v14, v1

    move-object v1, v15

    move v15, v3

    :try_start_1
    invoke-virtual/range {v9 .. v15}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->collectPendingPdfLinks(Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/LinkedHashMap;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v5, p5

    move-object v15, v1

    move-object v6, v2

    move/from16 v9, v19

    move-object/from16 v4, v20

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_9
    move-object v1, v15

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_6
    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->closeDocument()Z

    throw v0

    :cond_a
    move-object v2, v6

    invoke-static/range {p4 .. p4}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v17, v18

    :goto_7
    if-eqz v17, :cond_c

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isPdfFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v7, v8, v2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->renderContentTemplate(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    :goto_9
    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final saveFile(Lcom/onyx/android/sdk/neopdf/export/PdfExport;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/neopdf/export/PdfExport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pdfExport"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILjava/lang/String;Landroid/graphics/RectF;I)V
    .locals 2

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;-><init>()V

    sget-object p2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setId(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setType(I)V

    new-array p2, p2, [F

    iget v0, p4, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    iget v1, p4, Landroid/graphics/RectF;->top:F

    aput v1, p2, v0

    const/4 v0, 0x2

    iget v1, p4, Landroid/graphics/RectF;->right:F

    aput v1, p2, v0

    const/4 v0, 0x3

    iget v1, p4, Landroid/graphics/RectF;->bottom:F

    aput v1, p2, v0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    invoke-static {p4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setFillColor(I)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setPageId(Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setMatrix([F)V

    const-string p2, "0"

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLayerId(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setExtraAttr(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->drawPageBackgroundShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    return-void
.end method

.method public final toPdfHighlight(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->fromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConvert;->toPdfHighlight(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isAnnotationShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->toPdfHighlight(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getSaveOptions()Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;->getAuthor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->setAuthor(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->writeHighlight(ILcom/onyx/android/sdk/neopdf/PdfHighlightInfo;)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/ShapeKt;->isTapeShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getRenderTapeInImage()Z

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetType(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShape(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getMatrixValues()[F

    move-result-object p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues([F)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    sget-object p3, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;

    invoke-virtual {p3, p0, p4}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->writeShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    move-result p0

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfShapeUtils;->createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->writeShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final writeDraftPage(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .locals 30
    .param p1    # Lcom/onyx/android/sdk/neopdf/export/PdfExport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neopdf/export/PdfExport;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "pdfExport"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "editorBundle"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "exportArgs"

    move-object/from16 v10, p3

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pageId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "abortCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportDraftPageArgs()Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getBoxInfoList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v6, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8, v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v8

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getCellOriginRectFCopy()Landroid/graphics/RectF;

    move-result-object v9

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iget v12, v9, Landroid/graphics/RectF;->left:F

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v12, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getOriginBoundingRect()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getOriginBoundingRect()Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    invoke-virtual {v11, v9, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v9, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v9, v6}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->pageCount()I

    move-result v6

    const/4 v12, 0x0

    if-nez v6, :cond_10

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getPageRectF()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getPageRectF()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-virtual {v6, v1, v13, v14}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->appendPage(Ljava/lang/String;FF)Z

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportTemplate()Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->pageConfigToTemplateJson(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getGeoContent()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_10

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->beginPageBackgroundRender(I)Z

    invoke-static {v11}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v13

    invoke-static {v11}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v14

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/ExportDraftPageArgs;->getOriginBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    invoke-static {v15}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    sget-object v9, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v7, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v9, v6, v7}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    if-eqz v6, :cond_5

    new-instance v9, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;

    invoke-direct {v9, v6}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPdfNative(Lcom/onyx/android/sdk/neopdf/NeoPdf;)V

    invoke-virtual {v9, v1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPageId(Ljava/lang/String;)V

    new-instance v7, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;

    invoke-direct {v7, v9, v0, v2}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writeDraftPage$1$1$1;-><init>(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v9, v7, v12, v2, v4}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPDFExportCallback$default(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;IILjava/lang/Object;)V

    invoke-virtual {v6, v9}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->setGeoLayoutDrawer(Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;)V

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v15}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    const v7, -0x800001

    const/4 v15, 0x0

    invoke-direct {v4, v7, v7, v15, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v4, v2, v12

    new-instance v4, Landroid/graphics/RectF;

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v4, v7, v15, v15, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v16, 0x1

    aput-object v4, v2, v16

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v15, v15, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v17, 0x2

    aput-object v4, v2, v17

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v15, v7, v12, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v7, 0x3

    aput-object v4, v2, v7

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    invoke-static {v3, v7}, Lcom/onyx/android/sdk/base/extension/RectKt;->intersectRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    const/4 v7, 0x1

    xor-int/2addr v2, v7

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    sget-object v7, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/utils/RectUtils;->getSMALLEST_RECT()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-static {v12}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget v15, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 p5, v2

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v15, v2

    iget v2, v4, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v10

    invoke-virtual {v12, v15, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {v7, v12}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    goto :goto_6

    :cond_a
    move-object/from16 p5, v2

    :goto_6
    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signOneFactor(Ljava/lang/Number;)I

    move-result v7

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signOneFactor(Ljava/lang/Number;)I

    move-result v2

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v7, v7

    mul-float v12, v13, v7

    int-to-float v2, v2

    mul-float v15, v14, v2

    invoke-virtual {v10, v12, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v12, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v7

    iget v7, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v7, v14

    mul-float/2addr v7, v2

    invoke-virtual {v10, v12, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_b
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "originRect="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pdfGeoLayoutRect="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , finalRect="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , matrix="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "draw pdf bg begin: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    sget-object v7, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v7}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v28

    new-instance v7, Lcom/onyx/android/sdk/genericshape/DrawContext;

    new-instance v19, Landroid/graphics/Canvas;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Canvas;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x78

    const/16 v27, 0x0

    move-object/from16 v18, v7

    move-object/from16 v20, v10

    invoke-direct/range {v18 .. v27}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v6, :cond_d

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    :cond_d
    invoke-static/range {v28 .. v29}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "draw pdf bg end: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    move-object/from16 v10, p3

    move-object/from16 v2, p5

    goto/16 :goto_5

    :cond_e
    if-eqz v9, :cond_f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v9, v3, v4, v2, v3}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;->setPDFExportCallback$default(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;IILjava/lang/Object;)V

    :cond_f
    sget-object v2, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->f(Lcom/onyx/android/sdk/neopdf/export/PdfExport;I)V

    :cond_10
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " renderMatrix:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-direct {v9}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/hvj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/hvj;-><init>()V

    invoke-virtual {v9, v2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setShapeFilter(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setWriteOnlyVisible(Z)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v9, v11}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setRenderMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v9, v5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setPageIndex(I)V

    invoke-virtual {v9, v5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setRenderOutOfPageShape(Z)V

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v7

    move-object/from16 v4, p0

    move-object v6, v8

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->writePageShapes(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportFlattenPage()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportPageIdList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->flattenPage(I)Z

    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeNotePageShapes(Lcom/onyx/android/sdk/neopdf/export/PdfExport;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/neopdf/export/PdfExport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pdfExport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v3

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x1

    int-to-float v4, v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getBenchmarkScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v1, v6, v4, v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->renderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v7, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " export pdf page rect:"

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " marginPixel:"

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " renderMatrix:"

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, p4, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-direct {v6}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;-><init>()V

    new-instance p4, Lcom/sunia/HTREnginev2/ivj;

    invoke-direct {p4}, Lcom/sunia/HTREnginev2/ivj;-><init>()V

    invoke-virtual {v6, p4}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setShapeFilter(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setWriteOnlyVisible(Z)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setRenderMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v6, p4}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setEmbedRect(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;

    invoke-virtual {v6, p5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->setPageIndex(I)V

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->writePageShapes(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportFlattenPage()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->flattenPage(I)Z

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->save(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lcom/onyx/android/sdk/neopdf/export/PdfExport;->getPdfNative()Lcom/onyx/android/sdk/neopdf/NeoPdf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writePageShapes(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/neopdf/NeoPdf;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/NeoPdf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteDocument"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neoPdf"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->ensurePageLoaded(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getPageIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getPageIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->pageCount()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writePageShapes$1;

    invoke-direct {v3, v1, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils$writePageShapes$1;-><init>(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    invoke-static {p1, v2, v3}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->ensureInitReferenceShape(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->isWriteOnlyVisible()Z

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getShapesSortByLayer(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p5}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->getRenderOutOfPageShape()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1, p2, v2}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->filterInPageRectShapeList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPendingShapeMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->h(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/Map;)V

    return v3

    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p5, v4}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;->testShapeFilter(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1, v4, p5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->e(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v6

    invoke-interface {v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportedDraftShapeIds()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3, v0, v4, p5}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->u(Lcom/onyx/android/sdk/neopdf/NeoPdf;ILcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;)Z

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getExportedDraftShapeIds()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPendingShapeMap()Ljava/util/LinkedHashMap;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getPendingShapeMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->h(Lcom/onyx/android/sdk/neopdf/NeoPdf;Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;->createPdfPageLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdf;->updatePageLayer(ILcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;)Z

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-eqz p1, :cond_7

    sget-object p2, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    goto :goto_3

    :cond_8
    return v5
.end method
