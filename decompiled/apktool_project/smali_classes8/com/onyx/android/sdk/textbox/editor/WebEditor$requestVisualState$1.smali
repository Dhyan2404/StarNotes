.class public final Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;
.super Landroid/webkit/WebView$VisualStateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/editor/WebEditor;->i(Lio/reactivex/rxjava3/subjects/PublishSubject;Z)V
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
        "com/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1",
        "Landroid/webkit/WebView$VisualStateCallback;",
        "onComplete",
        "",
        "id",
        "",
        "sdk-textbox_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

.field public final synthetic b:Z

.field public final synthetic c:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;ZLio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/textbox/editor/WebEditor;",
            "Z",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->b:Z

    iput-object p3, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p0}, Landroid/webkit/WebView$VisualStateCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->b(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/String;)V
    .locals 0

    const-string p1, "$subject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onComplete(J)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-static {v0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->access$getVISUAL_REQUEST_ID$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive incorrect visual id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-static {p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->requestEditorLayout()V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    iget-boolean p2, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->b:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Lcom/sunia/HTREnginev2/i6o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/i6o;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->enableEdit(ZZLandroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
