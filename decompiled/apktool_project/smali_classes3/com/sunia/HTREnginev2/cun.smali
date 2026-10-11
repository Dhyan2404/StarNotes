.class public Lcom/sunia/HTREnginev2/cun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/cun$b;,
        Lcom/sunia/HTREnginev2/cun$a;,
        Lcom/sunia/HTREnginev2/cun$c;
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Landroid/text/Spannable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 1
    .param p1    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/cun;->e:Z

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    return-void
.end method

.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 1
    .param p1    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/cun;->e:Z

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/cun;->e:Z

    .line 9
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    return-void
.end method

.method public static c()Lcom/sunia/HTREnginev2/cun$b;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cun$c;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cun$c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/cun;->e:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/cun;->c()Lcom/sunia/HTREnginev2/cun$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/cun$b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/cun;->e:Z

    return-void
.end method

.method public b()Landroid/text/Spannable;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    return-object p0
.end method

.method public charAt(I)C
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cun$a;->a(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cun$a;->b(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/cun;->a()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/cun;->a()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cun;->f:Landroid/text/Spannable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
