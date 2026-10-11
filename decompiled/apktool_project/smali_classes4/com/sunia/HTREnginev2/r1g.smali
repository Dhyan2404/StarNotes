.class public final Lcom/sunia/HTREnginev2/r1g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/google/zxing/oned/rss/DataCharacter;

.field public final c:Lcom/google/zxing/oned/rss/DataCharacter;

.field public final d:Lcom/google/zxing/oned/rss/FinderPattern;


# direct methods
.method public constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r1g;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/r1g;->d:Lcom/google/zxing/oned/rss/FinderPattern;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/r1g;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->d:Lcom/google/zxing/oned/rss/FinderPattern;

    return-object p0
.end method

.method public c()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    return-object p0
.end method

.method public d()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sunia/HTREnginev2/r1g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sunia/HTREnginev2/r1g;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r1g;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    iget-object v2, p1, Lcom/sunia/HTREnginev2/r1g;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/r1g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    iget-object v2, p1, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/r1g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->d:Lcom/google/zxing/oned/rss/FinderPattern;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/r1g;->d:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/r1g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/r1g;->a:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r1g;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/r1g;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/r1g;->e(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->d:Lcom/google/zxing/oned/rss/FinderPattern;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/r1g;->e(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/r1g;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/r1g;->c:Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r1g;->d:Lcom/google/zxing/oned/rss/FinderPattern;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
