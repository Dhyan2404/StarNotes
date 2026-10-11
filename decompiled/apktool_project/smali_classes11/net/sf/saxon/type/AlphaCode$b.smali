.class public Lnet/sf/saxon/type/AlphaCode$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/AlphaCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Lnet/sf/saxon/type/AlphaCode$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/type/AlphaCode$e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/type/AlphaCode$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/type/AlphaCode$e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    iput-object p1, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    return-void
.end method


# virtual methods
.method public final a(C)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/AlphaCode$b;->b()I

    move-result p0

    if-eq p0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\', found \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const-string p0, "<eof>"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    iget-object v3, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v3, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    invoke-interface {v0}, Lnet/sf/saxon/type/AlphaCode$e;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/type/AlphaCode$b;->b()I

    move-result v1

    const-string v2, "o"

    const-string v3, "1"

    const-string v4, ""

    const/4 v5, 0x1

    if-gez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    invoke-interface {v1, v0, v2, v3}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v6, "*+1?0\u00b0"

    int-to-char v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    const/16 v6, 0xb0

    if-ne v1, v6, :cond_1

    const/16 v1, 0x30

    :cond_1
    iget-object v6, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v2, v1}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    invoke-interface {v1, v0, v2, v3}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    sub-int/2addr v1, v5

    iput v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/AlphaCode$b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    const-string v6, "p"

    invoke-interface {v2, v0, v6, v1}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    const-string v2, "selfReference"

    invoke-interface {v1, v0, v2, p1}, Lnet/sf/saxon/type/AlphaCode$e;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    iget-object v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_12

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_11

    const/16 v6, 0x46

    const/16 v7, 0x5b

    const/16 v8, 0x5d

    const/4 v9, 0x0

    if-eq v1, v6, :cond_b

    if-eq v1, v8, :cond_11

    const/16 v10, 0x61

    if-eq v1, v10, :cond_8

    const/16 v10, 0x69

    if-eq v1, v10, :cond_8

    const/16 v10, 0x6b

    if-eq v1, v10, :cond_7

    const/16 v10, 0x72

    if-eq v1, v10, :cond_7

    const/16 v10, 0x6d

    if-eq v1, v10, :cond_8

    const/16 v10, 0x6e

    if-eq v1, v10, :cond_4

    const/16 v10, 0x75

    if-eq v1, v10, :cond_8

    const/16 v10, 0x76

    if-eq v1, v10, :cond_7

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected one of n|c|t|k|r|v|a|u, found \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :pswitch_0
    iget v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v2, v5

    iput v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {p0}, Lnet/sf/saxon/type/AlphaCode$b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v6, "~"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Q{http://www.w3.org/2001/XMLSchema}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const/16 v6, 0x63

    if-ne v1, v6, :cond_6

    const-string v6, "?"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    const-string v7, "z"

    invoke-interface {v6, v0, v7, v3}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget-object v6, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1, v2}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    :pswitch_1
    iget v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v2, v5

    iput v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {p0, v7}, Lnet/sf/saxon/type/AlphaCode$b;->a(C)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/AlphaCode$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v8}, Lnet/sf/saxon/type/AlphaCode$b;->a(C)V

    iget-object v6, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1, v2}, Lnet/sf/saxon/type/AlphaCode$e;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    :pswitch_2
    iget v6, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v6, v5

    iput v6, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {p0, v7}, Lnet/sf/saxon/type/AlphaCode$b;->a(C)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v9, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_9

    iget v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v2, v5

    iput v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    iget-object v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1, v6}, Lnet/sf/saxon/type/AlphaCode$e;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_9
    :goto_2
    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/AlphaCode$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v9, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_a

    iget v7, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v7, v5

    iput v7, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v8}, Lnet/sf/saxon/type/AlphaCode$b;->a(C)V

    iget-object v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1, v6}, Lnet/sf/saxon/type/AlphaCode$e;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_b
    :pswitch_3
    if-ne v1, v6, :cond_c

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    const-string v6, "x"

    invoke-interface {v1, v0, v6, v3}, Lnet/sf/saxon/type/AlphaCode$e;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v1, v5

    iput v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {p0, v7}, Lnet/sf/saxon/type/AlphaCode$b;->a(C)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    move v10, v9

    :goto_4
    iget-object v11, p0, Lnet/sf/saxon/type/AlphaCode$b;->a:Ljava/lang/String;

    iget v12, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_d

    if-nez v10, :cond_d

    move v10, v5

    goto :goto_4

    :cond_d
    const/16 v12, 0x3f

    if-ne v11, v12, :cond_e

    if-nez v10, :cond_e

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    if-ne v11, v2, :cond_f

    if-nez v10, :cond_f

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    :cond_f
    if-ne v11, v8, :cond_10

    if-nez v10, :cond_10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    const-string v7, "f"

    invoke-interface {v2, v0, v7, v1}, Lnet/sf/saxon/type/AlphaCode$e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->c:Lnet/sf/saxon/type/AlphaCode$e;

    const-string v2, "optionalFields"

    invoke-interface {v1, v0, v2, v6}, Lnet/sf/saxon/type/AlphaCode$e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    return-object v0

    :cond_12
    iget v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    add-int/2addr v1, v5

    iput v1, p0, Lnet/sf/saxon/type/AlphaCode$b;->b:I

    goto/16 :goto_1

    :cond_13
    return-object v0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
