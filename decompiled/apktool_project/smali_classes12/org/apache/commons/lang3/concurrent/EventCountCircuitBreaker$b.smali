.class public Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;->a:I

    iput-wide p2, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;->b:J

    return-wide v0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;->a:I

    return p0
.end method

.method public c(I)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;->b()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;->a()J

    move-result-wide p0

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$b;-><init>(IJ)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
