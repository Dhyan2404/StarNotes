.class public final Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u000b\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "f",
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        "policyType",
        "k",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "agreeFunc",
        "Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;",
        "g",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
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
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agreeFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->Custom_NoTitle_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->f:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->j(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->g(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->i(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->h(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/account/data/PolicyType;->PRIVACY:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->k(Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/account/data/PolicyType;->SERVICE:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->k(Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    return-void
.end method


# virtual methods
.method public final e()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;

    return-object p0
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;->btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/q4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q4j;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;->btnOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/r4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r4j;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;->tvPrivacyPolicy:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/s4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s4j;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e()Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginPolicyBinding;->tvServicePolicy:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/t4j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t4j;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final k(Lcom/onyx/galaxy/note/account/data/PolicyType;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginPolicyDialog;->e:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffe1

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
