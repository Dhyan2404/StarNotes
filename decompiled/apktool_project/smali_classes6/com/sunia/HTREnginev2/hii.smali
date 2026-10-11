.class public final synthetic Lcom/sunia/HTREnginev2/hii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic e:Lcom/google/common/graph/ValueGraph;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hii;->e:Lcom/google/common/graph/ValueGraph;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hii;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hii;->e:Lcom/google/common/graph/ValueGraph;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hii;->f:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/google/common/graph/ImmutableValueGraph;->f(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
