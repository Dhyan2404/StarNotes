.class public Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/AutoSizeDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/app/Dialog;",
        "Landroid/view/View;",
        "view",
        "",
        "setContentView",
        "dismiss",
        "cancel",
        "autoSizeView",
        "a",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "b",
        "e",
        "Landroid/view/View;",
        "",
        "f",
        "I",
        "viewOriginWidth",
        "g",
        "autoFitTimerKey",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final AUTO_FIT_TIMER_DELAY:J = 0xc8L

.field public static final AUTO_SIZE_VIEW_TAG:Ljava/lang/String; = "autoSize"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/ui/AutoSizeDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCREEN_WIDTH_PERCENT:F = 0.9f


# instance fields
.field public e:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/AutoSizeDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->Companion:Lcom/onyx/android/sdk/ui/AutoSizeDialog$Companion;

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

    sget v0, Lcom/onyx/android/sdk/uicommon/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->g:I

    return-void
.end method

.method public static final synthetic access$adjustSize(Lcom/onyx/android/sdk/ui/AutoSizeDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->a(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAutoFitTimerKey$p(Lcom/onyx/android/sdk/ui/AutoSizeDialog;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->g:I

    return p0
.end method

.method public static final synthetic access$getAutoSizeView$p(Lcom/onyx/android/sdk/ui/AutoSizeDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->e:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$setAutoFitTimerKey$p(Lcom/onyx/android/sdk/ui/AutoSizeDialog;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->f:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget p0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->f:I

    if-le p0, v0, :cond_2

    int-to-float p0, v0

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {p1, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "autoSize"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget p0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->g:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget p0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->g:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->f:I

    new-instance v0, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog$setContentView$1;-><init>(Lcom/onyx/android/sdk/ui/AutoSizeDialog;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->addOnLayoutChangeListener(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method
