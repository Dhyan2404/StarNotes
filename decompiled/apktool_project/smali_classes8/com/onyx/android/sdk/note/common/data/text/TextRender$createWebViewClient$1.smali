.class public final Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/text/TextRender;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "sdk-note_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;->a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;->a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->access$setReady$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;->a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->access$getPageFinishCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$createWebViewClient$1;->a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->access$setPageFinishCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;Ljava/lang/Runnable;)V

    return-void
.end method
