.class public final Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0002\u0018\u001c\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0004\u0008 \u0010!J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0003J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "d",
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        "policyType",
        "g",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "agreeFunc",
        "Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;",
        "binding",
        "com/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1",
        "h",
        "Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;",
        "privacyClick",
        "com/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1",
        "i",
        "Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;",
        "serviceClick",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
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

.field public final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
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

.field public final h:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agreeFunc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->f:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;-><init>(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->h:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;

    new-instance p1, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;-><init>(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->i:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->f(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$showPolicyDialog(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Lcom/onyx/galaxy/note/account/data/PolicyType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->g(Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->f:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->f:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;

    return-object p0
.end method

.method public final d()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->splash_policy_title_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$string;->splash_policy_title_connection:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->splash_policy_title_suffix:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/onyx/galaxy/note/R$string;->login_privacy_policy:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/onyx/galaxy/note/R$string;->login_service_policy:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v4

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, v5

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->h:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;

    const/16 v6, 0x22

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->i:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$serviceClick$1;

    invoke-virtual {v5, v0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;->tvDialogTitle:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;->tvDialogTitle:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;->btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/jwm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jwm;-><init>(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSplashPolicyBinding;->btnOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/kwm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kwm;-><init>(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/account/data/PolicyType;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/PolicyDialog;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->e:Landroid/content/Context;

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

    const v1, -0x54ffff9c

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
