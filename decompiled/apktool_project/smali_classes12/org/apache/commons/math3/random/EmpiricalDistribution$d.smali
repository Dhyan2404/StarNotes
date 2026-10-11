.class public Lorg/apache/commons/math3/random/EmpiricalDistribution$d;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public b:Ljava/io/BufferedReader;

.field public final synthetic c:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->c:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$c;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$a;)V

    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->c:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->c:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v3, v0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->c:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->c:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$d;->b:Ljava/io/BufferedReader;

    return-void
.end method
