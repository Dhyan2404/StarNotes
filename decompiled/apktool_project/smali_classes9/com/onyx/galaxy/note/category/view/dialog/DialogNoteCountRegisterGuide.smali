.class public final Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;",
        "Landroid/app/Dialog;",
        "",
        "d",
        "",
        "key",
        "c",
        "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;",
        "event",
        "g",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;",
        "f",
        "Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;)V",
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

.field public f:Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/android/sdk/ui/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->d()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->f(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->e(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/event/StatisticRegisterGuideClickEvent;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/event/StatisticRegisterGuideClickEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->g(Lcom/onyx/android/sdk/event/BaseStatisticsEvent;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/event/StatisticRegisterGuideClickEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/event/StatisticRegisterGuideClickEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->g(Lcom/onyx/android/sdk/event/BaseStatisticsEvent;)V

    new-instance p1, Lcom/onyx/android/sdk/event/StatisticLoginPageShowEvent;

    sget-object v0, Lcom/onyx/android/sdk/data/LoginTriggerFrom;->NOTES_LIMIT:Lcom/onyx/android/sdk/data/LoginTriggerFrom;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/event/StatisticLoginPageShowEvent;-><init>(Lcom/onyx/android/sdk/data/LoginTriggerFrom;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->g(Lcom/onyx/android/sdk/event/BaseStatisticsEvent;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToLogin$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "noteCountRegisterGuide"

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->f:Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->f:Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivClose"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/t4f;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/t4f;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->f:Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "tvConfirm"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/u4f;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/u4f;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->f:Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "content1"

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->f:Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteCountRegisterGuideBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v1, "button1"

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/DialogNoteCountRegisterGuide;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/event/BaseStatisticsEvent;)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
