.class public Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
.super Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->f:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    iget-object p1, p1, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getUnderlyingString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->f:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->f:Ljava/lang/String;

    return-object p0
.end method
