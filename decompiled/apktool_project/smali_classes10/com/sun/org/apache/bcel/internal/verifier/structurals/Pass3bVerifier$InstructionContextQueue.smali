.class final Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstructionContextQueue"
.end annotation


# instance fields
.field private ecs:Ljava/util/Vector;

.field private ics:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ics:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ecs:Ljava/util/Vector;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ecs:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEC(I)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ecs:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getIC(I)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ics:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ics:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->remove(I)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ecs:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->ics:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method
