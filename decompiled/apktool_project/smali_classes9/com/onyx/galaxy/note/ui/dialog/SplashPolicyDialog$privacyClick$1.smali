.class public final Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
        "updateDrawState",
        "ds",
        "Landroid/text/TextPaint;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;->e:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public static final b(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "$widget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    new-instance v1, Lcom/sunia/HTREnginev2/lwm;

    invoke-direct {v1, p1, v0}, Lcom/sunia/HTREnginev2/lwm;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;->e:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;

    sget-object p1, Lcom/onyx/galaxy/note/account/data/PolicyType;->PRIVACY:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->access$showPolicyDialog(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;Lcom/onyx/galaxy/note/account/data/PolicyType;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog$privacyClick$1;->e:Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;->access$getContext$p(Lcom/onyx/galaxy/note/ui/dialog/SplashPolicyDialog;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iput p0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
