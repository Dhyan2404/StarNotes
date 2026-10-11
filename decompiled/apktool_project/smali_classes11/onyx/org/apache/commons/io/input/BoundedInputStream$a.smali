.class public abstract Lonyx/org/apache/commons/io/input/BoundedInputStream$a;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/BoundedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lonyx/org/apache/commons/io/input/BoundedInputStream$a<",
        "TT;>;>",
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/BoundedInputStream;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public l:J

.field public m:J

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->n:Z

    return-void
.end method


# virtual methods
.method public g()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->l:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->m:J

    return-wide v0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->n:Z

    return p0
.end method

.method public setCount(J)Lonyx/org/apache/commons/io/input/BoundedInputStream$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->l:J

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;

    return-object p0
.end method

.method public setMaxCount(J)Lonyx/org/apache/commons/io/input/BoundedInputStream$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->m:J

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;

    return-object p0
.end method

.method public setPropagateClose(Z)Lonyx/org/apache/commons/io/input/BoundedInputStream$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;->n:Z

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;->asThis()Lonyx/org/apache/commons/io/build/AbstractSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/BoundedInputStream$a;

    return-object p0
.end method
