.class public final Lcom/onyx/android/sdk/ui/DoubleOptionDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0002\u0008&\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 w2\u00020\u0001:\u0001wB\u000f\u0012\u0006\u0010t\u001a\u00020s\u00a2\u0006\u0004\u0008u\u0010vJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\"\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u000f\u001a\u0004\u0008\u0019\u0010\u0011\"\u0004\u0008\u001a\u0010\u0013R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010&\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u000f\u001a\u0004\u0008$\u0010\u0011\"\u0004\u0008%\u0010\u0013R\"\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u000f\u001a\u0004\u0008(\u0010\u0011\"\u0004\u0008)\u0010\u0013R\"\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u000f\u001a\u0004\u0008,\u0010\u0011\"\u0004\u0008-\u0010\u0013R\"\u00102\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010\u000f\u001a\u0004\u00080\u0010\u0011\"\u0004\u00081\u0010\u0013R\"\u00106\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\u000f\u001a\u0004\u00084\u0010\u0011\"\u0004\u00085\u0010\u0013R\"\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u000f\u001a\u0004\u00088\u0010\u0011\"\u0004\u00089\u0010\u0013R\"\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u000f\u001a\u0004\u0008<\u0010\u0011\"\u0004\u0008=\u0010\u0013R\"\u0010B\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u000f\u001a\u0004\u0008@\u0010\u0011\"\u0004\u0008A\u0010\u0013R\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010N\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010E\u001a\u0004\u0008L\u0010G\"\u0004\u0008M\u0010IR\"\u0010R\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010E\u001a\u0004\u0008P\u0010G\"\u0004\u0008Q\u0010IR(\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00020S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR(\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u00020S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010U\u001a\u0004\u0008\\\u0010W\"\u0004\u0008]\u0010YR(\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00020S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010U\u001a\u0004\u0008`\u0010W\"\u0004\u0008a\u0010YR\"\u0010j\u001a\u00020c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\"\u0010n\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010E\u001a\u0004\u0008l\u0010G\"\u0004\u0008m\u0010IR\"\u0010r\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010E\u001a\u0004\u0008p\u0010G\"\u0004\u0008q\u0010I\u00a8\u0006x"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/DoubleOptionDialog;",
        "Landroid/app/Dialog;",
        "",
        "i",
        "d",
        "",
        "resId",
        "Landroid/graphics/drawable/Drawable;",
        "h",
        "show",
        "Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;",
        "e",
        "Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;",
        "binding",
        "f",
        "I",
        "getTitleTextRes",
        "()I",
        "setTitleTextRes",
        "(I)V",
        "titleTextRes",
        "g",
        "getTitleColorRes",
        "setTitleColorRes",
        "titleColorRes",
        "getMessageTextRes",
        "setMessageTextRes",
        "messageTextRes",
        "",
        "Ljava/lang/String;",
        "getMessageText",
        "()Ljava/lang/String;",
        "setMessageText",
        "(Ljava/lang/String;)V",
        "messageText",
        "j",
        "getLeftButtonTitleRes",
        "setLeftButtonTitleRes",
        "leftButtonTitleRes",
        "k",
        "getRightButtonTitleRes",
        "setRightButtonTitleRes",
        "rightButtonTitleRes",
        "l",
        "getLeftButtonColorRes",
        "setLeftButtonColorRes",
        "leftButtonColorRes",
        "m",
        "getRightButtonColorRes",
        "setRightButtonColorRes",
        "rightButtonColorRes",
        "n",
        "getIconDrawableRes",
        "setIconDrawableRes",
        "iconDrawableRes",
        "o",
        "getTitleIconDrawableRes",
        "setTitleIconDrawableRes",
        "titleIconDrawableRes",
        "p",
        "getLeftButtonDrawableRes",
        "setLeftButtonDrawableRes",
        "leftButtonDrawableRes",
        "q",
        "getRightButtonDrawableRes",
        "setRightButtonDrawableRes",
        "rightButtonDrawableRes",
        "",
        "r",
        "Z",
        "getShowCloseButton",
        "()Z",
        "setShowCloseButton",
        "(Z)V",
        "showCloseButton",
        "s",
        "getShowTitleIconView",
        "setShowTitleIconView",
        "showTitleIconView",
        "t",
        "getAutoDismiss",
        "setAutoDismiss",
        "autoDismiss",
        "Lkotlin/Function0;",
        "u",
        "Lkotlin/jvm/functions/Function0;",
        "getOnLeftButtonClick",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnLeftButtonClick",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onLeftButtonClick",
        "v",
        "getOnRightButtonClick",
        "setOnRightButtonClick",
        "onRightButtonClick",
        "w",
        "getOnCloseButtonClick",
        "setOnCloseButtonClick",
        "onCloseButtonClick",
        "",
        "x",
        "F",
        "getMask",
        "()F",
        "setMask",
        "(F)V",
        "mask",
        "y",
        "getShowTitle",
        "setShowTitle",
        "showTitle",
        "z",
        "getShowIcon",
        "setShowIcon",
        "showIcon",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "sdk-ui_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MASK_DARK:F = 0.7f

.field public static final MASK_LIGHT:F = 0.4f


# instance fields
.field public final e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lkotlin/jvm/functions/Function0;
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

.field public v:Lkotlin/jvm/functions/Function0;
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

.field public w:Lkotlin/jvm/functions/Function0;
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

.field public x:F

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

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

    sget v0, Lcom/onyx/android/sdk/ui/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    sget p1, Lcom/onyx/android/sdk/base/R$string;->tip:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->f:I

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->g:I

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->i:Ljava/lang/String;

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_btn_color:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->l:I

    sget p1, Lcom/onyx/android/sdk/base/R$color;->red_warning:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->m:I

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_icon_warning:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->n:I

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->ic_warning:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->o:I

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->selector_dialog_common_btn_primary:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->p:I

    sget p1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_stroke_red:I

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->t:Z

    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$onLeftButtonClick$1;->INSTANCE:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$onLeftButtonClick$1;

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->u:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$onRightButtonClick$1;->INSTANCE:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$onRightButtonClick$1;

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->v:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$onCloseButtonClick$1;->INSTANCE:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$onCloseButtonClick$1;

    iput-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->w:Lkotlin/jvm/functions/Function0;

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->x:F

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->y:Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->i()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->f(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->g(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->w:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->t:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->u:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->t:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->v:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->closeButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "closeButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/jff;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jff;-><init>(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonLeft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "optionButtonLeft"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/kff;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/kff;-><init>(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonRight:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "optionButtonRight"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/lff;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/lff;-><init>(Lcom/onyx/android/sdk/ui/DoubleOptionDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final getAutoDismiss()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->t:Z

    return p0
.end method

.method public final getIconDrawableRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->n:I

    return p0
.end method

.method public final getLeftButtonColorRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->l:I

    return p0
.end method

.method public final getLeftButtonDrawableRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->p:I

    return p0
.end method

.method public final getLeftButtonTitleRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->j:I

    return p0
.end method

.method public final getMask()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->x:F

    return p0
.end method

.method public final getMessageText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getMessageTextRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->h:I

    return p0
.end method

.method public final getOnCloseButtonClick()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->w:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnLeftButtonClick()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->u:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnRightButtonClick()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->v:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getRightButtonColorRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->m:I

    return p0
.end method

.method public final getRightButtonDrawableRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->q:I

    return p0
.end method

.method public final getRightButtonTitleRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->k:I

    return p0
.end method

.method public final getShowCloseButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->r:Z

    return p0
.end method

.method public final getShowIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->z:Z

    return p0
.end method

.method public final getShowTitle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->y:Z

    return p0
.end method

.method public final getShowTitleIconView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->s:Z

    return p0
.end method

.method public final getTitleColorRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->g:I

    return p0
.end method

.method public final getTitleIconDrawableRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->o:I

    return p0
.end method

.method public final getTitleTextRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->f:I

    return p0
.end method

.method public final h(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/base/R$color;->black_percent_08:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setAutoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->t:Z

    return-void
.end method

.method public final setIconDrawableRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->n:I

    return-void
.end method

.method public final setLeftButtonColorRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->l:I

    return-void
.end method

.method public final setLeftButtonDrawableRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->p:I

    return-void
.end method

.method public final setLeftButtonTitleRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->j:I

    return-void
.end method

.method public final setMask(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->x:F

    return-void
.end method

.method public final setMessageText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->i:Ljava/lang/String;

    return-void
.end method

.method public final setMessageTextRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->h:I

    return-void
.end method

.method public final setOnCloseButtonClick(Lkotlin/jvm/functions/Function0;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->w:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnLeftButtonClick(Lkotlin/jvm/functions/Function0;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->u:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnRightButtonClick(Lkotlin/jvm/functions/Function0;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->v:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setRightButtonColorRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->m:I

    return-void
.end method

.method public final setRightButtonDrawableRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->q:I

    return-void
.end method

.method public final setRightButtonTitleRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->k:I

    return-void
.end method

.method public final setShowCloseButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->r:Z

    return-void
.end method

.method public final setShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->z:Z

    return-void
.end method

.method public final setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->y:Z

    return-void
.end method

.method public final setShowTitleIconView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->s:Z

    return-void
.end method

.method public final setTitleColorRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->g:I

    return-void
.end method

.method public final setTitleIconDrawableRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->o:I

    return-void
.end method

.method public final setTitleTextRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->f:I

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->f:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->g:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->i:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->messageText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->messageText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->h:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonLeft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->j:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonRight:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->k:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonLeft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->l:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonRight:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->m:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->image:Landroid/widget/ImageView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->n:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->titleIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->o:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonLeft:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->p:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->optionButtonRight:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->q:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->y:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->closeButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->r:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->image:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->z:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->e:Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;

    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;->titleIconView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->s:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->x:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
