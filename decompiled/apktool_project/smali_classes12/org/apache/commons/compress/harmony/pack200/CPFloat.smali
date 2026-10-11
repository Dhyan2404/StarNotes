.class public Lorg/apache/commons/compress/harmony/pack200/CPFloat;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPFloat;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPFloat;->f:F

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPFloat;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPFloat;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPFloat;)I
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPFloat;->f:F

    iget p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;->f:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public getFloat()F
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPFloat;->f:F

    return p0
.end method
