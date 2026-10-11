.class public Lcom/sunia/HTREnginev2/sxm$a;
.super Lcom/sunia/HTREnginev2/iji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/sxm;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/iji<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/sunia/HTREnginev2/w4h;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sxm;Lcom/sunia/HTREnginev2/on;Ljava/lang/Object;Lcom/sunia/HTREnginev2/w4h;)V
    .locals 0

    iput-object p4, p0, Lcom/sunia/HTREnginev2/sxm$a;->g:Lcom/sunia/HTREnginev2/w4h;

    invoke-direct {p0, p2, p3}, Lcom/sunia/HTREnginev2/iji;-><init>(Lcom/sunia/HTREnginev2/on;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sxm$a;->g:Lcom/sunia/HTREnginev2/w4h;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iji;->e:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/sunia/HTREnginev2/w4h;->f(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
