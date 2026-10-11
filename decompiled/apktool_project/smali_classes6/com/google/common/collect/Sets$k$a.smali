.class public Lcom/google/common/collect/Sets$k$a;
.super Lcom/sunia/HTREnginev2/v3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$k;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/v3<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/Sets$k;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$k;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Sets$k$a;->g:Lcom/google/common/collect/Sets$k;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/v3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$k$a;->b(I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Sets$l;

    iget-object p0, p0, Lcom/google/common/collect/Sets$k$a;->g:Lcom/google/common/collect/Sets$k;

    iget-object p0, p0, Lcom/google/common/collect/Sets$k;->e:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$l;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-object v0
.end method
