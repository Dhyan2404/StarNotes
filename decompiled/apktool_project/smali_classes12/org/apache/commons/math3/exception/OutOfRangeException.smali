.class public Lorg/apache/commons/math3/exception/OutOfRangeException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x18c7d429ab6c919L


# instance fields
.field private final hi:Ljava/lang/Number;

.field private final lo:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 2
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lorg/apache/commons/math3/exception/OutOfRangeException;->lo:Ljava/lang/Number;

    .line 4
    iput-object p4, p0, Lorg/apache/commons/math3/exception/OutOfRangeException;->hi:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getHi()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/OutOfRangeException;->hi:Ljava/lang/Number;

    return-object p0
.end method

.method public getLo()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/OutOfRangeException;->lo:Ljava/lang/Number;

    return-object p0
.end method
