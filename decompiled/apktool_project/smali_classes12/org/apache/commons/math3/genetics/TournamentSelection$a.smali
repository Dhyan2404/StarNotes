.class public Lorg/apache/commons/math3/genetics/TournamentSelection$a;
.super Lorg/apache/commons/math3/genetics/ListPopulation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/genetics/TournamentSelection;->a(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lorg/apache/commons/math3/genetics/TournamentSelection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/genetics/TournamentSelection;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection$a;->g:Lorg/apache/commons/math3/genetics/TournamentSelection;

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public nextGeneration()Lorg/apache/commons/math3/genetics/Population;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
