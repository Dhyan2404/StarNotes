.class public Lorg/apache/commons/compress/harmony/pack200/CPString;
.super Lorg/apache/commons/compress/harmony/pack200/CPConstant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
        "Lorg/apache/commons/compress/harmony/pack200/CPString;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/CPConstant;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->g:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CPString;->compareTo(Lorg/apache/commons/compress/harmony/pack200/CPString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/compress/harmony/pack200/CPString;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->f:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPString;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIndexInCpUtf8()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->g:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;->getIndex()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPString;->f:Ljava/lang/String;

    return-object p0
.end method
