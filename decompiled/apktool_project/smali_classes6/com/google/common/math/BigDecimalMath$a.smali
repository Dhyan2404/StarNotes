.class public Lcom/google/common/math/BigDecimalMath$a;
.super Lcom/sunia/HTREnginev2/uin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/BigDecimalMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/uin<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/math/BigDecimalMath$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/BigDecimalMath$a;

    invoke-direct {v0}, Lcom/google/common/math/BigDecimalMath$a;-><init>()V

    sput-object v0, Lcom/google/common/math/BigDecimalMath$a;->a:Lcom/google/common/math/BigDecimalMath$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/uin;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/math/BigDecimalMath$a;->f(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Number;)D
    .locals 0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/google/common/math/BigDecimalMath$a;->g(Ljava/math/BigDecimal;)D

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic d(Ljava/lang/Number;)I
    .locals 0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/google/common/math/BigDecimalMath$a;->h(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic e(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/math/BigDecimalMath$a;->i(DLjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/math/BigDecimal;)D
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public h(Ljava/math/BigDecimal;)I
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    return p0
.end method

.method public i(DLjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 0

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p0
.end method
