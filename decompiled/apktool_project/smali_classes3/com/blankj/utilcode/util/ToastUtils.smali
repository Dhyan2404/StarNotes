.class public final Lcom/blankj/utilcode/util/ToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ToastUtils$UtilsMaxWidthRelativeLayout;,
        Lcom/blankj/utilcode/util/ToastUtils$e;,
        Lcom/blankj/utilcode/util/ToastUtils$c;,
        Lcom/blankj/utilcode/util/ToastUtils$d;,
        Lcom/blankj/utilcode/util/ToastUtils$g;,
        Lcom/blankj/utilcode/util/ToastUtils$f;,
        Lcom/blankj/utilcode/util/ToastUtils$MODE;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "TAG_TOAST"

.field public static final m:I = -0x1000001

.field public static final n:Ljava/lang/String; = "toast null"

.field public static final o:Ljava/lang/String; = "toast nothing"

.field public static final p:Lcom/blankj/utilcode/util/ToastUtils;

.field public static q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/blankj/utilcode/util/ToastUtils$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:[Landroid/graphics/drawable/Drawable;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->make()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->b:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->c:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->d:I

    const v1, -0x1000001

    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->e:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->f:I

    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->g:I

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:Z

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->k:Z

    return-void
.end method

.method public static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->q:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/blankj/utilcode/util/ToastUtils;->q:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic c(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$e;
    .locals 0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->n(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$e;

    move-result-object p0

    return-object p0
.end method

.method public static cancel()V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$a;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils$a;-><init>()V

    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->V0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->f:I

    return p0
.end method

.method public static synthetic e(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->e:I

    return p0
.end method

.method public static synthetic f(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->b:I

    return p0
.end method

.method public static synthetic g(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->c:I

    return p0
.end method

.method public static getDefaultMaker()Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    return-object v0
.end method

.method public static synthetic h(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->d:I

    return p0
.end method

.method public static synthetic i(Lcom/blankj/utilcode/util/ToastUtils;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->g:I

    return p0
.end method

.method public static synthetic k(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->h:I

    return p0
.end method

.method public static m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "toast null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "toast nothing"

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static make()Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils;-><init>()V

    return-object v0
.end method

.method public static n(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$e;
    .locals 2

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/b;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$f;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$f;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/b;->w0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$g;

    const/16 v1, 0x7f6

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$g;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$d;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$d;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-object v0
.end method

.method public static o(Landroid/view/View;ILcom/blankj/utilcode/util/ToastUtils;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->p(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static p(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/blankj/utilcode/util/ToastUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$b;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils$b;-><init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/View;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->V0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->p(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static showLong(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->f0(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static varargs showLong(I[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 3
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b;->g0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static showShort(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->f0(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static varargs showShort(I[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 3
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b;->g0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/b;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->p:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method


# virtual methods
.method public final l()I
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:Z

    return p0
.end method

.method public final r(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const-string v0, "light"

    iget-object v6, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    aget-object v6, v0, v4

    if-nez v6, :cond_0

    aget-object v6, v0, v3

    if-nez v6, :cond_0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/blankj/utilcode/R$layout;->utils_toast_view:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->H0(I)Landroid/view/View;

    move-result-object v0

    const v6, 0x102000b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const-string v7, "#BB000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v5

    if-eqz p1, :cond_2

    sget p1, Lcom/blankj/utilcode/R$id;->utvLeftIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v4

    if-eqz p1, :cond_3

    sget p1, Lcom/blankj/utilcode/R$id;->utvTopIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eqz p1, :cond_4

    sget p1, Lcom/blankj/utilcode/R$id;->utvRightIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    if-eqz p1, :cond_5

    sget p1, Lcom/blankj/utilcode/R$id;->utvBottomIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, v2

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-object v0
.end method

.method public final setBgColor(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->e:I

    return-object p0
.end method

.method public final setBgResource(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->f:I

    return-object p0
.end method

.method public final setBottomIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setBottomIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    return-object p0
.end method

.method public final setBottomIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final setDurationIsLong(Z)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:Z

    return-object p0
.end method

.method public final setGravity(III)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->b:I

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils;->c:I

    iput p3, p0, Lcom/blankj/utilcode/util/ToastUtils;->d:I

    return-object p0
.end method

.method public final setLeftIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setLeftIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    return-object p0
.end method

.method public final setLeftIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final setMode(Ljava/lang/String;)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setNotUseSystemToast()Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->k:Z

    return-object p0
.end method

.method public final setRightIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setRightIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    return-object p0
.end method

.method public final setRightIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final setTextColor(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->g:I

    return-object p0
.end method

.method public final setTextSize(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->h:I

    return-object p0
.end method

.method public final setTopIcon(I)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->setTopIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    return-object p0
.end method

.method public final setTopIcon(Landroid/graphics/drawable/Drawable;)Lcom/blankj/utilcode/util/ToastUtils;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final show(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->f0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ToastUtils;->l()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public final varargs show(I[Ljava/lang/Object;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 3
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/b;->g0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ToastUtils;->l()I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ToastUtils;->l()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->o(Landroid/view/View;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public final show(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ToastUtils;->l()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public final varargs show(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/b;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ToastUtils;->l()I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method
