.class public abstract Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->e:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->e:I

    return p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->e:I

    return-void
.end method
