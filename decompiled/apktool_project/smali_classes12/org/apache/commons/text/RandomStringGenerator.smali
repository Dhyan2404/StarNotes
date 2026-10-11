.class public final Lorg/apache/commons/text/RandomStringGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/RandomStringGenerator$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lorg/apache/commons/text/TextRandomProvider;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;",
            "Lorg/apache/commons/text/TextRandomProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->a:I

    .line 4
    iput p2, p0, Lorg/apache/commons/text/RandomStringGenerator;->b:I

    .line 5
    iput-object p3, p0, Lorg/apache/commons/text/RandomStringGenerator;->c:Ljava/util/Set;

    .line 6
    iput-object p4, p0, Lorg/apache/commons/text/RandomStringGenerator;->d:Lorg/apache/commons/text/TextRandomProvider;

    .line 7
    iput-object p5, p0, Lorg/apache/commons/text/RandomStringGenerator;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;Lorg/apache/commons/text/RandomStringGenerator$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/RandomStringGenerator;->d:Lorg/apache/commons/text/TextRandomProvider;

    if-eqz p0, :cond_0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p2}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p0

    return p0
.end method

.method public final b(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/text/RandomStringGenerator;->d:Lorg/apache/commons/text/TextRandomProvider;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    return p0
.end method

.method public generate(I)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    int-to-long v3, p1

    const-string v5, "Length %d is smaller than zero."

    .line 1
    invoke-static {v2, v5, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->e:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/RandomStringGenerator;->b(Ljava/util/List;)I

    move-result p1

    goto :goto_1

    .line 5
    :cond_3
    iget p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->a:I

    iget v5, p0, Lorg/apache/commons/text/RandomStringGenerator;->b:I

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/text/RandomStringGenerator;->a(II)I

    move-result p1

    .line 6
    :goto_1
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v6, 0x12

    if-eq v5, v6, :cond_7

    const/16 v6, 0x13

    if-eq v5, v6, :cond_7

    .line 7
    iget-object v5, p0, Lorg/apache/commons/text/RandomStringGenerator;->c:Ljava/util/Set;

    if-eqz v5, :cond_6

    .line 8
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/text/CharacterPredicate;

    .line 9
    invoke-interface {v6, p1}, Lorg/apache/commons/text/CharacterPredicate;->test(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v0

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    if-nez v5, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    :cond_7
    :goto_3
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generate(II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Minimum length %d is smaller than zero."

    int-to-long v4, p1

    .line 12
    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    if-gt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 13
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Maximum length %d is smaller than minimum length %d."

    .line 14
    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/RandomStringGenerator;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/RandomStringGenerator;->generate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
