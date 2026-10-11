.class public Lcom/sunia/HTREnginev2/nr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/nr;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nr;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/nr;->a:I

    return p0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nr;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nr;->b:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/nr;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/nr;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sunia/HTREnginev2/nr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sunia/HTREnginev2/nr;

    iget v0, p0, Lcom/sunia/HTREnginev2/nr;->a:I

    iget v2, p1, Lcom/sunia/HTREnginev2/nr;->a:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/sunia/HTREnginev2/nr;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/nr;->d(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/nr;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nr;->b:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/nr;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
