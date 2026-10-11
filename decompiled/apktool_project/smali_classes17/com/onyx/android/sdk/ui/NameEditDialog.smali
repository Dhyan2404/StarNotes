.class public final Lcom/onyx/android/sdk/ui/NameEditDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/NameEditDialog$Builder;,
        Lcom/onyx/android/sdk/ui/NameEditDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,205:1\n262#2,2:206\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog\n*L\n37#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0014\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\nJ\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016R\u001b\u0010\u0013\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "errorTip",
        "showErrorTip",
        "releaseTimer",
        "",
        "getEditTextContent",
        "onAttachedToWindow",
        "dismiss",
        "Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;",
        "h",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;",
        "binding",
        "com/onyx/android/sdk/ui/NameEditDialog$timerObserver$1",
        "i",
        "Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;",
        "timerObserver",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "Builder",
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
        "SMAP\nNameEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,205:1\n262#2,2:206\n*S KotlinDebug\n*F\n+ 1 NameEditDialog.kt\ncom/onyx/android/sdk/ui/NameEditDialog\n*L\n37#1:206,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/NameEditDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_TIP_HIDE_TIME:J = 0x7d0L


# instance fields
.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/NameEditDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/NameEditDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/NameEditDialog;->Companion:Lcom/onyx/android/sdk/ui/NameEditDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/onyx/android/sdk/ui/NameEditDialog$binding$2;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/ui/NameEditDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog;->i:Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method

.method public final getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    return-object p0
.end method

.method public final getEditTextContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffea

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final releaseTimer()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog;->i:Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    return-void
.end method

.method public final showErrorTip(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/NameEditDialog;->i:Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvErrorTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvErrorTips"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/NameEditDialog;->getBinding()Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogNameEditBinding;->tvErrorTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    const-wide/16 v1, 0x7d0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/NameEditDialog;->i:Lcom/onyx/android/sdk/ui/NameEditDialog$timerObserver$1;

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    return-void
.end method
