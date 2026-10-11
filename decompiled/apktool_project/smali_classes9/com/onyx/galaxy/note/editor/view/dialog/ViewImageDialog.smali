.class public final Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0019\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0012\u0010\u000c\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u001b\u0010\r\u001a\u00020\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0018\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;",
        "Landroid/app/Dialog;",
        "",
        "g",
        "",
        "diff",
        "n",
        "m",
        "scale",
        "p",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "o",
        "q",
        "(Ljava/lang/Float;)V",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "f",
        "Landroid/graphics/Bitmap;",
        "Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;Landroid/graphics/Bitmap;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:F = 1.0f

.field public static final i:F = 16.0f

.field public static final j:F = 0.5f

.field public static final k:F = 0.25f

.field public static final l:F = 0.5f

.field public static final m:F = 8.0f


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->Companion:Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->fullScreenDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->g:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->g()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;FFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->h(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;FFF)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$updateScalePercentText(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->q(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->k(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->i(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->j(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->l(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;FFF)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->r(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Ljava/lang/Float;ILjava/lang/Object;)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->m()V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->n(F)V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p1, -0x41800000    # -0.25f

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->n(F)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;Ljava/lang/Float;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->q(Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    return-object p0
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setMinimumScale(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setMaximumScale(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance v1, Lcom/sunia/HTREnginev2/n3o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n3o;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/OnScaleChangedListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->scaleRestore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/o3o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o3o;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->scaleUp:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/p3o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p3o;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->scaleDown:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/q3o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q3o;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->quit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/r3o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r3o;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->o(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final m()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->p(F)V

    return-void
.end method

.method public final n(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->p(F)V

    return-void
.end method

.method public final o(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->m()V

    return-void
.end method

.method public final p(F)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$setScale$1;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog$setScale$1;-><init>(FLcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final q(Ljava/lang/Float;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->image:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ViewImageDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogViewImageBinding;->percent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
