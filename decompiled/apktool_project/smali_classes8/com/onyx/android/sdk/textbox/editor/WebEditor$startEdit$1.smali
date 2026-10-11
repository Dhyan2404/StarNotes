.class public final Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/editor/WebEditor;->startEdit(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;",
        "onInitFinish",
        "",
        "success",
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

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/textbox/editor/WebEditor;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    iput-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p3, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->c:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->b(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getEditForAll()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->access$requestVisualState(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Z)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getShowEditorDirectly()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->showEditorView()V

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getContent()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getTextColor()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setTextColor(IZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onInitFinish(Z)V
    .locals 3

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;->c:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    new-instance v2, Lcom/sunia/HTREnginev2/j6o;

    invoke-direct {v2, v0, v1, p0}, Lcom/sunia/HTREnginev2/j6o;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
