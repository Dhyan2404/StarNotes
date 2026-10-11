.class public final Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;
.super Landroid/webkit/WebView$VisualStateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/text/TextRender;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1",
        "Landroid/webkit/WebView$VisualStateCallback;",
        "onComplete",
        "",
        "id",
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
.field public final synthetic a:I

.field public final synthetic b:Lcom/onyx/android/sdk/note/common/data/text/TextRender;


# direct methods
.method public constructor <init>(ILcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;->a:I

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;->b:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-direct {p0}, Landroid/webkit/WebView$VisualStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(J)V
    .locals 4

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;->a:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestVisualState complete, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;->b:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->access$getVisualStateCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;->onComplete()V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextRender$requestVisualState$1;->b:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/TextRender;->access$setVisualStateCallback$p(Lcom/onyx/android/sdk/note/common/data/text/TextRender;Lcom/onyx/android/sdk/note/common/data/text/TextRender$VisualStateCallback;)V

    :cond_0
    return-void
.end method
