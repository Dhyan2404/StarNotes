.class public final Lcom/alibaba/fastjson/util/RyuFloat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x2f

    new-array v0, v0, [[I

    const/high16 v1, 0x20000000

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x28000000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/high16 v1, 0x32000000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/high16 v1, 0x3e800000    # 0.25f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/high16 v1, 0x27100000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/high16 v1, 0x30d40000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/high16 v1, 0x3d090000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const v1, 0x2625a000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const v1, 0x2faf0800

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const v1, 0x3b9aca00

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const v1, 0x2540be40

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const v1, 0x2e90edd0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const v1, 0x3a352944

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const v1, 0x246139ca

    const/high16 v15, 0x40000000    # 2.0f

    filled-new-array {v1, v15}, [I

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const v1, 0x2d79883d

    const/high16 v15, 0x10000000

    filled-new-array {v1, v15}, [I

    move-result-object v1

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const v1, 0x38d7ea4c

    const/high16 v14, 0x34000000

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0xf

    aput-object v1, v0, v14

    const v1, 0x2386f26f

    const/high16 v14, 0x60800000

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x10

    aput-object v1, v0, v14

    const v1, 0x2c68af0b

    const/high16 v14, 0x58a00000

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x11

    aput-object v1, v0, v14

    const v1, 0x3782dace

    const/high16 v14, 0x4ec80000    # 1.6777216E9f

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x12

    aput-object v1, v0, v14

    const v1, 0x22b1c8c1

    const/high16 v14, 0x113d0000

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x13

    aput-object v1, v0, v14

    const v1, 0x2b5e3af1

    const v14, 0x358c4000

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x14

    aput-object v1, v0, v14

    const v1, 0x3635c9ad

    const v14, 0x62ef5000

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x15

    aput-object v1, v0, v14

    const v1, 0x21e19e0c

    const v14, 0x4dd59200    # 4.47889408E8f

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x16

    aput-object v1, v0, v14

    const v1, 0x2a5a058f

    const v14, 0x614af680    # 2.3400028E20f

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x17

    aput-object v1, v0, v14

    const v1, 0x34f086f3

    const v14, 0x599db420

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x18

    aput-object v1, v0, v14

    const v1, 0x21165458

    const v14, 0x28029094    # 7.2478E-15f

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x19

    aput-object v1, v0, v14

    const v1, 0x295be96e

    const v14, 0x320334b9

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x1a

    aput-object v1, v0, v14

    const v1, 0x33b2e3c9

    const v14, 0x7e8401e7

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x1b

    aput-object v1, v0, v14

    const v1, 0x204fce5e

    const v14, 0x1f128130

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x1c

    aput-object v1, v0, v14

    const v1, 0x2863c1f5

    const v14, 0x66d7217c

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x1d

    aput-object v1, v0, v14

    const v1, 0x327cb273

    const v14, 0x208ce9db

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x1e

    aput-object v1, v0, v14

    const v1, 0x3f1bdf10

    const v14, 0x8b02452

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x1f

    aput-object v1, v0, v14

    const v1, 0x27716b6a

    const v14, 0x56e16b3

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x20

    aput-object v1, v0, v14

    const v1, 0x314dc644

    const v14, 0x46c99c60    # 25806.188f

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x21

    aput-object v1, v0, v14

    const v1, 0x3da137d5

    const v14, 0x587c0378

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x22

    aput-object v1, v0, v14

    const v1, 0x2684c2e5

    const v14, 0x474d822b

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x23

    aput-object v1, v0, v14

    const v1, 0x3025f39e

    const v14, 0x7920e2b6

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x24

    aput-object v1, v0, v14

    const v1, 0x3c2f7086

    const v14, 0x57691b64

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x25

    aput-object v1, v0, v14

    const v1, 0x259da654

    const v14, 0x16a1b11e

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x26

    aput-object v1, v0, v14

    const v1, 0x2f050fe9

    const v14, 0x1c4a1d66

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x27

    aput-object v1, v0, v14

    const v1, 0x3ac653e3

    const v14, 0x435ca4bf

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x28

    aput-object v1, v0, v14

    const v1, 0x24bbf46e

    const v14, 0x1a19e6f7

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x29

    aput-object v1, v0, v14

    const v1, 0x2deaf189

    const v14, 0x60a060b5

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x2a

    aput-object v1, v0, v14

    const v1, 0x3965adec

    const v14, 0x18c878e3

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x2b

    aput-object v1, v0, v14

    const v1, 0x23df8cb3

    const v14, 0x4f7d4b8d

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x2c

    aput-object v1, v0, v14

    const v1, 0x2cd76fe0

    const v14, 0x435c9e71

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x2d

    aput-object v1, v0, v14

    const v1, 0x380d4bd8

    const v14, 0x5433c60d

    filled-new-array {v1, v14}, [I

    move-result-object v1

    const/16 v14, 0x2e

    aput-object v1, v0, v14

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    const/16 v0, 0x1f

    new-array v0, v0, [[I

    filled-new-array {v15, v3}, [I

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0xccccccc

    const v2, 0x66666667

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0xa3d70a3

    const v2, 0x6b851eb9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x83126e9

    const v2, 0x3c6a7efa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0xd1b7175

    const v2, 0x4710cb2a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0xa7c5ac4

    const v2, 0x38da3c22

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x8637bd0

    const v2, 0x2d7b634e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v8

    const v1, 0xd6bf94d

    const v2, 0x2f2bd216

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0xabcc771

    const v2, 0xc230e78

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v10

    const v1, 0x89705f4

    const v2, 0x9b5a52d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v11

    const v1, 0xdbe6fec

    const v2, 0x75ef6eae

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v12

    const v1, 0xafebff0

    const v2, 0x5e592558

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v13

    const v1, 0x8cbccc0

    const v2, 0x4b7a8447    # 1.6417863E7f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const v1, 0xe12e134

    const v2, 0x125da071

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const v1, 0xb424dc3

    const v2, 0x284ae6c1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v16

    const v1, 0x901d7cf

    const v2, 0x39d58567

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const v1, 0xe69594b

    const v2, 0x76226f0b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const v1, 0xb877aa3

    const v2, 0x11b525a3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const v1, 0x9392ee8

    const v2, 0x7490eae9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, 0xec1e4a7

    const v2, 0x6db4ab0e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const v1, 0xbce5086

    const v2, 0x249088d8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const v1, 0x971da05

    const v2, 0x3a6d3e0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const v1, 0xf1c9008

    const v2, 0x5d7b966

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const v1, 0xc16d9a0

    const v2, 0x4ac9452

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const v1, 0x9abe14c

    const v2, 0x6a23a9db

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const v1, 0xf79687a

    const v2, 0x769f762b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const v1, 0xc612062

    const v2, 0x2bb2c4ef

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const v1, 0x9e74d1b

    const v2, 0x3c8f03f3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const v1, 0xfd87b5f

    const v2, 0x14180651

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const v1, 0xcad2f7f

    const v2, 0x29acd1da

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const v1, 0xa2425ff

    const v2, 0x3af0a7e2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(F[CI)I
    .locals 31

    .line 3
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x4e

    .line 4
    aput-char v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x61

    .line 5
    aput-char v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    .line 6
    aput-char v1, p1, v2

    :goto_0
    sub-int v0, v0, p2

    return v0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    const/16 v1, 0x79

    const/16 v2, 0x74

    const/16 v3, 0x66

    const/16 v4, 0x49

    const/16 v5, 0x69

    const/16 v6, 0x6e

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 7
    aput-char v4, p1, p2

    add-int/lit8 v4, v0, 0x1

    .line 8
    aput-char v6, p1, v0

    add-int/lit8 v0, v4, 0x1

    .line 9
    aput-char v3, p1, v4

    add-int/lit8 v3, v0, 0x1

    .line 10
    aput-char v5, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 11
    aput-char v6, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 12
    aput-char v5, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 13
    aput-char v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    .line 14
    aput-char v1, p1, v0

    sub-int v2, v2, p2

    return v2

    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    const/16 v7, 0x2d

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 15
    aput-char v7, p1, p2

    add-int/lit8 v7, v0, 0x1

    .line 16
    aput-char v4, p1, v0

    add-int/lit8 v0, v7, 0x1

    .line 17
    aput-char v6, p1, v7

    add-int/lit8 v4, v0, 0x1

    .line 18
    aput-char v3, p1, v0

    add-int/lit8 v0, v4, 0x1

    .line 19
    aput-char v5, p1, v4

    add-int/lit8 v3, v0, 0x1

    .line 20
    aput-char v6, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 21
    aput-char v5, p1, v3

    add-int/lit8 v3, v0, 0x1

    .line 22
    aput-char v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 23
    aput-char v1, p1, v3

    goto :goto_0

    .line 24
    :cond_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x30

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 25
    aput-char v2, p1, p2

    add-int/lit8 v3, v0, 0x1

    .line 26
    aput-char v1, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 27
    aput-char v2, p1, v3

    goto :goto_0

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 28
    aput-char v7, p1, p2

    add-int/lit8 v3, v0, 0x1

    .line 29
    aput-char v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    .line 30
    aput-char v1, p1, v3

    add-int/lit8 v1, v0, 0x1

    .line 31
    aput-char v2, p1, v0

    sub-int v1, v1, p2

    return v1

    :cond_4
    shr-int/lit8 v3, v0, 0x17

    and-int/lit16 v3, v3, 0xff

    const v4, 0x7fffff

    and-int/2addr v4, v0

    const/16 v5, 0x17

    if-nez v3, :cond_5

    const/16 v6, -0x95

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v3, -0x7f

    sub-int/2addr v6, v5

    const/high16 v8, 0x800000

    or-int/2addr v4, v8

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v0, :cond_6

    move v0, v9

    goto :goto_2

    :cond_6
    move v0, v8

    :goto_2
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_7

    move v10, v9

    goto :goto_3

    :cond_7
    move v10, v8

    :goto_3
    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v12, v11, 0x2

    int-to-long v13, v4

    const-wide/32 v15, 0x800000

    cmp-long v4, v13, v15

    if-nez v4, :cond_9

    if-gt v3, v9, :cond_8

    goto :goto_4

    :cond_8
    move v3, v9

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v3, 0x2

    :goto_5
    sub-int v3, v11, v3

    add-int/lit8 v6, v6, -0x2

    const-wide/16 v14, 0x1

    const-wide/32 v16, 0x1624c50

    const-wide/32 v18, 0x989680

    if-ltz v6, :cond_16

    int-to-long v1, v6

    const-wide/32 v20, 0x2deefb

    mul-long v1, v1, v20

    .line 32
    div-long v1, v1, v18

    long-to-int v1, v1

    if-nez v1, :cond_a

    move v4, v9

    goto :goto_6

    :cond_a
    int-to-long v4, v1

    mul-long v4, v4, v16

    add-long v4, v4, v18

    sub-long/2addr v4, v14

    .line 33
    div-long v4, v4, v18

    long-to-int v4, v4

    :goto_6
    add-int/lit8 v4, v4, 0x3b

    sub-int/2addr v4, v9

    neg-int v5, v6

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 34
    sget-object v6, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v13, v6, v1

    aget v2, v13, v8

    int-to-long v7, v2

    .line 35
    aget v2, v13, v9

    move/from16 v22, v10

    int-to-long v9, v2

    int-to-long v14, v11

    mul-long v23, v14, v7

    mul-long v25, v14, v9

    const/16 v2, 0x1f

    shr-long v25, v25, v2

    add-long v23, v23, v25

    sub-int/2addr v4, v2

    move/from16 v20, v3

    shr-long v2, v23, v4

    long-to-int v3, v2

    move-wide/from16 v23, v14

    int-to-long v13, v12

    mul-long v25, v13, v7

    mul-long/2addr v13, v9

    const/16 v2, 0x1f

    shr-long/2addr v13, v2

    add-long v25, v25, v13

    shr-long v13, v25, v4

    long-to-int v13, v13

    move v15, v3

    move/from16 v14, v20

    int-to-long v2, v14

    mul-long/2addr v7, v2

    mul-long/2addr v2, v9

    const/16 v9, 0x1f

    shr-long v25, v2, v9

    add-long v7, v7, v25

    shr-long v3, v7, v4

    long-to-int v3, v3

    if-eqz v1, :cond_c

    add-int/lit8 v4, v13, -0x1

    const/16 v7, 0xa

    .line 36
    div-int/2addr v4, v7

    div-int/lit8 v7, v3, 0xa

    if-gt v4, v7, :cond_c

    add-int/lit8 v4, v1, -0x1

    if-nez v4, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    int-to-long v7, v4

    mul-long v7, v7, v16

    add-long v7, v7, v18

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 37
    div-long v7, v7, v18

    long-to-int v7, v7

    :goto_7
    add-int/lit8 v7, v7, 0x3b

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sub-int/2addr v5, v8

    add-int/2addr v5, v7

    .line 38
    aget-object v4, v6, v4

    const/4 v6, 0x0

    aget v7, v4, v6

    int-to-long v6, v7

    mul-long v6, v6, v23

    aget v4, v4, v8

    int-to-long v8, v4

    mul-long v8, v8, v23

    const/16 v2, 0x1f

    shr-long/2addr v8, v2

    add-long/2addr v6, v8

    sub-int/2addr v5, v2

    shr-long v4, v6, v5

    const-wide/16 v6, 0xa

    .line 39
    rem-long/2addr v4, v6

    long-to-int v2, v4

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    const/4 v4, 0x0

    :goto_9
    if-lez v12, :cond_e

    .line 40
    rem-int/lit8 v5, v12, 0x5

    if-eqz v5, :cond_d

    goto :goto_a

    .line 41
    :cond_d
    div-int/lit8 v12, v12, 0x5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-lez v11, :cond_10

    .line 42
    rem-int/lit8 v6, v11, 0x5

    if-eqz v6, :cond_f

    goto :goto_c

    .line 43
    :cond_f
    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_10
    :goto_c
    const/4 v6, 0x0

    :goto_d
    if-lez v14, :cond_12

    .line 44
    rem-int/lit8 v7, v14, 0x5

    if-eqz v7, :cond_11

    goto :goto_e

    .line 45
    :cond_11
    div-int/lit8 v14, v14, 0x5

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_12
    :goto_e
    if-lt v4, v1, :cond_13

    const/4 v4, 0x1

    goto :goto_f

    :cond_13
    const/4 v4, 0x0

    :goto_f
    if-lt v5, v1, :cond_14

    const/4 v5, 0x1

    goto :goto_10

    :cond_14
    const/4 v5, 0x0

    :goto_10
    if-lt v6, v1, :cond_15

    const/4 v6, 0x1

    goto :goto_11

    :cond_15
    const/4 v6, 0x0

    :goto_11
    move v10, v4

    const/4 v7, 0x0

    move v4, v3

    move v3, v15

    goto/16 :goto_19

    :cond_16
    move v14, v3

    move/from16 v22, v10

    neg-int v1, v6

    int-to-long v3, v1

    const-wide/32 v7, 0x6aa784

    mul-long/2addr v3, v7

    .line 46
    div-long v3, v3, v18

    long-to-int v3, v3

    sub-int/2addr v1, v3

    if-nez v1, :cond_17

    const/4 v4, 0x1

    goto :goto_12

    :cond_17
    int-to-long v7, v1

    mul-long v7, v7, v16

    add-long v7, v7, v18

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 47
    div-long v7, v7, v18

    long-to-int v4, v7

    :goto_12
    add-int/lit8 v4, v4, -0x3d

    sub-int v4, v3, v4

    .line 48
    sget-object v7, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v8, v7, v1

    const/4 v9, 0x0

    aget v10, v8, v9

    int-to-long v9, v10

    const/4 v15, 0x1

    .line 49
    aget v8, v8, v15

    move/from16 v20, v6

    int-to-long v5, v8

    const/16 v2, 0x1f

    sub-int/2addr v4, v2

    move/from16 v23, v14

    int-to-long v13, v11

    mul-long v24, v13, v9

    mul-long v26, v13, v5

    shr-long v26, v26, v2

    add-long v24, v24, v26

    move/from16 v26, v3

    shr-long v2, v24, v4

    long-to-int v3, v2

    move/from16 v24, v3

    int-to-long v2, v12

    mul-long v28, v2, v9

    mul-long/2addr v2, v5

    const/16 v12, 0x1f

    shr-long/2addr v2, v12

    add-long v28, v28, v2

    shr-long v2, v28, v4

    long-to-int v3, v2

    move-wide/from16 v27, v13

    move/from16 v2, v23

    int-to-long v12, v2

    mul-long/2addr v9, v12

    mul-long/2addr v12, v5

    const/16 v5, 0x1f

    shr-long/2addr v12, v5

    move v5, v2

    add-long/2addr v9, v12

    shr-long/2addr v9, v4

    long-to-int v4, v9

    if-eqz v26, :cond_19

    add-int/lit8 v6, v3, -0x1

    const/16 v9, 0xa

    .line 50
    div-int/2addr v6, v9

    div-int/lit8 v9, v4, 0xa

    if-gt v6, v9, :cond_19

    const/4 v6, 0x1

    add-int/2addr v1, v6

    add-int/lit8 v6, v26, -0x1

    if-nez v1, :cond_18

    const/4 v9, 0x1

    goto :goto_13

    :cond_18
    int-to-long v9, v1

    mul-long v9, v9, v16

    add-long v9, v9, v18

    const-wide/16 v12, 0x1

    sub-long/2addr v9, v12

    .line 51
    div-long v9, v9, v18

    long-to-int v9, v9

    :goto_13
    add-int/lit8 v9, v9, -0x3d

    sub-int/2addr v6, v9

    .line 52
    aget-object v1, v7, v1

    const/4 v7, 0x0

    aget v9, v1, v7

    int-to-long v9, v9

    mul-long v13, v27, v9

    const/4 v9, 0x1

    aget v1, v1, v9

    int-to-long v9, v1

    mul-long v9, v9, v27

    const/16 v1, 0x1f

    shr-long/2addr v9, v1

    add-long/2addr v13, v9

    sub-int/2addr v6, v1

    shr-long v1, v13, v6

    const-wide/16 v9, 0xa

    .line 53
    rem-long/2addr v1, v9

    long-to-int v6, v1

    goto :goto_14

    :cond_19
    const/4 v7, 0x0

    move v6, v7

    :goto_14
    add-int v1, v26, v20

    move/from16 v9, v26

    const/4 v2, 0x1

    if-lt v2, v9, :cond_1a

    move v10, v2

    goto :goto_15

    :cond_1a
    move v10, v7

    :goto_15
    const/16 v12, 0x17

    if-ge v9, v12, :cond_1b

    add-int/lit8 v12, v9, -0x1

    shl-int v12, v2, v12

    sub-int/2addr v12, v2

    and-int/2addr v11, v12

    if-nez v11, :cond_1b

    move v8, v2

    goto :goto_16

    :cond_1b
    move v8, v7

    :goto_16
    const/4 v11, 0x2

    .line 54
    rem-int/2addr v5, v11

    if-ne v5, v2, :cond_1c

    move v2, v7

    goto :goto_17

    :cond_1c
    const/4 v2, 0x1

    :goto_17
    if-lt v2, v9, :cond_1d

    const/4 v2, 0x1

    goto :goto_18

    :cond_1d
    move v2, v7

    :goto_18
    move v13, v3

    move v5, v8

    move/from16 v3, v24

    move/from16 v30, v6

    move v6, v2

    move/from16 v2, v30

    :goto_19
    const v8, 0x3b9aca00

    const/16 v9, 0xa

    :goto_1a
    if-lez v9, :cond_1f

    if-lt v13, v8, :cond_1e

    goto :goto_1b

    .line 55
    :cond_1e
    div-int/lit8 v8, v8, 0xa

    add-int/lit8 v9, v9, -0x1

    goto :goto_1a

    :cond_1f
    :goto_1b
    add-int/2addr v1, v9

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    const/4 v8, -0x3

    if-lt v1, v8, :cond_21

    const/4 v8, 0x7

    if-lt v1, v8, :cond_20

    goto :goto_1c

    :cond_20
    move v8, v7

    goto :goto_1d

    :cond_21
    :goto_1c
    const/4 v8, 0x1

    :goto_1d
    if-eqz v10, :cond_22

    if-nez v22, :cond_22

    add-int/lit8 v13, v13, -0x1

    :cond_22
    move v10, v7

    .line 56
    :goto_1e
    div-int/lit8 v11, v13, 0xa

    div-int/lit8 v12, v4, 0xa

    if-le v11, v12, :cond_25

    const/16 v14, 0x64

    if-ge v13, v14, :cond_23

    if-eqz v8, :cond_23

    goto :goto_20

    .line 57
    :cond_23
    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_24

    const/4 v2, 0x1

    goto :goto_1f

    :cond_24
    move v2, v7

    :goto_1f
    and-int/2addr v6, v2

    .line 58
    rem-int/lit8 v2, v3, 0xa

    .line 59
    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v10, v10, 0x1

    move v13, v11

    move v4, v12

    goto :goto_1e

    :cond_25
    :goto_20
    if-eqz v6, :cond_27

    if-eqz v22, :cond_27

    .line 60
    :goto_21
    rem-int/lit8 v11, v4, 0xa

    if-nez v11, :cond_27

    const/16 v11, 0x64

    if-ge v13, v11, :cond_26

    if-eqz v8, :cond_26

    goto :goto_22

    .line 61
    :cond_26
    div-int/lit8 v13, v13, 0xa

    .line 62
    rem-int/lit8 v2, v3, 0xa

    .line 63
    div-int/lit8 v3, v3, 0xa

    .line 64
    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_27
    :goto_22
    const/4 v11, 0x5

    if-eqz v5, :cond_28

    if-ne v2, v11, :cond_28

    .line 65
    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_28

    const/4 v2, 0x4

    :cond_28
    if-ne v3, v4, :cond_29

    if-eqz v6, :cond_2a

    if-eqz v22, :cond_2a

    :cond_29
    if-lt v2, v11, :cond_2b

    :cond_2a
    const/4 v2, 0x1

    goto :goto_23

    :cond_2b
    move v2, v7

    :goto_23
    add-int/2addr v3, v2

    sub-int/2addr v9, v10

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x2d

    .line 66
    aput-char v2, p1, p2

    goto :goto_24

    :cond_2c
    move/from16 v0, p2

    :goto_24
    if-eqz v8, :cond_31

    move v8, v7

    :goto_25
    add-int/lit8 v2, v9, -0x1

    if-ge v8, v2, :cond_2d

    .line 67
    rem-int/lit8 v2, v3, 0xa

    .line 68
    div-int/lit8 v3, v3, 0xa

    add-int v4, v0, v9

    sub-int/2addr v4, v8

    const/16 v5, 0x30

    add-int/2addr v2, v5

    int-to-char v2, v2

    .line 69
    aput-char v2, p1, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_2d
    const/16 v2, 0xa

    const/16 v5, 0x30

    .line 70
    rem-int/2addr v3, v2

    add-int/2addr v3, v5

    int-to-char v2, v3

    aput-char v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2e

    .line 71
    aput-char v3, p1, v2

    add-int/lit8 v2, v9, 0x1

    add-int/2addr v0, v2

    const/4 v2, 0x1

    if-ne v9, v2, :cond_2e

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x30

    .line 72
    aput-char v3, p1, v0

    move v0, v2

    :cond_2e
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x45

    .line 73
    aput-char v3, p1, v0

    if-gez v1, :cond_2f

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x2d

    .line 74
    aput-char v3, p1, v2

    neg-int v1, v1

    move v2, v0

    :cond_2f
    const/16 v0, 0xa

    if-lt v1, v0, :cond_30

    add-int/lit8 v0, v2, 0x1

    .line 75
    div-int/lit8 v3, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v2

    move v2, v0

    goto :goto_26

    :cond_30
    const/16 v4, 0x30

    :goto_26
    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0xa

    .line 76
    rem-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, p1, v2

    goto/16 :goto_2d

    :cond_31
    const/16 v4, 0x30

    if-gez v1, :cond_34

    add-int/lit8 v2, v0, 0x1

    .line 77
    aput-char v4, p1, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v5, 0x2e

    .line 78
    aput-char v5, p1, v2

    const/4 v2, -0x1

    :goto_27
    if-le v2, v1, :cond_32

    add-int/lit8 v5, v0, 0x1

    .line 79
    aput-char v4, p1, v0

    add-int/lit8 v2, v2, -0x1

    move v0, v5

    goto :goto_27

    :cond_32
    move v1, v0

    move v8, v7

    :goto_28
    if-ge v8, v9, :cond_33

    add-int v2, v0, v9

    sub-int/2addr v2, v8

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 80
    rem-int/lit8 v5, v3, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    aput-char v4, p1, v2

    const/16 v2, 0xa

    .line 81
    div-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0x30

    goto :goto_28

    :cond_33
    move v0, v1

    goto :goto_2d

    :cond_34
    add-int/lit8 v2, v1, 0x1

    if-lt v2, v9, :cond_37

    move v8, v7

    :goto_29
    if-ge v8, v9, :cond_35

    add-int v1, v0, v9

    sub-int/2addr v1, v8

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 82
    rem-int/lit8 v4, v3, 0xa

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v1

    const/16 v1, 0xa

    .line 83
    div-int/2addr v3, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_35
    add-int/2addr v0, v9

    :goto_2a
    if-ge v9, v2, :cond_36

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x30

    .line 84
    aput-char v3, p1, v0

    add-int/lit8 v9, v9, 0x1

    move v0, v1

    goto :goto_2a

    :cond_36
    const/16 v3, 0x30

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2e

    .line 85
    aput-char v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 86
    aput-char v3, p1, v1

    goto :goto_2d

    :cond_37
    add-int/lit8 v2, v0, 0x1

    move v8, v7

    :goto_2b
    if-ge v8, v9, :cond_39

    sub-int v4, v9, v8

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v4, v1, :cond_38

    add-int v4, v2, v9

    sub-int/2addr v4, v8

    sub-int/2addr v4, v5

    const/16 v6, 0x2e

    .line 87
    aput-char v6, p1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_38
    const/16 v6, 0x2e

    :goto_2c
    add-int v4, v2, v9

    sub-int/2addr v4, v8

    sub-int/2addr v4, v5

    .line 88
    rem-int/lit8 v7, v3, 0xa

    const/16 v10, 0x30

    add-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, p1, v4

    const/16 v4, 0xa

    .line 89
    div-int/2addr v3, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_39
    const/4 v5, 0x1

    add-int/2addr v9, v5

    add-int/2addr v0, v9

    :goto_2d
    sub-int v0, v0, p2

    return v0
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result p0

    .line 2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
