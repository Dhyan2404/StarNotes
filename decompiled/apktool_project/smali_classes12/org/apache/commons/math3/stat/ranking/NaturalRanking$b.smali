.class public Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/ranking/NaturalRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:D

.field public final f:I


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->e:D

    iput p3, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->f:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->e:D

    iget-wide p0, p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->e:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->f:I

    return p0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->e:D

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->a(Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)I

    move-result p0

    return p0
.end method
