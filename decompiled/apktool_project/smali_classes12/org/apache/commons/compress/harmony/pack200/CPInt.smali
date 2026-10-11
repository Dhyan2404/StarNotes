.class public Lorg/apache/commons/compress/harmony/pack200/CPInt;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPInt;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPInt;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPInt;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPInt;)I
    .locals 0

    .line 2
    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->f:I

    iget p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;->f:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public getInt()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPInt;->f:I

    return p0
.end method
