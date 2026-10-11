.class public Lcom/sunia/HTREnginev2/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/r0;


# instance fields
.field public final a:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/sunia/HTREnginev2/z0;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/sunia/HTREnginev2/z0;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/sunia/HTREnginev2/z0;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/sunia/HTREnginev2/z0;",
            "Lcom/sunia/HTREnginev2/z0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v1;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v1;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;[Lcom/sunia/HTREnginev2/z0;)Lcom/sunia/HTREnginev2/z0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/v1;->a:Ljava/util/function/Function;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/z0;

    return-object p0
.end method

.method public varargs a(Lcom/sunia/calculatorv2/ink/solver/SolverContext;Lcom/sunia/HTREnginev2/z0;[Lcom/sunia/HTREnginev2/z0;)[Lcom/sunia/HTREnginev2/z0;
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/sunia/HTREnginev2/z0;

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/v1;->b:Ljava/util/function/Function;

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/z0;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-object p1
.end method
