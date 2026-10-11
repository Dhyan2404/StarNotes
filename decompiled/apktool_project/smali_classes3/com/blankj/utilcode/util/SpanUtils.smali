.class public final Lcom/blankj/utilcode/util/SpanUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;,
        Lcom/blankj/utilcode/util/SpanUtils$h;,
        Lcom/blankj/utilcode/util/SpanUtils$g;,
        Lcom/blankj/utilcode/util/SpanUtils$c;,
        Lcom/blankj/utilcode/util/SpanUtils$d;,
        Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;,
        Lcom/blankj/utilcode/util/SpanUtils$b;,
        Lcom/blankj/utilcode/util/SpanUtils$f;,
        Lcom/blankj/utilcode/util/SpanUtils$i;,
        Lcom/blankj/utilcode/util/SpanUtils$e;,
        Lcom/blankj/utilcode/util/SpanUtils$j;,
        Lcom/blankj/utilcode/util/SpanUtils$Align;
    }
.end annotation


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final a0:I = -0x1000001

.field public static final b0:Ljava/lang/String;


# instance fields
.field public A:Landroid/graphics/Typeface;

.field public B:Landroid/text/Layout$Alignment;

.field public C:I

.field public D:Landroid/text/style/ClickableSpan;

.field public E:Ljava/lang/String;

.field public F:F

.field public G:Landroid/graphics/BlurMaskFilter$Blur;

.field public H:Landroid/graphics/Shader;

.field public I:F

.field public J:F

.field public K:F

.field public L:I

.field public M:[Ljava/lang/Object;

.field public N:Landroid/graphics/Bitmap;

.field public O:Landroid/graphics/drawable/Drawable;

.field public P:Landroid/net/Uri;

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

.field public V:Z

.field public W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public a:Landroid/widget/TextView;

.field public b:Ljava/lang/CharSequence;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:F

.field public r:F

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/SpanUtils;->b0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->X:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->Y:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->Z:I

    .line 7
    new-instance v0, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;-><init>(Lcom/blankj/utilcode/util/SpanUtils$a;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->W:I

    .line 10
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->a:Landroid/widget/TextView;

    return-void
.end method

.method public static with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/SpanUtils;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/SpanUtils;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->b()V

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->W:I

    return-void
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public appendImage(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(II)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public appendImage(II)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 15
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->Q:I

    .line 16
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    return-object p0
.end method

.method public appendImage(Landroid/graphics/Bitmap;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 3
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->N:Landroid/graphics/Bitmap;

    .line 4
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    return-object p0
.end method

.method public appendImage(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/drawable/Drawable;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public appendImage(Landroid/graphics/drawable/Drawable;I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 7
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->O:Landroid/graphics/drawable/Drawable;

    .line 8
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    return-object p0
.end method

.method public appendImage(Landroid/net/Uri;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/net/Uri;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public appendImage(Landroid/net/Uri;I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 11
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->P:Landroid/net/Uri;

    .line 12
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    return-object p0
.end method

.method public appendLine()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 2
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils;->b0:Ljava/lang/String;

    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public appendLine(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/blankj/utilcode/util/SpanUtils;->b0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(II)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public appendSpace(II)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->a(I)V

    .line 3
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->S:I

    .line 4
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->T:I

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->W:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->e()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->f()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->g()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->c()V

    return-void
.end method

.method public final c()V
    .locals 3

    const/16 v0, 0x21

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    const v0, -0x1000001

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->d:I

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->f:I

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->h:I

    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->k:I

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->m:I

    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->p:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->q:F

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->r:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->s:Z

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->t:Z

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->u:Z

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->v:Z

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->w:Z

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->x:Z

    iput-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->y:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->A:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->B:Landroid/text/Layout$Alignment;

    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->C:I

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->D:Landroid/text/style/ClickableSpan;

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->E:Ljava/lang/String;

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->F:F

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->H:Landroid/graphics/Shader;

    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->I:F

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->M:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->N:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->O:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->P:Landroid/net/Uri;

    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->Q:I

    iput v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->S:I

    return-void
.end method

.method public create()Landroid/text/SpannableStringBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->b()V

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->V:Z

    iget-object p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 12

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-nez v0, :cond_1

    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->f:I

    if-eq v4, v3, :cond_1

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v0, v2

    :cond_1
    iget-object v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->C:I

    if-eq v5, v3, :cond_2

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v6, Lcom/blankj/utilcode/util/SpanUtils$j;

    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->C:I

    invoke-direct {v6, v7}, Lcom/blankj/utilcode/util/SpanUtils$j;-><init>(I)V

    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v6, v0, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->d:I

    const v6, -0x1000001

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->d:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v7, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->e:I

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->e:I

    invoke-direct {v7, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v7, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->k:I

    if-eq v5, v3, :cond_5

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->k:I

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->l:I

    invoke-direct {v7, v8, v9}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v7, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->h:I

    const/4 v7, 0x0

    if-eq v5, v6, :cond_6

    iget-object v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v9, Lcom/blankj/utilcode/util/SpanUtils$f;

    iget v10, p0, Lcom/blankj/utilcode/util/SpanUtils;->i:I

    iget v11, p0, Lcom/blankj/utilcode/util/SpanUtils;->j:I

    invoke-direct {v9, v5, v10, v11, v7}, Lcom/blankj/utilcode/util/SpanUtils$f;-><init>(IIILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v8, v9, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->m:I

    if-eq v5, v6, :cond_7

    iget-object v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v8, Lcom/blankj/utilcode/util/SpanUtils$b;

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->n:I

    iget v10, p0, Lcom/blankj/utilcode/util/SpanUtils;->o:I

    invoke-direct {v8, v5, v9, v10, v7}, Lcom/blankj/utilcode/util/SpanUtils$b;-><init>(IIILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v6, v8, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->p:I

    if-eq v5, v3, :cond_8

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->p:I

    invoke-direct {v6, v8, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v6, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->q:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->q:F

    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v8, v0, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->r:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v8, Landroid/text/style/ScaleXSpan;

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->r:F

    invoke-direct {v8, v9}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v5, v8, v0, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->f:I

    if-eq v5, v3, :cond_b

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v8, Lcom/blankj/utilcode/util/SpanUtils$e;

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->g:I

    invoke-direct {v8, v5, v9}, Lcom/blankj/utilcode/util/SpanUtils$e;-><init>(II)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v8, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->s:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v5, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->t:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v5, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->u:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v5, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->v:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v5, Landroid/text/style/SubscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SubscriptSpan;-><init>()V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v5, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->w:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v5, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    iget-boolean v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->x:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v5, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    iget-boolean v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->y:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->z:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Landroid/text/style/TypefaceSpan;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->z:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->A:Landroid/graphics/Typeface;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->A:Landroid/graphics/Typeface;

    invoke-direct {v3, v5, v7}, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;Lcom/blankj/utilcode/util/SpanUtils$a;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->B:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->B:Landroid/text/Layout$Alignment;

    invoke-direct {v3, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->D:Landroid/text/style/ClickableSpan;

    if-eqz v2, :cond_16

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->E:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Landroid/text/style/URLSpan;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->E:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->F:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Landroid/text/style/MaskFilterSpan;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->F:F

    iget-object v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->G:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-direct {v3, v5}, Landroid/text/style/MaskFilterSpan;-><init>(Landroid/graphics/MaskFilter;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->H:Landroid/graphics/Shader;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$g;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->H:Landroid/graphics/Shader;

    invoke-direct {v3, v5, v7}, Lcom/blankj/utilcode/util/SpanUtils$g;-><init>(Landroid/graphics/Shader;Lcom/blankj/utilcode/util/SpanUtils$a;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->I:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$h;

    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->I:F

    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->J:F

    iget v8, p0, Lcom/blankj/utilcode/util/SpanUtils;->K:F

    iget v9, p0, Lcom/blankj/utilcode/util/SpanUtils;->L:I

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/blankj/utilcode/util/SpanUtils$h;-><init>(FFFILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1a
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->M:[Ljava/lang/Object;

    if-eqz v2, :cond_1b

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1b

    aget-object v5, v2, v1

    iget-object v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    iget v7, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v6, v5, v0, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1b
    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-string v1, "<img>"

    iput-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->e()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->N:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$d;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->N:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$d;-><init>(Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->O:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$d;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->O:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$d;-><init>(Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->P:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$d;

    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->P:Landroid/net/Uri;

    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$d;-><init>(Landroid/net/Uri;ILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->Q:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v4, Lcom/blankj/utilcode/util/SpanUtils$d;

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->Q:I

    iget v6, p0, Lcom/blankj/utilcode/util/SpanUtils;->R:I

    invoke-direct {v4, v5, v6, v3}, Lcom/blankj/utilcode/util/SpanUtils$d;-><init>(IILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-string v1, "< >"

    iput-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->e()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    new-instance v3, Lcom/blankj/utilcode/util/SpanUtils$i;

    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils;->S:I

    iget v5, p0, Lcom/blankj/utilcode/util/SpanUtils;->T:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/blankj/utilcode/util/SpanUtils$i;-><init>(IILcom/blankj/utilcode/util/SpanUtils$a;)V

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public get()Landroid/text/SpannableStringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SpanUtils;->U:Lcom/blankj/utilcode/util/SpanUtils$SerializableSpannableStringBuilder;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->e:I

    return-object p0
.end method

.method public setBlur(FLandroid/graphics/BlurMaskFilter$Blur;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->F:F

    iput-object p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->G:Landroid/graphics/BlurMaskFilter$Blur;

    return-object p0
.end method

.method public setBold()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->w:Z

    return-object p0
.end method

.method public setBoldItalic()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->y:Z

    return-object p0
.end method

.method public setBullet(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/SpanUtils;->setBullet(III)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public setBullet(III)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->m:I

    .line 3
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->n:I

    .line 4
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils;->o:I

    return-object p0
.end method

.method public setClickSpan(IZLandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->d()V

    .line 4
    new-instance v0, Lcom/blankj/utilcode/util/SpanUtils$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$a;-><init>(Lcom/blankj/utilcode/util/SpanUtils;IZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->D:Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method public setClickSpan(Landroid/text/style/ClickableSpan;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # Landroid/text/style/ClickableSpan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->d()V

    .line 2
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->D:Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method public setFlag(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->c:I

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->z:Ljava/lang/String;

    return-object p0
.end method

.method public setFontProportion(F)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->q:F

    return-object p0
.end method

.method public setFontSize(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setFontSize(IZ)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public setFontSize(IZ)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 3
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->p:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->p:I

    :goto_0
    return-object p0
.end method

.method public setFontXProportion(F)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->r:F

    return-object p0
.end method

.method public setForegroundColor(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->d:I

    return-object p0
.end method

.method public setHorizontalAlign(Landroid/text/Layout$Alignment;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->B:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setItalic()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->x:Z

    return-object p0
.end method

.method public setLeadingMargin(II)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->k:I

    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->l:I

    return-object p0
.end method

.method public setLineHeight(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setLineHeight(II)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public setLineHeight(II)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->f:I

    .line 3
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->g:I

    return-object p0
.end method

.method public setQuoteColor(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/blankj/utilcode/util/SpanUtils;->setQuoteColor(III)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p0

    return-object p0
.end method

.method public setQuoteColor(III)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->h:I

    .line 3
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->i:I

    .line 4
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils;->j:I

    return-object p0
.end method

.method public setShader(Landroid/graphics/Shader;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # Landroid/graphics/Shader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->H:Landroid/graphics/Shader;

    return-object p0
.end method

.method public setShadow(FFFI)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->I:F

    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils;->J:F

    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils;->K:F

    iput p4, p0, Lcom/blankj/utilcode/util/SpanUtils;->L:I

    return-object p0
.end method

.method public varargs setSpans([Ljava/lang/Object;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->M:[Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setStrikethrough()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->s:Z

    return-object p0
.end method

.method public setSubscript()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->v:Z

    return-object p0
.end method

.method public setSuperscript()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->u:Z

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->A:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setUnderline()Lcom/blankj/utilcode/util/SpanUtils;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils;->t:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils;->d()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->E:Ljava/lang/String;

    return-object p0
.end method

.method public setVerticalAlign(I)Lcom/blankj/utilcode/util/SpanUtils;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils;->C:I

    return-object p0
.end method
