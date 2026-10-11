.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstantNumber;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;
.source "SourceFile"


# direct methods
.method public constructor <init>(BLjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;-><init>(BLjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method
