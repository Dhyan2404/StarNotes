.class public final Lcom/alibaba/fastjson2/JSONReader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "[I",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$a;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONReader$a;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$a;->e:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;[I)Ljava/math/BigInteger;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_3

    :cond_0
    aget p1, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    array-length v2, p2

    sub-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v2, p1

    if-gez p0, :cond_4

    aget p1, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    move v3, v1

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_3

    if-eqz p1, :cond_3

    aget p1, p2, v3

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    :goto_3
    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    new-array p1, v2, [B

    sub-int/2addr v2, v1

    const/4 v3, 0x4

    move v5, v0

    move v6, v5

    move v4, v3

    :goto_4
    if-ltz v2, :cond_c

    if-ne v4, v3, :cond_b

    add-int/lit8 v4, v6, 0x1

    if-gez v6, :cond_6

    :cond_5
    move v5, v0

    goto :goto_6

    :cond_6
    array-length v5, p2

    if-lt v6, v5, :cond_7

    if-gez p0, :cond_5

    const/4 v5, -0x1

    goto :goto_6

    :cond_7
    array-length v5, p2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    aget v5, p2, v5

    if-ltz p0, :cond_8

    goto :goto_6

    :cond_8
    array-length v7, p2

    add-int/lit8 v8, v7, -0x1

    :goto_5
    if-ltz v8, :cond_9

    aget v9, p2, v8

    if-nez v9, :cond_9

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_9
    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    if-gt v6, v7, :cond_a

    neg-int v5, v5

    goto :goto_6

    :cond_a
    not-int v5, v5

    :goto_6
    move v6, v4

    move v4, v1

    goto :goto_7

    :cond_b
    ushr-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    :goto_7
    int-to-byte v7, v5

    aput-byte v7, p1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$a;->a(Ljava/lang/Integer;[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
