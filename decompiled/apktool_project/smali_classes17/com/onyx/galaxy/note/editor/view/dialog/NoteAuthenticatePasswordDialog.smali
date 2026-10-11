.class public final Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "i",
        "h",
        "o",
        "n",
        "Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;",
        "Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;",
        "authContext",
        "Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;",
        "Lkotlin/Lazy;",
        "g",
        "()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;)V",
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
.field public final h:Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$verification(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->o()V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->k(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->l(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->j(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->m(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->o()V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;->getCancelCallback()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->n()V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->showForgetNotePasswordDialog$default(Lcom/onyx/galaxy/note/utils/NoteLockUtils;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    return-object p0
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;->isDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_input_delete_pwd_title:I

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_note_input_delete_pwd_sub_title:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->dialog_note_input_delete_pwd_confirm_deletion:I

    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_error_color_01:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_input_pwd_title:I

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_note_input_pwd_sub_title:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->confirm:I

    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v5, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvSubTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    return-void
.end method

.method public final i()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/luj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/luj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/muj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/muj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v1, "tieName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog$initView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog$initView$3;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->onEditorDoneActionListener(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "btnTogglePwdVisible"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/nuj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/nuj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tvForget:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvForget"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/ouj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ouj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->h()V

    return-void
.end method

.method public final n()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final o()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteAuthPasswordBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_input_pwd_empty:I

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->note_pwd_max_input_length:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    sget v4, Lcom/onyx/galaxy/note/R$integer;->note_pwd_min_input_length:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_3

    if-le v4, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;->h:Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;->getConfirmCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_note_pwd_length_error:I

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffad

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
