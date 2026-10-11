.class public final Lcom/onyx/android/sdk/note/common/data/text/TextRender;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/text/TextRender$Companion;,
        Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,282:1\n215#2,2:283\n*S KotlinDebug\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender\n*L\n131#1:283,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 :2\u00020\u0001:\u0002:;B\u0011\u0008\u0017\u0012\u0006\u00107\u001a\u000206\u00a2\u0006\u0004\u00088\u00109J\u0008\u0010\u0003\u001a\u00020\u0002H\u0004J\u0010\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nJ\u001c\u0010\u000f\u001a\u00020\u00062\u0014\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c0\nJ\u0006\u0010\u0011\u001a\u00020\u0010J&\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0015J\u0006\u0010\u0018\u001a\u00020\u0006J\u0010\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\u001e\u0010 \u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0015H\u0002J\u0008\u0010!\u001a\u00020\u0006H\u0002R\u0014\u0010$\u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0018\u0010)\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R&\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender;",
        "Landroid/webkit/WebView;",
        "Landroid/webkit/WebViewClient;",
        "createWebViewClient",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;",
        "visualStateCallback",
        "",
        "setVisualStateCallback",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getIOScheduler",
        "",
        "",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "getFontMap",
        "fontMap",
        "setFontMap",
        "",
        "isReady",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "content",
        "",
        "fontList",
        "loadContent",
        "clear",
        "Ljava/lang/Runnable;",
        "pageFinishCallback",
        "setPageFinishCallback",
        "Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;",
        "data",
        "fontPath",
        "b",
        "c",
        "a",
        "e",
        "Ljava/lang/String;",
        "HTML_SPACE",
        "f",
        "SETUP_HTML",
        "g",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "ioScheduler",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;",
        "i",
        "Ljava/lang/Runnable;",
        "j",
        "Z",
        "k",
        "Ljava/util/Map;",
        "",
        "l",
        "I",
        "visualRequestId",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "VisualStateCallback",
        "sdk-note_overseasRelease"
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
        "SMAP\nTextRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,282:1\n215#2,2:283\n*S KotlinDebug\n*F\n+ 1 TextRender.kt\ncom/onyx/android/sdk/note/common/data/text/TextRender\n*L\n131#1:283,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/text/TextRender$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lio/reactivex/rxjava3/core/Scheduler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Z

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->Companion:Lcom/onyx/android/sdk/note/common/data/text/TextRender$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "&#x0020;"

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->e:Ljava/lang/String;

    const-string p1, "file:///android_asset/richEditor.html"

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->f:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->l:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;-><init>(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    const-string v1, "editor"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCssContent$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPageFinishCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getVisualStateCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->h:Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;

    return-object p0
.end method

.method public static final synthetic access$requestVisualState(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->a()V

    return-void
.end method

.method public static final synthetic access$setCssContent$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->m:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPageFinishCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setReady$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->j:Z

    return-void
.end method

.method public static final synthetic access$setVisualStateCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->h:Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->h:Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->l:I

    int-to-long v1, v0

    new-instance v3, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;

    invoke-direct {v3, v0, p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;-><init>(ILcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/webkit/WebView;->postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "setBaseFontFamily"

    if-eqz v0, :cond_0

    const-string p0, ""

    filled-new-array {p0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->k:Ljava/util/Map;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->k:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontInfo not exists, fontFamily: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setCustomFontFamilyWithUrl"

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final clear()V
    .locals 6

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearView()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->freeMemory()V

    return-void
.end method

.method public final createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;-><init>(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    return-object v0
.end method

.method public final getFontMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->k:Ljava/util/Map;

    return-object p0
.end method

.method public final getIOScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->g:Lio/reactivex/rxjava3/core/Scheduler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->g:Lio/reactivex/rxjava3/core/Scheduler;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->g:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final isReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->j:Z

    return p0
.end method

.method public final loadContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->b(Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p3}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->c(Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;Ljava/util/List;)V

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "setInputEnabled"

    invoke-virtual {v1, v2, p3}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getOrientation()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v2}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "setBaseOrientation"

    invoke-virtual {v1, v2, p3}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p3, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getAlignType()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "setContainerTextAlign"

    invoke-virtual {v1, v2, p3}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v3, "setBaseFontSize"

    invoke-virtual {v1, v3, p3}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p3, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLineHeight(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "setBaseLineHeight"

    invoke-virtual {v1, v3, v0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p3, v0, v4}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderSize(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p3, v4, p1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderSize(Landroid/content/Context;F)F

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "setContainerSize"

    invoke-virtual {v1, p3, p1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "setScale"

    invoke-virtual {v1, p3, p1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->addAction(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, v1, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->content:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RE.init("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", true)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final setFontMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fontMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->k:Ljava/util/Map;

    return-void
.end method

.method public final setPageFinishCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public final setVisualStateCallback(Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->h:Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;

    return-void
.end method
