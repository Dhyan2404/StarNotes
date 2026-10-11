.class public Lnet/sf/saxon/lib/ProtocolRestrictor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/lib/ProtocolRestrictor;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/h9l;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/h9l;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/ProtocolRestrictor;->a:Ljava/util/function/Predicate;

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ",\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const-string v4, "jar:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/i9l;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/i9l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/sunia/HTREnginev2/j9l;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/j9l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/sunia/HTREnginev2/k9l;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/k9l;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/sf/saxon/lib/ProtocolRestrictor;->a:Ljava/util/function/Predicate;

    :goto_2
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->f(Ljava/lang/String;Ljava/net/URI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->g(Ljava/lang/String;Ljava/net/URI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/net/URI;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/lib/ProtocolRestrictor;->e(Ljava/net/URI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/util/List;Ljava/net/URI;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->h(Ljava/util/List;Ljava/net/URI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/net/URI;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 2

    invoke-static {p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->i(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->j(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->i(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/util/List;Ljava/net/URI;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public test(Ljava/net/URI;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ProtocolRestrictor;->a:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/ProtocolRestrictor;->b:Ljava/lang/String;

    return-object p0
.end method
