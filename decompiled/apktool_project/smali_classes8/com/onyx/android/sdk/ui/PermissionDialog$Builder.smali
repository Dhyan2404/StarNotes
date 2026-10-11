.class public Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0004\u0008#\u0010$J\u0014\u0010\u0005\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0001\u0010\r\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0016\u0010\u001e\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;",
        "",
        "Lkotlin/Function0;",
        "",
        "callback",
        "setCancelCallback",
        "setConfirmCallback",
        "",
        "message",
        "setMessageTextRes",
        "",
        "messageStr",
        "setMessageText",
        "confirmRes",
        "setConfirmTextRes",
        "Lcom/onyx/android/sdk/ui/PermissionDialog;",
        "create",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "b",
        "Lkotlin/jvm/functions/Function0;",
        "cancelCallback",
        "c",
        "confirmCallback",
        "d",
        "I",
        "messageRes",
        "e",
        "f",
        "Ljava/lang/String;",
        "messageString",
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


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->a:Landroid/content/Context;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->d:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->d(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->c(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$permissionDialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$permissionDialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->c:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/onyx/android/sdk/ui/PermissionDialog;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/ui/PermissionDialog;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->d:I

    const/4 v2, 0x0

    const-string v3, "binging"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/PermissionDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/PermissionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;->tvMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v5, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->d:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/PermissionDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/PermissionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;->tvMessage:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v5, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->e:I

    if-eq v1, v4, :cond_5

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/PermissionDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/PermissionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v4, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->e:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    invoke-static {v0}, Lcom/onyx/android/sdk/ui/PermissionDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/PermissionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    iget-object v1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v4, Lcom/sunia/HTREnginev2/j3l;

    invoke-direct {v4, p0, v0}, Lcom/sunia/HTREnginev2/j3l;-><init>(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/PermissionDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/PermissionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v1

    :goto_0
    iget-object v1, v2, Lcom/onyx/android/sdk/ui/databinding/DialogPermissionBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v2, Lcom/sunia/HTREnginev2/k3l;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/k3l;-><init>(Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;Lcom/onyx/android/sdk/ui/PermissionDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final setCancelCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->b:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final setConfirmCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->c:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final setConfirmTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->e:I

    return-object p0
.end method

.method public final setMessageText(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "messageStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessageTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->d:I

    return-object p0
.end method
