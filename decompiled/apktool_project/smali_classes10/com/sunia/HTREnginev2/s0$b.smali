.class public Lcom/sunia/HTREnginev2/s0$b;
.super Lcom/sunia/HTREnginev2/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/z0;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/z0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/s0;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/s0$b;->a:Lcom/sunia/HTREnginev2/z0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/z0;Lcom/sunia/HTREnginev2/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/s0$b;-><init>(Lcom/sunia/HTREnginev2/z0;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/z0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0$b;->a:Lcom/sunia/HTREnginev2/z0;

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

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s0$b;->a:Lcom/sunia/HTREnginev2/z0;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
