.class public Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/NameEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$Builder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,205:1\n283#2,2:206\n1#3:208\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$Builder\n*L\n138#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010+\u001a\u00020&\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0002J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002J \u0010\u000e\u001a\u00020\u00002\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\tJ\u001a\u0010\u0010\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c0\u000fJ\u001a\u0010\u0011\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c0\u000fJ\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0002J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000bJ\u0018\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0019J\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\nJ\u0010\u0010\"\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\nH\u0002R\u0017\u0010+\u001a\u00020&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0018\u0010.\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010-R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010-R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010-R\u0018\u00103\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010-R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00107R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010-R*\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010;R$\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R$\u0010A\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010>\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;",
        "",
        "",
        "title",
        "setTitle",
        "cancelStr",
        "setCancelText",
        "confirmRes",
        "setConfirmText",
        "Lkotlin/Function2;",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "",
        "",
        "callback",
        "setConfirmCallback",
        "Lkotlin/Function1;",
        "setCancelCallback",
        "setDismissCallback",
        "editTitleRes",
        "setEditTitle",
        "editHint",
        "setEditHint",
        "content",
        "setEditTextContent",
        "maxLength",
        "",
        "isCustomLengthRule",
        "setMaxLength",
        "hideCounter",
        "setHideCounterDisplay",
        "errorTipColorRes",
        "setErrorTipColor",
        "create",
        "dialog",
        "e",
        "l",
        "k",
        "f",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "b",
        "Ljava/lang/Integer;",
        "titleRes",
        "c",
        "cancelRes",
        "d",
        "Ljava/lang/String;",
        "editTextContent",
        "g",
        "hintRes",
        "h",
        "Z",
        "i",
        "I",
        "j",
        "Lkotlin/jvm/functions/Function2;",
        "confirmCallback",
        "m",
        "Lkotlin/jvm/functions/Function1;",
        "cancelCallback",
        "n",
        "dismissCallback",
        "<init>",
        "(Landroid/content/Context;)V",
        "sdk-ui_overseasRelease"
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
        "SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$Builder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,205:1\n283#2,2:206\n1#3:208\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog$Builder\n*L\n138#1:206,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/android/sdk/ui/NameEditDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/ui/NameEditDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/ui/NameEditDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->a:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->h:Z

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->h(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$updateCounter(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->l(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->g(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->j(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->i(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->releaseTimer()V

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final h(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->m:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->dismiss()V

    return-void
.end method

.method public static final i(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->l:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getEditTextContent()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final j(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->releaseTimer()V

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic setMaxLength$default(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;IZILjava/lang/Object;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->setMaxLength(IZ)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMaxLength"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final create()Lcom/onyx/android/sdk/ui/NameEditDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/ui/NameEditDialog;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->e(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->k(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->f(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    return-object v0
.end method

.method public final e(Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->i:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget v1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->setMaxLength(Ljava/lang/Integer;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvCounter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvCounter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->j:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->l(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    new-instance v1, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder$setEditTextParams$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder$setEditTextParams$1;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->setTextChangeCallback(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/grj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/grj;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/hrj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/hrj;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/irj;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/irj;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/jrj;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/jrj;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog;Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvEditTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->e:Ljava/lang/Integer;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvEditTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvEditTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvErrorTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColorById(I)V

    :cond_6
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->g:Ljava/lang/Integer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/ui/NameEditDialog;)V
    .locals 2

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/ui/R$string;->exit_length_display:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getLengthDisplay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getMaxLengthDisplay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvCounter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/ui/NameEditDialog;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->m:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setCancelText(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/android/sdk/ui/NameEditDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->l:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final setConfirmText(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setDismissCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/ui/NameEditDialog;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->n:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setEditHint(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setEditTextContent(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setEditTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setErrorTipColor(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setHideCounterDisplay(Z)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->j:Z

    return-object p0
.end method

.method public final setMaxLength(IZ)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->i:I

    iput-boolean p2, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->h:Z

    return-object p0
.end method

.method public final setTitle(I)Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;->b:Ljava/lang/Integer;

    return-object p0
.end method
