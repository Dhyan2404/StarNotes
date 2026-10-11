.class public Lnet/sf/saxon/type/AlphaCode$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/AlphaCode$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/AlphaCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/type/AlphaCode$e<",
        "Lnet/sf/saxon/type/AlphaCode$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/type/AlphaCode$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/type/AlphaCode$f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$f;->g(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/type/AlphaCode$c;

    check-cast p3, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$f;->j(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Lnet/sf/saxon/type/AlphaCode$c;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$f;->h(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$f;->i(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic e()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/AlphaCode$f;->f()Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object p0

    return-object p0
.end method

.method public f()Lnet/sf/saxon/type/AlphaCode$c;
    .locals 1

    new-instance p0, Lnet/sf/saxon/type/AlphaCode$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/AlphaCode$c;-><init>(Lnet/sf/saxon/type/AlphaCode$a;)V

    return-object p0
.end method

.method public g(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/type/AlphaCode$c;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "f"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string p0, "optionalFields"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iput-object p0, p1, Lnet/sf/saxon/type/AlphaCode$c;->o:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad alphacode component "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/type/AlphaCode$c;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/type/AlphaCode$c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "u"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string p0, "m"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string p0, "i"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string p0, "d"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :sswitch_4
    const-string p0, "a"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad alphacode component "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-array p0, v1, [Lnet/sf/saxon/type/AlphaCode$c;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/type/AlphaCode$c;

    iput-object p0, p1, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    iput v0, p1, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    goto :goto_1

    :pswitch_1
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->f:Ljava/util/List;

    goto :goto_1

    :pswitch_2
    new-array p0, v1, [Lnet/sf/saxon/type/AlphaCode$c;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/type/AlphaCode$c;

    iput-object p0, p1, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    const/16 p0, 0x17

    iput p0, p1, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    goto :goto_1

    :pswitch_3
    new-array p0, v1, [Lnet/sf/saxon/type/AlphaCode$c;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/type/AlphaCode$c;

    iput-object p0, p1, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    const/16 p0, 0x18

    iput p0, p1, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    goto :goto_1

    :pswitch_4
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_4
        0x64 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6d -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "z"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string p0, "x"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string p0, "p"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string p0, "o"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string p0, "n"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_0

    :sswitch_5
    const-string p0, "c"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad alphacode component "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iput-boolean v0, p1, Lnet/sf/saxon/type/AlphaCode$c;->e:Z

    goto :goto_1

    :pswitch_1
    iput-boolean v0, p1, Lnet/sf/saxon/type/AlphaCode$c;->p:Z

    goto :goto_1

    :pswitch_2
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->d:Ljava/lang/String;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_5
        0x6e -> :sswitch_4
        0x6f -> :sswitch_3
        0x70 -> :sswitch_2
        0x78 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lnet/sf/saxon/type/AlphaCode$c;Ljava/lang/String;Lnet/sf/saxon/type/AlphaCode$c;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "v"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string p0, "r"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string p0, "k"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string p0, "e"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string p0, "selfReference"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad alphacode component "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    goto :goto_1

    :pswitch_1
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->i:Lnet/sf/saxon/type/AlphaCode$c;

    goto :goto_1

    :pswitch_2
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->g:Lnet/sf/saxon/type/AlphaCode$c;

    goto :goto_1

    :pswitch_3
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->k:Lnet/sf/saxon/type/AlphaCode$c;

    goto :goto_1

    :pswitch_4
    iput-object p3, p1, Lnet/sf/saxon/type/AlphaCode$c;->q:Lnet/sf/saxon/type/AlphaCode$c;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c01faa1 -> :sswitch_4
        0x65 -> :sswitch_3
        0x6b -> :sswitch_2
        0x72 -> :sswitch_1
        0x76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
