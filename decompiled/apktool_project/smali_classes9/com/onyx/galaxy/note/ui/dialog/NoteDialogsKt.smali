.class public final Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0004\u0012\u00020\u00010\u0007j\u0002`\u0008\u001a\u0016\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "activateHwrEngine",
        "",
        "uiContext",
        "Landroid/content/Context;",
        "recognizer",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "callback",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "showExceedDeviceLimitDialog",
        "limitCount",
        "",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;->d(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    return-void
.end method

.method public static final activateHwrEngine(Landroid/content/Context;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recognizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->ink_activating_beautify_sdk:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;

    invoke-direct {v3, v0, p1}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/sunia/HTREnginev2/bvj;

    invoke-direct {v2, p2}, Lcom/sunia/HTREnginev2/bvj;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$b;->e:Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$b;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/cvj;

    invoke-direct {p2, p0, v0}, Lcom/sunia/HTREnginev2/cvj;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doFinally(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;->c(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hwrBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->destroyAll()V

    return-void
.end method

.method public static final showExceedDeviceLimitDialog(Landroid/content/Context;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithWarningConfirmTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->ink_exceed_device_limit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFormatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageText(Ljava/lang/String;)V

    sget p1, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonTitleRes(I)V

    sget p1, Lcom/onyx/galaxy/note/R$string;->confirm:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method
