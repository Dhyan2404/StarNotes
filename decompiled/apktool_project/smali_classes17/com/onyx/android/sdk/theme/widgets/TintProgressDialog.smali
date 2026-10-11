.class public Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field public e:Landroid/widget/ProgressBar;

.field public f:Landroid/widget/TextView;

.field public g:I

.field public h:Landroid/widget/TextView;

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field public k:Ljava/text/NumberFormat;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Ljava/lang/CharSequence;

.field public t:Z

.field public u:Z

.field public v:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->g:I

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->g:I

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->a()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;
    .locals 1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->setIndeterminate(Z)V

    .line 8
    invoke-virtual {v0, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {v0, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->i:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->k:Ljava/text/NumberFormat;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->v:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->l:I

    return p0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->m:I

    return p0
.end method

.method public getSecondaryProgress()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->n:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->i:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->h:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->k:Ljava/text/NumberFormat;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    int-to-double v1, p1

    int-to-double v5, v0

    div-double/2addr v1, v5

    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->k:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return v4
.end method

.method public incrementProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->o:I

    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->p:I

    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->t:Z

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54ffffec

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->u:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->u:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->t:Z

    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->r:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->l:I

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->s:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->m:I

    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->k:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->g:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->b()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/onyx/android/sdk/theme/widgets/TintProgressDialog;->n:I

    :goto_0
    return-void
.end method
