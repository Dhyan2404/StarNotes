.class public final Lcom/onyx/galaxy/note/utils/NoteLockUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\tJ\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0008\u0002\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012J&\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0008\u0002\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\u001c\u001a\u00020\tH\u0002R\u0014\u0010\u001f\u001a\u00020\u00198\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/NoteLockUtils;",
        "",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "createNoteEncryptionLoginDialog",
        "context",
        "",
        "checkFingerPrintAvailable",
        "Landroidx/biometric/BiometricPrompt$PromptInfo;",
        "promptInfo",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createAuthDialogObservable",
        "createNoteAuthPasswordDialogObservable",
        "createFingerPrintAuthDialogObservable",
        "isEncryptionEnabled",
        "checkNoteFingerUnLockAvailable",
        "showFingerPrintAuthDialog",
        "Lkotlin/Function1;",
        "",
        "",
        "callback",
        "Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;",
        "createNotePasswordDialog",
        "showForgetNotePasswordDialog",
        "",
        "errorCode",
        "j",
        "g",
        "a",
        "I",
        "MAX_RETRY_COUNT",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->h(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$showTipByErrorCode(Lcom/onyx/galaxy/note/utils/NoteLockUtils;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->j(I)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->i(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->e(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic createAuthDialogObservable$default(Lcom/onyx/galaxy/note/utils/NoteLockUtils;Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->g()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createAuthDialogObservable(Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createNotePasswordDialog$default(Lcom/onyx/galaxy/note/utils/NoteLockUtils;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createNotePasswordDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->f(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    return-void
.end method

.method public static final e(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$biometricPrompt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt;->cancelAuthentication()V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method

.method public static final h(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    const-string p3, "$configNotePasswordDialog"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$activityContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createNotePasswordDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public static final i(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$configNotePasswordDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic showForgetNotePasswordDialog$default(Lcom/onyx/galaxy/note/utils/NoteLockUtils;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->showForgetNotePasswordDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final checkFingerPrintAvailable(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    const-string p1, "from(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final checkNoteFingerUnLockAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getNoteFingerLockPasswordOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    const-string p1, "from(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final createAuthDialogObservable(Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/biometric/BiometricPrompt$PromptInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promptInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createFingerPrintAuthDialogObservable(Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/utils/NoteLockUtils$a;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createFingerPrintAuthDialogObservable(Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/biometric/BiometricPrompt$PromptInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promptInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->checkNoteFingerUnLockAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;

    invoke-direct {v2, p0, v1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createFingerPrintAuthDialogObservable$authCallback$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Landroidx/biometric/BiometricPrompt;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v3, p1, v0, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    new-instance p1, Lcom/sunia/HTREnginev2/qyj;

    invoke-direct {p1, v1}, Lcom/sunia/HTREnginev2/qyj;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createNoteAuthPasswordDialogObservable(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNoteAuthPasswordDialogObservable$authContext$1$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNoteAuthPasswordDialogObservable$authContext$1$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNoteAuthPasswordDialogObservable$authContext$1$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNoteAuthPasswordDialogObservable$authContext$1$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;->setCancelCallback(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;-><init>(Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcom/sunia/HTREnginev2/tyj;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/tyj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnDispose(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createNoteEncryptionLoginDialog(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$string;->note_lock_login_content:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$string;->note_lock_login_confirm:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNoteEncryptionLoginDialog$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNoteEncryptionLoginDialog$1;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    return-object p0
.end method

.method public final createNotePasswordDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;-><init>(Landroid/content/Context;Z)V

    new-instance p1, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNotePasswordDialog$configNotePasswordContext$1$1;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils$createNotePasswordDialog$configNotePasswordContext$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;->setConfirmCallback(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;-><init>(Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;)V

    return-object p1
.end method

.method public final g()Landroidx/biometric/BiometricPrompt$PromptInfo;
    .locals 2

    new-instance p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->unlock_note_biometric_title:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->unlock_note_use_note_pwd:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isEncryptionEnabled()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getNoteLockPasswordOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final j(I)V
    .locals 3

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->unlock_note_biometric_temp_unavailable:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final showFingerPrintAuthDialog(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->unlock_note_biometric_title:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$string;->unlock_note_biometric_sub_title:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$string;->unlock_note_use_note_pwd:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createFingerPrintAuthDialogObservable(Landroid/content/Context;Landroidx/biometric/BiometricPrompt$PromptInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final showForgetNotePasswordDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_retrieve_note_password:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->setVerificationTitle(Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0, v3, v4}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v2, "observeOn(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/HTREnginev2/ryj;

    invoke-direct {v2, v0, p1, p2}, Lcom/sunia/HTREnginev2/ryj;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/syj;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/syj;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnDispose(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
