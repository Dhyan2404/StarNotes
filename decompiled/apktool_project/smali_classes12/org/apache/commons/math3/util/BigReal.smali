.class public Lorg/apache/commons/math3/util/BigReal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/util/BigReal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ONE:Lorg/apache/commons/math3/util/BigReal;

.field public static final ZERO:Lorg/apache/commons/math3/util/BigReal;

.field private static final serialVersionUID:J = 0x452ca010a807f22eL


# instance fields
.field private final d:Ljava/math/BigDecimal;

.field private roundingMode:Ljava/math/RoundingMode;

.field private scale:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigReal;->ZERO:Lorg/apache/commons/math3/util/BigReal;

    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lorg/apache/commons/math3/util/BigReal;->ONE:Lorg/apache/commons/math3/util/BigReal;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 39
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 40
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 43
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 44
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 47
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 48
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 51
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 52
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 55
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 56
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 59
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 60
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 63
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 64
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 67
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 68
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 7
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 11
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 12
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 15
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 16
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 19
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 20
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 23
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 24
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>([C)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 27
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 28
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 31
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 32
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    const/16 v0, 0x40

    .line 35
    iput v0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    .line 36
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>([CLjava/math/MathContext;)V

    iput-object v0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->add(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public add(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->compareTo(Lorg/apache/commons/math3/util/BigReal;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/math3/util/BigReal;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->divide(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public divide(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object v1, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget v2, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1, p1, v2, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public doubleValue()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/math3/util/BigReal;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/util/BigReal;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/math3/util/BigRealField;->getInstance()Lorg/apache/commons/math3/util/BigRealField;

    move-result-object p0

    return-object p0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    return-object p0
.end method

.method public getScale()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->multiply(I)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->multiply(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public multiply(I)Lorg/apache/commons/math3/util/BigReal;
    .locals 2

    .line 4
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigReal;->negate()Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lorg/apache/commons/math3/util/BigReal;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/BigReal;->reciprocal()Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/BigReal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget v3, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/util/BigReal;->roundingMode:Ljava/math/RoundingMode;

    return-void
.end method

.method public setScale(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/util/BigReal;->scale:I

    return-void
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/util/BigReal;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/BigReal;->subtract(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;

    move-result-object p0

    return-object p0
.end method

.method public subtract(Lorg/apache/commons/math3/util/BigReal;)Lorg/apache/commons/math3/util/BigReal;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/BigReal;

    iget-object p0, p0, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    iget-object p1, p1, Lorg/apache/commons/math3/util/BigReal;->d:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/BigReal;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method
