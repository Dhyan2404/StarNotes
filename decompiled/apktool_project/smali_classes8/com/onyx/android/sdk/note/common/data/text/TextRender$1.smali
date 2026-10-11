.class public final Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/text/TextRender;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/note/common/data/text/TextRender$1",
        "",
        "onInitFinish",
        "",
        "success",
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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;->a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;->b(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->access$requestVisualState(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    return-void
.end method


# virtual methods
.method public final onInitFinish(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;->a:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    new-instance p1, Lcom/sunia/HTREnginev2/yen;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/yen;-><init>(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method
