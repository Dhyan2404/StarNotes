.class public Lorg/apache/commons/compress/harmony/pack200/CPLong;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPLong;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->f:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPLong;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPLong;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPLong;)I
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->f:J

    iget-wide p0, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;->f:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public getLong()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPLong;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
