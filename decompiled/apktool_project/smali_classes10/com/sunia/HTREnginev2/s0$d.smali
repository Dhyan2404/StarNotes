.class public Lcom/sunia/HTREnginev2/s0$d;
.super Lcom/sunia/HTREnginev2/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/s0;-><init>()V

    .line 3
    iput p1, p0, Lcom/sunia/HTREnginev2/s0$d;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/sunia/HTREnginev2/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s0$d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/z0;
    .locals 0

    .line 1
    sget-object p0, Lcom/sunia/HTREnginev2/z0;->h:Lcom/sunia/HTREnginev2/z0;

    return-object p0
.end method

.method public a(Lcom/sunia/HTREnginev2/z0;Ljava/util/Map;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/z0;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/solver/SolverContext;",
            ")V"
        }
    .end annotation

    .line 2
    iget p0, p0, Lcom/sunia/HTREnginev2/s0$d;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/s0$d;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
