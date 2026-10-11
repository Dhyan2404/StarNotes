.class public abstract Lcom/google/common/collect/Streams$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/util/Spliterator<",
        "*>;R:",
        "Ljava/lang/Object;",
        "S:",
        "Lcom/google/common/collect/Streams$k<",
        "TF;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Streams$k;->e:Ljava/util/Spliterator;

    iput-wide p2, p0, Lcom/google/common/collect/Streams$k;->f:J

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)TS;"
        }
    .end annotation
.end method

.method public b()Lcom/google/common/collect/Streams$k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Streams$k;->e:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v1, p0, Lcom/google/common/collect/Streams$k;->f:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/Streams$k;->a(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$k;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/common/collect/Streams$k;->f:J

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/Streams$k;->f:J

    return-object v1
.end method

.method public characteristics()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Streams$k;->e:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result p0

    and-int/lit16 p0, p0, 0x4050

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-object p0, p0, Lcom/google/common/collect/Streams$k;->e:Ljava/util/Spliterator;

    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Streams$k;->b()Lcom/google/common/collect/Streams$k;

    move-result-object p0

    return-object p0
.end method
