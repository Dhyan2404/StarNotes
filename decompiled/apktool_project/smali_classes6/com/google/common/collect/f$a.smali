.class public Lcom/google/common/collect/f$a;
.super Lcom/google/common/collect/Multimaps$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    invoke-virtual {p0}, Lcom/google/common/collect/f;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    invoke-virtual {p0}, Lcom/google/common/collect/f;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
