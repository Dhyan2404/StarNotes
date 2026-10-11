.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$b;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$e;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$a;)V

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$b;->b:I

    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$b;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$b;->b:I

    return p0
.end method
