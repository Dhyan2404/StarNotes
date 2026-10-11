.class public final Lcom/sunia/HTREnginev2/ytl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/sunia/HTREnginev2/aul;

.field public final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/sunia/HTREnginev2/bul;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/sunia/HTREnginev2/aul;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sunia/HTREnginev2/aul;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/bul;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/ytl;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ytl;->b:Lcom/sunia/HTREnginev2/aul;

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ytl;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
