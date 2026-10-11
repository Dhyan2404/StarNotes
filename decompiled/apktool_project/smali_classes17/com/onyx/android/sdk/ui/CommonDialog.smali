.class public final Lcom/onyx/android/sdk/ui/CommonDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/CommonDialog$Builder;,
        Lcom/onyx/android/sdk/ui/CommonDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,439:1\n260#2:440\n193#2,3:441\n*S KotlinDebug\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog\n*L\n68#1:440\n100#1:441,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018B\u0011\u0008\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0008J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cJ\u0008\u0010\u000f\u001a\u00020\u0004H\u0002R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Landroid/view/View;",
        "getConfirmBtn",
        "Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;",
        "getInputEdit",
        "show",
        "dismiss",
        "",
        "delay",
        "dismissWithDelay",
        "a",
        "Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;",
        "e",
        "Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;",
        "binging",
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
        "SMAP\nCommonDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,439:1\n260#2:440\n193#2,3:441\n*S KotlinDebug\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog\n*L\n68#1:440\n100#1:441,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/CommonDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DIALOG_TYPE_LOADING:I = 0x1

.field public static final DIALOG_TYPE_TEXT:I


# instance fields
.field public e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/CommonDialog;->Companion:Lcom/onyx/android/sdk/ui/CommonDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    sget v0, Lcom/onyx/android/sdk/ui/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->a()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x3e99999a    # 0.3f

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    return-object p0
.end method

.method public static synthetic dismissWithDelay$default(Lcom/onyx/android/sdk/ui/CommonDialog;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1f4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismissWithDelay(J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    if-nez v0, :cond_0

    const-string v0, "binging"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    if-nez p0, :cond_0

    const-string p0, "binging"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->ivLoadingAnim:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    return-void
.end method

.method public final dismissWithDelay(J)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    if-nez v0, :cond_0

    const-string v0, "binging"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/ui/CommonDialog$dismissWithDelay$$inlined$postDelayed$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$dismissWithDelay$$inlined$postDelayed$1;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getConfirmBtn()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    if-nez p0, :cond_0

    const-string p0, "binging"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "tvConfirm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getInputEdit()Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    if-nez p0, :cond_0

    const-string p0, "binging"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v0, "editText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffeb

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->clEditContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method
