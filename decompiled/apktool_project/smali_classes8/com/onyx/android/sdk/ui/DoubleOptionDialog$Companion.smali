.class public final Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;",
        "",
        "()V",
        "MASK_DARK",
        "",
        "MASK_LIGHT",
        "createIconStyle",
        "Lcom/onyx/android/sdk/ui/DoubleOptionDialog;",
        "activityContext",
        "Landroid/content/Context;",
        "createTitleStyle",
        "createWithConfirmWarningIconStyle",
        "createWithConfirmWarningTitleStyle",
        "createWithPrimarySecondaryTitleStyle",
        "createWithSecondaryPrimaryTitleStyle",
        "createWithWarningConfirmCloseStyle",
        "createWithWarningConfirmTitleStyle",
        "sdk-ui_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIconStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowTitle(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowIcon(Z)V

    return-object p0
.end method

.method public final createTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowTitle(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowIcon(Z)V

    return-object p0
.end method

.method public final createWithConfirmWarningIconStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithConfirmWarningTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowTitle(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowIcon(Z)V

    return-object p0
.end method

.method public final createWithConfirmWarningTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_btn_color:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_solid_primary:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonDrawableRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_stroke_red:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonDrawableRes(I)V

    return-object p0
.end method

.method public final createWithPrimarySecondaryTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/base/R$color;->white:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/base/R$color;->black:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_solid_primary:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonDrawableRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_stroke_gray:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonDrawableRes(I)V

    return-object p0
.end method

.method public final createWithSecondaryPrimaryTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/base/R$color;->white:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_stroke_gray:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonDrawableRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_solid_primary:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonDrawableRes(I)V

    return-object p0
.end method

.method public final createWithWarningConfirmCloseStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowTitle(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowIcon(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowTitleIconView(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowCloseButton(Z)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->ic_warning:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setTitleIconDrawableRes(I)V

    sget p1, Lcom/onyx/android/sdk/base/R$color;->white:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_solid_primary:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonDrawableRes(I)V

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->access$getBinding$p(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonLeft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->access$getBinding$p(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->buttonPaddingView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-object p0
.end method

.method public final createWithWarningConfirmTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/base/R$color;->white:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonColorRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_stroke_red:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonDrawableRes(I)V

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_solid_primary:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonDrawableRes(I)V

    return-object p0
.end method
