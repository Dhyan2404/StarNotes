.class public Lnet/sf/saxon/value/IntegerRange$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/value/IntegerRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/value/AtomicValue;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/value/IntegerRange;

.field public f:J


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/IntegerRange;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/IntegerRange$a;->e:Lnet/sf/saxon/value/IntegerRange;

    iget-wide v0, p1, Lnet/sf/saxon/value/IntegerRange;->start:J

    iput-wide v0, p0, Lnet/sf/saxon/value/IntegerRange$a;->f:J

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/value/AtomicValue;
    .locals 5

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/value/IntegerRange$a;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lnet/sf/saxon/value/IntegerRange$a;->f:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/IntegerRange$a;->f:J

    iget-object p0, p0, Lnet/sf/saxon/value/IntegerRange$a;->e:Lnet/sf/saxon/value/IntegerRange;

    iget-wide v2, p0, Lnet/sf/saxon/value/IntegerRange;->end:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange$a;->a()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
