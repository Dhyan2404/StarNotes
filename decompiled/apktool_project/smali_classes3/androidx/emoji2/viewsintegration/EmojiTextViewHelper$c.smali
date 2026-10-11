.class public Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$b;-><init>()V

    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    return-void
.end method


# virtual methods
.method public a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1
    .param p1    # [Landroid/text/InputFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->b()Z

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->j(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->d(Z)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->e()V

    return-void
.end method

.method public f(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1
    .param p1    # Landroid/text/method/TransformationMethod;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->f(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method

.method public final g()Z
    .locals 0

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
