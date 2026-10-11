.class public Lorg/apache/commons/compress/harmony/pack200/CPClass;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

.field public final h:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->g:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    const/16 v4, 0x2d

    if-gt v3, v4, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->h:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->h:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPClass;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->f:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIndexInCpUtf8()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->g:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public isInnerClass()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->h:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPClass;->f:Ljava/lang/String;

    return-object p0
.end method
