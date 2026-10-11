.class public Lcom/sunia/HTREnginev2/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;-><init>(ZI)V

    sput-object v0, Lcom/sunia/HTREnginev2/g1;->a:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    const-string v0, "\\\\[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/g1;->b:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/g1;->c:Ljava/util/regex/Pattern;

    const-string v0, "[a-z]{2,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/g1;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Lcom/sunia/HTREnginev2/f1;
    .locals 11

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/e0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const-string v3, "?"

    if-lt v1, v2, :cond_1

    :try_start_1
    const-string v4, "}"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "{"

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "="

    const/4 v5, 0x0

    if-nez v0, :cond_2

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v5

    .line 8
    :goto_1
    invoke-static {v1}, Lcom/sunia/HTREnginev2/e0;->b(Ljava/util/List;)Lcom/sunia/HTREnginev2/l1;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sunia/HTREnginev2/u;->a(Lcom/sunia/HTREnginev2/l1;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "\\underline{?}"

    if-eqz v0, :cond_3

    .line 9
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v0, "\\underline{=}"

    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/s0;->a(I)Lcom/sunia/HTREnginev2/s0$d;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-static {v3, p1}, Lcom/sunia/HTREnginev2/g1;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 17
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sunia/HTREnginev2/z0;

    .line 18
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isTruncated()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p1, v8}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->isExact(Lcom/sunia/HTREnginev2/z0;)Z

    move-result v10

    if-nez v10, :cond_5

    move v7, v2

    .line 19
    :cond_5
    invoke-virtual {p1, v8}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;->encodeNumber(Lcom/sunia/HTREnginev2/z0;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_8

    .line 20
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_8

    .line 21
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\\approx"

    .line 23
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v5, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 24
    :cond_8
    new-instance p1, Lcom/sunia/HTREnginev2/f1;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/sunia/HTREnginev2/g1;->c(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sunia/HTREnginev2/f1$a;->b:Lcom/sunia/HTREnginev2/f1$a;

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/sunia/HTREnginev2/f1$a;->c:Lcom/sunia/HTREnginev2/f1$a;

    :goto_4
    invoke-static {v1}, Lcom/sunia/HTREnginev2/g1;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sunia/HTREnginev2/f1;-><init>(Lcom/sunia/HTREnginev2/f1$a;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    .line 25
    :catch_0
    new-instance p1, Lcom/sunia/HTREnginev2/f1;

    sget-object v0, Lcom/sunia/HTREnginev2/f1$a;->a:Lcom/sunia/HTREnginev2/f1$a;

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/f1;-><init>(Lcom/sunia/HTREnginev2/f1$a;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s0;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/solver/SolverContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/s0;

    .line 27
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s0;->a()Lcom/sunia/HTREnginev2/z0;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s0;

    if-eq v3, v1, :cond_1

    .line 31
    invoke-virtual {v3, v2, v0, p1}, Lcom/sunia/HTREnginev2/s0;->a(Lcom/sunia/HTREnginev2/z0;Ljava/util/Map;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 32
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sunia/HTREnginev2/g1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v1, Lcom/sunia/HTREnginev2/g1;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\\operatorname{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v1, Lcom/sunia/HTREnginev2/g1;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s0;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/s0;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s0;->a()Lcom/sunia/HTREnginev2/z0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/z0;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/s0;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/s0;->a()Lcom/sunia/HTREnginev2/z0;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/z0;->a(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/z0;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
