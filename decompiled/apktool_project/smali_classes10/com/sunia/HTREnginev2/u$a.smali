.class public Lcom/sunia/HTREnginev2/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/u;->n(Ljava/util/List;Lcom/sunia/calculatorv2/ink/solver/SolverContext;)Lcom/sunia/HTREnginev2/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/sunia/HTREnginev2/r0;

.field public c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sunia/HTREnginev2/s0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/sunia/HTREnginev2/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/u$a;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u$a;->b:Lcom/sunia/HTREnginev2/r0;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u$a;->c:Ljava/util/LinkedList;

    return-void
.end method
