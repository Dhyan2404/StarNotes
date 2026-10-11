.class public final Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigNotePasswordDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigNotePasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,134:1\n256#2,2:135\n*S KotlinDebug\n*F\n+ 1 ConfigNotePasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog\n*L\n72#1:135,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008 \u0010!J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0017R\u001b\u0010\u001c\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001f\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "l",
        "k",
        "r",
        "",
        "g",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "textInputEditText",
        "Landroid/view/View;",
        "btnView",
        "q",
        "Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;",
        "h",
        "Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;",
        "configContext",
        "Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;",
        "i",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "j",
        "()Lcom/onyx/android/sdk/data/utils/StringOption;",
        "noteLockPasswordOption",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "()Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "noteFingerLockPasswordOption",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;)V",
        "note_overseasRelease"
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
        "SMAP\nConfigNotePasswordDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigNotePasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,134:1\n256#2,2:135\n*S KotlinDebug\n*F\n+ 1 ConfigNotePasswordDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog\n*L\n72#1:135,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "configContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->i:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$noteLockPasswordOption$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$noteLockPasswordOption$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->j:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$noteFingerLockPasswordOption$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$noteFingerLockPasswordOption$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$verification(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->r()V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->o(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->n(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->p(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->m(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->r()V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;->getCancelCallback()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tiePwd:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v1, "tiePwd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->q(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tieConfirmPwd:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v1, "tieConfirmPwd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->q(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tiePwd:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tieConfirmPwd:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_set_pwd_error:I

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return v1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->note_pwd_max_input_length:I

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    sget v4, Lcom/onyx/galaxy/note/R$integer;->note_pwd_min_input_length:I

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_pwd_length_error:I

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return v1
.end method

.method public final h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    return-object p0
.end method

.method public final i()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final j()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_reset_pwd_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_set_pwd_title:I

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/c9e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c9e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/d9e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d9e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "btnTogglePwdVisible"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/e9e;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/e9e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->btnToggleConfirmPwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "btnToggleConfirmPwdVisible"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/f9e;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/f9e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tieConfirmPwd:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v1, "tieConfirmPwd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$initView$5;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog$initView$5;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->onEditorDoneActionListener(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->switchFinger:Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->i()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->groupFinger:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupFinger"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->checkFingerPrintAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->k()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffb0

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->tiePwd:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->j()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->i()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h()Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogConfigNotePasswordBinding;->switchFinger:Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ConfigNotePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ConfigNotePasswordContext;->getConfirmCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/NotePasswordChangedEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/event/NotePasswordChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method
