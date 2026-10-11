.class public Lcom/google/common/collect/ArrayTable$d$b;
.super Lcom/sunia/HTREnginev2/v3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$d;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/v3<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/ArrayTable$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ArrayTable$d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$d$b;->g:Lcom/google/common/collect/ArrayTable$d;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/v3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$d$b;->b(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/ArrayTable$d$b;->g:Lcom/google/common/collect/ArrayTable$d;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$d;->a(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
