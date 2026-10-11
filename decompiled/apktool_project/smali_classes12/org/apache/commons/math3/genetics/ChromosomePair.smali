.class public Lorg/apache/commons/math3/genetics/ChromosomePair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/genetics/Chromosome;

.field public final b:Lorg/apache/commons/math3/genetics/Chromosome;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->a:Lorg/apache/commons/math3/genetics/Chromosome;

    iput-object p2, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->b:Lorg/apache/commons/math3/genetics/Chromosome;

    return-void
.end method


# virtual methods
.method public getFirst()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->a:Lorg/apache/commons/math3/genetics/Chromosome;

    return-object p0
.end method

.method public getSecond()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->b:Lorg/apache/commons/math3/genetics/Chromosome;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s,%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
