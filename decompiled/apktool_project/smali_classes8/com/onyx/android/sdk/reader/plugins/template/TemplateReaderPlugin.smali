.class public final Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocument;
.implements Lcom/onyx/android/sdk/reader/api/ReaderView;
.implements Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
.implements Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
.implements Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
.implements Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
.implements Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 ]2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u00082\u00020\t2\u00020\n2\u00020\u000b2\u00020\u000c2\u00020\r:\u0001]B\u0007\u00a2\u0006\u0004\u0008[\u0010\\J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J \u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0008\u0010\u001b\u001a\u00020\u0000H\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u0000H\u0016J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0008\u0010!\u001a\u00020\u0000H\u0016J\u0008\u0010\"\u001a\u00020\u0000H\u0016J\u0008\u0010#\u001a\u00020\u0000H\u0016J\u0010\u0010\'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u0010(\u001a\u00020\u000eH\u0016J\u0008\u0010)\u001a\u00020\u000eH\u0016J\u0010\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020*H\u0016J\u0008\u0010/\u001a\u00020.H\u0016J\u0010\u00100\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u00102\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u00103\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u00104\u001a\u00020\u0000H\u0016J\u0008\u00105\u001a\u00020\u0000H\u0016J\u0008\u00106\u001a\u00020\u0000H\u0016J\u0008\u00107\u001a\u00020,H\u0016J\u0016\u0010:\u001a\u0008\u0012\u0004\u0012\u000209082\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u0010;\u001a\u00020,2\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u0010<\u001a\u00020\u0000H\u0016J\u0010\u0010?\u001a\u00020,2\u0006\u0010>\u001a\u00020=H\u0016J\u0018\u0010@\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0008\u0010A\u001a\u00020$H\u0016J\u0010\u0010C\u001a\u00020$2\u0006\u0010B\u001a\u00020.H\u0016J\u0018\u0010F\u001a\u00020$2\u0006\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020,H\u0016J\u0008\u0010G\u001a\u00020,H\u0016R\u0016\u0010I\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010HR\u0014\u0010L\u001a\u00020J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010KR\u0016\u0010O\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010NR\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010Z\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010Y\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "",
        "a",
        "",
        "json",
        "b",
        "c",
        "displayName",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "documentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "open",
        "getPluginFeatures",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "updateViewSize",
        "getRenderer",
        "getNavigator",
        "getTextStyleManager",
        "getReaderHitTestManager",
        "getSearchManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "Landroid/graphics/RectF;",
        "getPageOriginSize",
        "abortCurrentJob",
        "clearAbortFlag",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "",
        "readTableOfContent",
        "",
        "getTotalPage",
        "nextScreen",
        "prevScreen",
        "nextPage",
        "prevPage",
        "getView",
        "getPageDataProvider",
        "getDocumentFeatures",
        "close",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
        "getImages",
        "isValidPosition",
        "getRendererFeatures",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "args",
        "draw",
        "updateDocumentOptions",
        "getInitPosition",
        "pageIndex",
        "positionByPageIndex",
        "positionString",
        "useJsonPageIndexIfValid",
        "positionByPositionString",
        "supportScale",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;",
        "Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;",
        "pluginImpl",
        "Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;",
        "Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;",
        "templateDataInfo",
        "d",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "e",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "f",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "g",
        "Ljava/lang/String;",
        "documentPath",
        "<init>",
        "()V",
        "Companion",
        "sdk-readercore_overseasRelease"
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
        "SMAP\nTemplateReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEMPLATE_SUFFIX:Ljava/lang/String; = "template_json"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion$extensionFilters$2;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion$extensionFilters$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->h:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->a:Lcom/onyx/android/sdk/base/data/Size;

    new-instance v1, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->b:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;

    new-instance v1, Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7ff

    const/16 v18, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v18}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;ZZILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->d:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    invoke-direct {v1, v4, v4, v3, v4}, Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->e:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    const-string v1, ""

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getExtensionFilters$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->h:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->c()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->b(Ljava/lang/String;)V

    return-void
.end method

.method public abortCurrentJob()V
    .locals 0

    return-void
.end method

.method public activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDrmManager$DefaultImpls;->activateDeviceDRM(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;)Z

    move-result p0

    return p0
.end method

.method public allText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->allText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public beginLookupPageData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->beginLookupPageData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public clearAbortFlag()V
    .locals 0

    return-void
.end method

.method public close()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->b:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;->close()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->c()V

    const/4 p0, 0x1

    return p0
.end method

.method public createDocumentConverter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentConverter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentExporter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentExporter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentWriter()Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->createDocumentWriter(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter;

    move-result-object p0

    return-object p0
.end method

.method public createDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->createDrmManager(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->destroy(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V

    return-void
.end method

.method public displayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getSimpleName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public draw(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->b:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->e:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    invoke-virtual {v1, p1, v0, p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;->drawGeoLayout(Lcom/onyx/android/sdk/reader/api/DrawArgs;Lcom/onyx/android/sdk/genericshape/GeoLayout;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public endLookupPageData()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->endLookupPageData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    return-void
.end method

.method public firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->firstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public firstText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->firstText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public getAllCharRectList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->getAllCharRectList(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterName(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getChapterStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocumentFeatures()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentFeatures()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getFontFamilyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getFontFamilyList(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderImage;

    move-result-object p0

    return-object p0
.end method

.method public getImages(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInitPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->firstPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getLastSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getLastSentence(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getLinkTarget(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getLinkTargetSelection(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public getLinks(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getLinks(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getNavigator()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getNavigator()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getOriginCssStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getOriginCssStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getPageContentMatrix(I)Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageContentMatrix(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPageDataProvider()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getPageIndexInCurrentChapter()I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageIndexInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I

    move-result p0

    return p0
.end method

.method public getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageLabel(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageLabelList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageLabelList(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getPageNumberByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I

    move-result p0

    return p0
.end method

.method public getPageOriginSize(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->f:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenRectF()Landroid/graphics/RectF;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getPageParagraphList(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageParagraphList(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPageSizeWithDpi(Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageSizeWithDpi(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getPageText(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageTextInfoState(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageTextInfoState;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->getPageTextInfoState(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/PageTextInfoState;

    move-result-object p0

    return-object p0
.end method

.method public getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderView$DefaultImpls;->getPagination(Lcom/onyx/android/sdk/reader/api/ReaderView;)Lcom/onyx/android/sdk/reader/api/ReaderPagination;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPluginFeatures()Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getPluginFeatures()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getReaderHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getReaderHitTestManager()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getRenderer()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getRendererFeatures()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getRichMedias(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getScreenEndPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getScreenEndPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public getScreenStartPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getScreenStartPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getSearchManager()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getSearchManager()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getSentence(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSentence;

    move-result-object p0

    return-object p0
.end method

.method public getStyle()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->getStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public getText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->getText(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getTextStyleManager()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getTotalPage()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->c:Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;->getPageIdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTotalPageCountInCurrentChapter()I
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getTotalPageCountInCurrentChapter(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)I

    move-result p0

    return p0
.end method

.method public getTotalReadingProgress()F
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getTotalReadingProgress(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getView()Lcom/onyx/android/sdk/reader/api/ReaderView;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getView()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->getXPathByPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->gotoPosition(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public hasAnnotationData(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->hasAnnotationData(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;I)Z

    move-result p0

    return p0
.end method

.method public hasText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->hasText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->hitPageCache(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public isBlankContent()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures$DefaultImpls;->isBlankContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)Z

    move-result p0

    return p0
.end method

.method public isDamagedFile()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures$DefaultImpls;->isDamagedFile(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)Z

    move-result p0

    return p0
.end method

.method public isFirstPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isFirstPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isImagePage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Z

    move-result p0

    return p0
.end method

.method public isLastPage()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->isLastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public isValidPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getTotalPage()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isWholeBook()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDrmManager$DefaultImpls;->isWholeBook(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)Z

    move-result p0

    return p0
.end method

.method public lastPage()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->lastPage(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastSelectionEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public lastText(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastText(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->lastTextEndOfLine(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->getTotalPage()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public nextScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->nextPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public open(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)Lcom/onyx/android/sdk/reader/api/ReaderDocument;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/reader/api/ReaderException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->a()V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->d:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    iput-object p3, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->e:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    return-object p0
.end method

.method public pageType(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPageType;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider$DefaultImpls;->pageType(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPageType;

    move-result-object p0

    return-object p0
.end method

.method public positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionInt(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionInt(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public positionByPositionString(Ljava/lang/String;Z)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "positionString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public prevScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->prevPage(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p0

    return-object p0
.end method

.method public readCover(Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderImage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->readCover(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderImage;)Z

    move-result p0

    return p0
.end method

.method public readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocument$DefaultImpls;->readMetadata(Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;)Z

    move-result p0

    return p0
.end method

.method public readTableOfContent(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "toc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public reopen()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPlugin$DefaultImpls;->reopen(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)Z

    move-result p0

    return p0
.end method

.method public searchInPage(ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;->searchInPage(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;ILcom/onyx/android/sdk/reader/api/ReaderSearchOptions;Z)Z

    move-result p0

    return p0
.end method

.method public searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;->searchNext(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z

    move-result p0

    return p0
.end method

.method public searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;->searchPrevious(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;)Z

    move-result p0

    return p0
.end method

.method public searchResults()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSearchManager$DefaultImpls;->searchResults(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public selectOnDocument(Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectOnDocument(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectOnScreen(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager$DefaultImpls;->selectSelection(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;Lcom/onyx/android/sdk/reader/api/ReaderPosition;Lcom/onyx/android/sdk/reader/api/ReaderPosition;I)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    return-object p0
.end method

.method public setFontEnhancement(I[I)V
    .locals 0
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setFontEnhancement(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;I[I)V

    return-void
.end method

.method public setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setStyle(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;)V

    return-void
.end method

.method public setTextGamma(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager$DefaultImpls;->setTextGamma(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;F)V

    return-void
.end method

.method public setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 0
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderView$DefaultImpls;->setupDisplayMetrics(Lcom/onyx/android/sdk/reader/api/ReaderView;Lcom/onyx/engine/sdk/DisplayMetrics;)V

    return-void
.end method

.method public supportChangeWritingMode()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportChangeWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportCssOriginStyle()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportCssOriginStyle(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportDrm()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportDrm(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontEmboldenAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontEmboldenAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontEnhancementAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontEnhancementAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontGammaAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontGammaAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportFontSizeAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportFontSizeAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportLetterSpacingAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportLetterSpacingAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportNoteEmbeded()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportNoteEmbeded(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportPageId()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->supportPageId(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)Z

    move-result p0

    return p0
.end method

.method public supportRenderPageLink()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportRenderPageLink(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportSaveOptions()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures$DefaultImpls;->supportSaveOptions(Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;)Z

    move-result p0

    return p0
.end method

.method public supportScale()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportTypefaceAdjustment()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures$DefaultImpls;->supportTypefaceAdjustment(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)Z

    move-result p0

    return p0
.end method

.method public updateDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "documentOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->d:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->a()V

    return-void
.end method

.method public updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V

    return-void
.end method

.method public updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->updateTocPageIndex(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return-void
.end method

.method public updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->a:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method
