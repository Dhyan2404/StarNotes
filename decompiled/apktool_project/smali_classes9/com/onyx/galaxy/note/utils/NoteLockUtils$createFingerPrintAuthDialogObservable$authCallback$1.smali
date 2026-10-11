.class public final Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createFingerPrintAuthDialogObservable(Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1",
        "Landroidx/biometric/BiometricPrompt$AuthenticationCallback;",
        "",
        "errorCode",
        "",
        "errString",
        "",
        "onAuthenticationError",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "result",
        "onAuthenticationSucceeded",
        "onAuthenticationFailed",
        "a",
        "I",
        "getRetryCount",
        "()I",
        "setRetryCount",
        "(I)V",
        "retryCount",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/biometric/BiometricPrompt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/biometric/BiometricPrompt;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p2, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->a:I

    return p0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-static {p2, p1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->access$showTipByErrorCode(Lcom/onyx/galaxy/note/utils/NoteLockUtils;I)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/biometric/BiometricPrompt;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt;->cancelAuthentication()V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->unlock_note_biometric_temp_unavailable:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1
    .param p1    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->b:Lio/reactivex/rxjava3/subjects/PublishSubject;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;->a:I

    return-void
.end method
