.class public final Lcom/onyx/android/sdk/reader/Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/Reader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00ab\u00012\u00020\u0001:\u0002\u00ab\u0001B\t\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ8\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aR\"\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010\'\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001e\u001a\u0004\u0008%\u0010 \"\u0004\u0008&\u0010\"R\"\u0010+\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u001e\u001a\u0004\u0008)\u0010 \"\u0004\u0008*\u0010\"R\"\u0010/\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u001e\u001a\u0004\u0008-\u0010 \"\u0004\u0008.\u0010\"R\"\u00103\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u001e\u001a\u0004\u00081\u0010 \"\u0004\u00082\u0010\"R\"\u00107\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u001e\u001a\u0004\u00085\u0010 \"\u0004\u00086\u0010\"R\"\u0010>\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010\u000c\u001a\u00020\u00088\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\"\u0010J\u001a\u00020I8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010W\u001a\u00020V8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\"\u0010^\u001a\u00020]8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR$\u0010k\u001a\u0004\u0018\u00010d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\"\u0010m\u001a\u00020l8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008m\u0010n\u001a\u0004\u0008o\u0010p\"\u0004\u0008q\u0010rR\"\u0010t\u001a\u00020s8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR#\u0010{\u001a\u00020z8\u0006@\u0006X\u0086.\u00a2\u0006\u0013\n\u0004\u0008{\u0010|\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R,\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R*\u0010\u008a\u0001\u001a\u00030\u0089\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R*\u0010\u0091\u0001\u001a\u00030\u0090\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\'\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008\u0010\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001\"\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\'\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0086.\u00a2\u0006\u0017\n\u0005\u0008\u000e\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R*\u0010\u00a8\u0001\u001a\u00030\u00a1\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\u00a8\u0006\u00ac\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/Reader;",
        "",
        "",
        "isDocumentOpen",
        "Landroid/content/Context;",
        "appContext",
        "",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "selectPlugin",
        "",
        "destroy",
        "plugin",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "documentOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "pluginOptions",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "document",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "drmManager",
        "onDocumentOpen",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "initViewSize",
        "updateViewSize",
        "Lcom/onyx/engine/sdk/DisplayMetrics;",
        "displayMetrics",
        "setupDisplayMetrics",
        "a",
        "Ljava/lang/String;",
        "getDocId",
        "()Ljava/lang/String;",
        "setDocId",
        "(Ljava/lang/String;)V",
        "docId",
        "b",
        "getDocumentPath",
        "setDocumentPath",
        "documentPath",
        "c",
        "getBookName",
        "setBookName",
        "bookName",
        "d",
        "getTitle",
        "setTitle",
        "title",
        "e",
        "getDocumentMd5",
        "setDocumentMd5",
        "documentMd5",
        "f",
        "getDocumentPasswordCache",
        "setDocumentPasswordCache",
        "documentPasswordCache",
        "g",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getViewSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "setViewSize",
        "(Lcom/onyx/android/sdk/base/data/Size;)V",
        "viewSize",
        "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "getPlugin",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPlugin;",
        "setPlugin",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "getDocument",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDocument;",
        "setDocument",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "pageDataProvider",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "getPageDataProvider",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;",
        "setPageDataProvider",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V",
        "h",
        "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "getDrmManager",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;",
        "setDrmManager",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "view",
        "Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "getView",
        "()Lcom/onyx/android/sdk/reader/api/ReaderView;",
        "setView",
        "(Lcom/onyx/android/sdk/reader/api/ReaderView;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "navigator",
        "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "getNavigator",
        "()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;",
        "setNavigator",
        "(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "i",
        "Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "getPagination",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPagination;",
        "setPagination",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)V",
        "pagination",
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "renderer",
        "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "getRenderer",
        "()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;",
        "setRenderer",
        "(Lcom/onyx/android/sdk/reader/api/ReaderRenderer;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
        "rendererFeatures",
        "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
        "getRendererFeatures",
        "()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;",
        "setRendererFeatures",
        "(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "documentFeatures",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "getDocumentFeatures",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;",
        "setDocumentFeatures",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "j",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "getTextStyleManager",
        "()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;",
        "setTextStyleManager",
        "(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)V",
        "textStyleManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "searchManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "getSearchManager",
        "()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;",
        "setSearchManager",
        "(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "hitTestManager",
        "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "getHitTestManager",
        "()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;",
        "setHitTestManager",
        "(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "getPluginOptions",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;",
        "setPluginOptions",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "getDocumentOptions",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;",
        "setDocumentOptions",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)V",
        "Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;",
        "k",
        "Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;",
        "getContentDiskCache",
        "()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;",
        "setContentDiskCache",
        "(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;)V",
        "contentDiskCache",
        "<init>",
        "()V",
        "Companion",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/Reader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public document:Lcom/onyx/android/sdk/reader/api/ReaderDocument;

.field public documentFeatures:Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;

.field public documentOptions:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public hitTestManager:Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;

.field public i:Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public navigator:Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

.field public pageDataProvider:Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

.field public plugin:Lcom/onyx/android/sdk/reader/api/ReaderPlugin;

.field public pluginOptions:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

.field public renderer:Lcom/onyx/android/sdk/reader/api/ReaderRenderer;

.field public rendererFeatures:Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;

.field public searchManager:Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;

.field public view:Lcom/onyx/android/sdk/reader/api/ReaderView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/Reader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/Reader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/Reader;->Companion:Lcom/onyx/android/sdk/reader/Reader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->f:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/16 v1, 0x12c

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->g:Lcom/onyx/android/sdk/base/data/Size;

    new-instance v0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;-><init>(Lcom/onyx/android/sdk/reader/Reader;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->k:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    return-void
.end method


# virtual methods
.method public final appContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final destroy()V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->close(Lcom/onyx/android/sdk/reader/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final getBookName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentDiskCache()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->k:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    return-object p0
.end method

.method public final getDocId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocument()Lcom/onyx/android/sdk/reader/api/ReaderDocument;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->document:Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "document"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDocumentFeatures()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->documentFeatures:Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "documentFeatures"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDocumentMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocumentOptions()Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->documentOptions:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "documentOptions"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDocumentPasswordCache()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocumentPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getDrmManager()Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->h:Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;

    return-object p0
.end method

.method public final getHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->hitTestManager:Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "hitTestManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->navigator:Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "navigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->pageDataProvider:Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pageDataProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->i:Lcom/onyx/android/sdk/reader/api/ReaderPagination;

    return-object p0
.end method

.method public final getPlugin()Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->plugin:Lcom/onyx/android/sdk/reader/api/ReaderPlugin;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "plugin"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPluginOptions()Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->pluginOptions:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pluginOptions"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->renderer:Lcom/onyx/android/sdk/reader/api/ReaderRenderer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "renderer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->rendererFeatures:Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "rendererFeatures"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->searchManager:Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "searchManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getView()Lcom/onyx/android/sdk/reader/api/ReaderView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->view:Lcom/onyx/android/sdk/reader/api/ReaderView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "view"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->g:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final initViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
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

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->g:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method

.method public final isDocumentOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader;->document:Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDocumentOpen(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPlugin;Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;Lcom/onyx/android/sdk/reader/api/ReaderDocument;Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plugin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/reader/Reader;->setPlugin(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/reader/Reader;->setDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/reader/Reader;->setPluginOptions(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/reader/Reader;->setDocument(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)V

    invoke-interface {p5}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->getPageDataProvider()Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setPageDataProvider(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V

    iput-object p6, p0, Lcom/onyx/android/sdk/reader/Reader;->h:Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;

    invoke-interface {p5}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setView(Lcom/onyx/android/sdk/reader/api/ReaderView;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setRenderer(Lcom/onyx/android/sdk/reader/api/ReaderRenderer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setNavigator(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getPagination()Lcom/onyx/android/sdk/reader/api/ReaderPagination;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->i:Lcom/onyx/android/sdk/reader/api/ReaderPagination;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getRenderer()Lcom/onyx/android/sdk/reader/api/ReaderRenderer;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderRenderer;->getRendererFeatures()Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setRendererFeatures(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getTextStyleManager()Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getReaderHitTestManager()Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setHitTestManager(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->getSearchManager()Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setSearchManager(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;)V

    invoke-interface {p5}, Lcom/onyx/android/sdk/reader/api/ReaderDocument;->getDocumentFeatures()Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader;->setDocumentFeatures(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)V

    return-void
.end method

.method public final selectPlugin(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;-><init>()V

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;-><init>()V

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;-><init>()V

    goto/16 :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/caj/CajReaderPlugin;-><init>()V

    goto/16 :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/html/NeoHtmlReaderPlugin;-><init>()V

    goto/16 :goto_0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderPlugin;-><init>()V

    goto/16 :goto_0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/fb/NeoFBReaderPlugin;-><init>()V

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;-><init>()V

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/mobi/NeoMobiReaderPlugin;-><init>()V

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/txt/NeoTxtReaderPlugin;-><init>()V

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/rtf/NeoRtfReaderPlugin;-><init>()V

    goto :goto_0

    :cond_a
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/chm/NeoChmReaderPlugin;-><init>()V

    goto :goto_0

    :cond_b
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/markdown/NeoMarkdownReaderPlugin;-><init>()V

    goto :goto_0

    :cond_c
    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;->Companion:Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;-><init>()V

    goto :goto_0

    :cond_d
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final setBookName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->c:Ljava/lang/String;

    return-void
.end method

.method public final setContentDiskCache(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->k:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    return-void
.end method

.method public final setDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->a:Ljava/lang/String;

    return-void
.end method

.method public final setDocument(Lcom/onyx/android/sdk/reader/api/ReaderDocument;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->document:Lcom/onyx/android/sdk/reader/api/ReaderDocument;

    return-void
.end method

.method public final setDocumentFeatures(Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->documentFeatures:Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;

    return-void
.end method

.method public final setDocumentMd5(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->e:Ljava/lang/String;

    return-void
.end method

.method public final setDocumentOptions(Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->documentOptions:Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;

    return-void
.end method

.method public final setDocumentPasswordCache(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->f:Ljava/lang/String;

    return-void
.end method

.method public final setDocumentPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->b:Ljava/lang/String;

    return-void
.end method

.method public final setDrmManager(Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->h:Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;

    return-void
.end method

.method public final setHitTestManager(Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->hitTestManager:Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;

    return-void
.end method

.method public final setNavigator(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderNavigator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->navigator:Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    return-void
.end method

.method public final setPageDataProvider(Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->pageDataProvider:Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;

    return-void
.end method

.method public final setPagination(Lcom/onyx/android/sdk/reader/api/ReaderPagination;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPagination;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->i:Lcom/onyx/android/sdk/reader/api/ReaderPagination;

    return-void
.end method

.method public final setPlugin(Lcom/onyx/android/sdk/reader/api/ReaderPlugin;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->plugin:Lcom/onyx/android/sdk/reader/api/ReaderPlugin;

    return-void
.end method

.method public final setPluginOptions(Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->pluginOptions:Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;

    return-void
.end method

.method public final setRenderer(Lcom/onyx/android/sdk/reader/api/ReaderRenderer;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->renderer:Lcom/onyx/android/sdk/reader/api/ReaderRenderer;

    return-void
.end method

.method public final setRendererFeatures(Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->rendererFeatures:Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;

    return-void
.end method

.method public final setSearchManager(Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->searchManager:Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;

    return-void
.end method

.method public final setTextStyleManager(Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->j:Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->d:Ljava/lang/String;

    return-void
.end method

.method public final setView(Lcom/onyx/android/sdk/reader/api/ReaderView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->view:Lcom/onyx/android/sdk/reader/api/ReaderView;

    return-void
.end method

.method public final setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader;->g:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public final setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/DisplayMetrics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->setupDisplayMetrics(Lcom/onyx/engine/sdk/DisplayMetrics;)V

    return-void
.end method

.method public final updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
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

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/Reader;->g:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getView()Lcom/onyx/android/sdk/reader/api/ReaderView;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderView;->updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method
