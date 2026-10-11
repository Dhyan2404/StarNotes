.class public Lorg/apache/commons/compress/harmony/pack200/CPDouble;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPDouble;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->f:D

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPDouble;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPDouble;)I
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->f:D

    iget-wide p0, p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->f:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public getDouble()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/CPDouble;->f:D

    return-wide v0
.end method
