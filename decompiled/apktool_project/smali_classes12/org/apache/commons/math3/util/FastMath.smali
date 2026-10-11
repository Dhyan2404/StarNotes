.class public Lorg/apache/commons/math3/util/FastMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/FastMath$a;,
        Lorg/apache/commons/math3/util/FastMath$e;,
        Lorg/apache/commons/math3/util/FastMath$b;,
        Lorg/apache/commons/math3/util/FastMath$c;,
        Lorg/apache/commons/math3/util/FastMath$d;
    }
.end annotation


# static fields
.field public static final A:J = 0xfffffffffffffL

.field public static final B:J = 0x10000000000000L

.field public static final C:D = 4.503599627370496E15

.field public static final D:D = 0.3333333333333333

.field public static final E:D = 2.718281828459045

.field public static final F:D = 0.2

.field public static final G:D = 0.14285714285714285

.field public static final H:D = 0.1111111111111111

.field public static final I:D = 0.09090909090909091

.field public static final J:D = 0.07692307692307693

.field public static final K:D = 0.06666666666666667

.field public static final L:D = 0.058823529411764705

.field public static final M:D = 0.75

.field public static final N:D = 0.9375

.field public static final O:D = 0.9285714285714286

.field public static final P:D = 0.9166666666666666

.field public static final PI:D = 3.141592653589793

.field public static final Q:D = 0.9

.field public static final R:D = 0.875

.field public static final S:D = 0.8333333333333334

.field public static final T:D = 0.5

.field public static final U:D = 0.25

.field public static final a:I = 0x2ee

.field public static final b:I = 0x5dc

.field public static final c:I = 0x400

.field public static final d:I = 0x401

.field public static final e:D

.field public static final f:Z = false

.field public static final g:D = 0.6931470632553101

.field public static final h:D = 1.1730463525082348E-7

.field public static final i:[[D

.field public static final j:[[D

.field public static final k:I = 0xe

.field public static final l:[D

.field public static final m:[D

.field public static final n:[D

.field public static final o:[D

.field public static final p:[D

.field public static final q:[D

.field public static final r:[J

.field public static final s:[J

.field public static final t:[D

.field public static final u:[D

.field public static final v:J = 0x40000000L

.field public static final w:J = -0x40000000L

.field public static final x:I = 0x7fffffff

.field public static final y:J = 0x7fffffffffffffffL

.field public static final z:J = 0x7ff0000000000000L


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/FastMath;->e:D

    const/16 v0, 0x9

    new-array v0, v0, [[D

    const/4 v1, 0x2

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [D

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [D

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [D

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [D

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [D

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [D

    fill-array-data v2, :array_8

    const/16 v9, 0x8

    aput-object v2, v0, v9

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->i:[[D

    new-array v0, v8, [[D

    new-array v2, v1, [D

    fill-array-data v2, :array_9

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_a

    aput-object v2, v0, v4

    new-array v2, v1, [D

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    new-array v2, v1, [D

    fill-array-data v2, :array_c

    aput-object v2, v0, v5

    new-array v2, v1, [D

    fill-array-data v2, :array_d

    aput-object v2, v0, v6

    new-array v2, v1, [D

    fill-array-data v2, :array_e

    aput-object v2, v0, v7

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->j:[[D

    const/16 v0, 0xe

    new-array v2, v0, [D

    fill-array-data v2, :array_f

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->l:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_10

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->m:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_11

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->n:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_12

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->o:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_13

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->p:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_14

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->q:[D

    const/16 v2, 0x12

    new-array v2, v2, [J

    fill-array-data v2, :array_15

    sput-object v2, Lorg/apache/commons/math3/util/FastMath;->r:[J

    new-array v1, v1, [J

    fill-array-data v1, :array_16

    sput-object v1, Lorg/apache/commons/math3/util/FastMath;->s:[J

    new-array v0, v0, [D

    fill-array-data v0, :array_17

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->t:[D

    new-array v0, v7, [D

    fill-array-data v0, :array_18

    sput-object v0, Lorg/apache/commons/math3/util/FastMath;->u:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    :array_1
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    :array_3
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    :array_4
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    :array_5
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    :array_6
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    :array_7
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    :array_8
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data

    :array_9
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x44adc4d4b7a5f493L    # -6.032174644509064E-23
    .end array-data

    :array_a
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_b
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e55555197ea2f51L    # 1.9868161777724352E-8
    .end array-data

    :array_c
    .array-data 8
        -0x4030000040000000L    # -0.2499999701976776
        -0x41a03fd729481089L    # -2.957007209750105E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fc99995c0000000L    # 0.19999954104423523
        0x3de5c2091d0952dfL    # 1.5830993332061267E-10
    .end array-data

    :array_e
    .array-data 8
        -0x403ab85c00000000L    # -0.16624879837036133
        -0x41a40be07956f7d9L    # -2.6033824355191673E-8
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x3fbfeaaf00000000L    # 0.1246747374534607
        0x3fcfaaeec0000000L
        0x3fd7710240000000L    # 0.366272509098053
        0x3fdeaee880000000L    # 0.4794255495071411
        0x3fe2b91e00000000L    # 0.5850973129272461
        0x3fe5cffc00000000L    # 0.6816387176513672
        0x3fe88fb780000000L    # 0.7675435543060303
        0x3feaed5480000000L    # 0.8414709568023682
        0x3fecdf6040000000L    # 0.902267575263977
        0x3fee5e1500000000L    # 0.9489846229553223
        0x3fef6379c0000000L    # 0.9808930158615112
        0x3fefeb7a80000000L    # 0.9974949359893799
        0x3feff3f800000000L    # 0.9985313415527344
    .end array-data

    :array_10
    .array-data 8
        0x0
        -0x41ce86ee35ca069bL    # -4.068233003401932E-9
        0x3e44f31576ba89dfL    # 9.755392680573412E-9
        0x3e55764213d22a52L    # 1.9987994582857286E-8
        -0x41b8960bdfd0ec98L    # -1.0902938113007961E-8
        -0x419a88421d817238L    # -3.9986783938944604E-8
        0x3e66bf8f0d65b2c7L    # 4.23719669792332E-8
        -0x41940b8da1ad99e2L    # -5.207000323380292E-8
        0x3e5e1219dc0831baL    # 2.800552834259E-8
        0x3e54395b9ba52bdeL    # 1.883511811213715E-8
        -0x41d11418c1f26420L
        0x3e6619369d5ac9deL    # 4.116164446561962E-8
        0x3e6b2c6d8ade6d02L    # 5.0614674548127384E-8
        -0x41ee9934d7791580L    # -1.0129027912496858E-9
    .end array-data

    :array_11
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fefc01540000000L    # 0.9921976327896118
        0x3fef015480000000L    # 0.9689123630523682
        0x3fedc6b800000000L    # 0.9305076599121094
        0x3fec152800000000L    # 0.8775825500488281
        0x3fe9f36900000000L    # 0.8109631538391113
        0x3fe769fec0000000L    # 0.7316888570785522
        0x3fe4830bc0000000L    # 0.6409968137741089
        0x3fe14a2800000000L    # 0.5403022766113281
        0x3fdb986580000000L    # 0.4311765432357788
        0x3fd42e3dc0000000L    # 0.3153223395347595
        0x3fc8e6f080000000L    # 0.19454771280288696
        0x3fb21bd540000000L    # 0.07073719799518585
        -0x405442e500000000L    # -0.05417713522911072
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x3e627d5bd36da3cdL    # 3.4439717236742845E-8
        0x3e6f7deea174f07aL    # 5.865827662008209E-8
        -0x419b9959120a59b2L    # -3.7999795083850525E-8
        0x3e496df53e76deeeL    # 1.184154459111628E-8
        -0x419d912f84b8b7f8L    # -3.43338934259355E-8
        0x3e4954847b9f5d96L    # 1.1795268640216787E-8
        0x3e67d4ceb377de00L    # 4.438921624363781E-8
        0x3e5f6a0d17247090L    # 2.925681159240093E-8
        -0x41a39d05959b3904L    # -2.6437112632041807E-8
        0x3e588bd951d9589eL    # 2.2860509143963117E-8
        -0x41cb530fac069102L    # -4.813899778443457E-9
        0x3e2f8bf34e87d450L    # 3.6725170580355583E-9
        0x3debc96115437580L    # 2.0217439756338078E-10
    .end array-data

    :array_13
    .array-data 8
        0x0
        0x3fc01577c0000000L    # 0.1256551444530487
        0x3fd05785c0000000L    # 0.25534194707870483
        0x3fd9312d80000000L    # 0.3936265707015991
        0x3fe17b4f40000000L    # 0.5463024377822876
        0x3fe7166680000000L    # 0.7214844226837158
        0x3fedcfa380000000L    # 0.9315965175628662
        0x3ff328a380000000L    # 1.1974215507507324
        0x3ff8eb2440000000L    # 1.5574076175689697
        0x4000bd9600000000L    # 2.092571258544922
        0x4008139940000000L    # 3.0095696449279785
        0x40142aebc0000000L    # 5.041914939880371
        0x402c33ed40000000L    # 14.101419448852539
        -0x3fcd91b300000000L    # -18.430862426757812
    .end array-data

    :array_14
    .array-data 8
        0x0
        -0x41bf1511a4e045a1L    # -7.877917738262007E-9
        -0x41a43c4c55e63940L    # -2.5857668567479893E-8
        0x3e366fe2bf10b114L    # 5.2240336371356666E-9
        0x3e6bf3474a431796L    # 5.206150291559893E-8
        0x3e53a83ddf05d806L    # 1.8307188599677033E-8
        -0x419110eeebe0c3faL    # -5.7618793749770706E-8
        0x3e75115a5dbf6d33L    # 7.848361555046424E-8
        0x3e7cbee3a5b8acc8L    # 1.0708593250394448E-7
        0x3e532451b242ac7cL    # 1.7827257129423813E-8
        0x3e5f118d40a85840L    # 2.893485277253286E-8
        0x3e953f29e3a7b3e9L    # 3.1660099222737955E-7
        0x3ea0b887775a6a07L    # 4.983191803254889E-7
        -0x41697a3ba64a83f0L    # -3.356118100840571E-7
    .end array-data

    :array_15
    .array-data 8
        0x28be60db9391054aL
        0x7f09d5f47d4d3770L    # 8.858637187045085E303
        0x36d8a5664f10e410L    # 1.726826568726609E-44
        0x7f9458eaf7aef158L    # 3.5720961930666036E306
        0x6dc91b8e909374b8L    # 7.090433745230334E220
        0x1924bba82746487L
        0x3f877ac72c4a69cfL    # 0.011464649237770267
        -0x45df7282b4512edfL    # -1.044621797628068E-28
        0x3a671c09ad17df90L    # 2.333465466106487E-27
        0x4e64758e60d4ce7dL    # 4.412632339855038E69
        0x272117e2ef7e4a0eL    # 3.309770029673895E-120
        -0x3801da00087e99fdL    # -6.4118634369864365E38
        -0x4343b9d297d64b9L    # -2.114058060274595E288
        -0x24b2604c360d3d93L    # -6.5709692303435024E131
        -0x2c2e702658680575L    # -5.861253522665201E95
        0x5d49eeb1faf97c5eL    # 2.470533517408828E141
        -0x30be31821d6b5b46L    # -6.292310740746215E73
        -0x6501281400000000L    # -1.189283686241432E-178
    .end array-data

    :array_16
    .array-data 8
        -0x36f0255dde973dccL    # -8.879609370493449E43
        -0x3b399d747f23e32fL    # -2.114197916374807E23
    .end array-data

    :array_17
    .array-data 8
        0x0
        0x3fc0000000000000L    # 0.125
        0x3fd0000000000000L    # 0.25
        0x3fd8000000000000L    # 0.375
        0x3fe0000000000000L    # 0.5
        0x3fe4000000000000L    # 0.625
        0x3fe8000000000000L    # 0.75
        0x3fec000000000000L    # 0.875
        0x3ff0000000000000L    # 1.0
        0x3ff2000000000000L    # 1.125
        0x3ff4000000000000L    # 1.25
        0x3ff6000000000000L    # 1.375
        0x3ff8000000000000L    # 1.5
        0x3ffa000000000000L    # 1.625
    .end array-data

    :array_18
    .array-data 8
        0x3fe428a2f98d728bL    # 0.6299605249474366
        0x3fe965fea53d6e3dL    # 0.7937005259840998
        0x3ff0000000000000L    # 1.0
        0x3ff428a2f98d728bL    # 1.2599210498948732
        0x3ff965fea53d6e3cL    # 1.5874010519681994
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IEEEremainder(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->IEEEremainder(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(DDZ)D
    .locals 24

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    if-nez v4, :cond_1

    if-eqz p4, :cond_0

    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v0

    :cond_0
    return-wide v0

    :cond_1
    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    neg-double v0, v0

    move-wide/from16 v2, p2

    neg-double v2, v2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v2, p2

    const/4 v4, 0x0

    :goto_0
    const-wide v7, 0x434d02967c31cdb5L    # 1.633123935319537E16

    cmpl-double v7, v0, v7

    if-lez v7, :cond_4

    xor-int v0, v4, p4

    if-eqz v0, :cond_3

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_1

    :cond_3
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_1
    return-wide v0

    :cond_4
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v0, v7

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    const-wide v12, -0x400487ed5110b461L    # -1.7168146928204135

    if-gez v9, :cond_5

    mul-double/2addr v12, v0

    mul-double/2addr v12, v0

    add-double/2addr v12, v10

    mul-double/2addr v12, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v9

    double-to-int v9, v12

    goto :goto_2

    :cond_5
    div-double v14, v7, v0

    mul-double/2addr v12, v14

    mul-double/2addr v12, v14

    add-double/2addr v12, v10

    mul-double/2addr v12, v14

    neg-double v9, v12

    const-wide v11, 0x402a23d70a3d70a4L    # 13.07

    add-double/2addr v9, v11

    double-to-int v9, v9

    :goto_2
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->p:[D

    aget-wide v10, v10, v9

    sget-object v12, Lorg/apache/commons/math3/util/FastMath;->q:[D

    aget-wide v12, v12, v9

    sub-double v14, v0, v10

    sub-double v16, v14, v0

    add-double v5, v16, v10

    neg-double v5, v5

    sub-double v16, v2, v12

    add-double v5, v5, v16

    add-double v7, v14, v5

    sub-double v14, v7, v14

    sub-double/2addr v14, v5

    neg-double v5, v14

    const-wide/high16 v14, 0x41d0000000000000L    # 1.073741824E9

    mul-double v16, v0, v14

    add-double v18, v0, v16

    sub-double v18, v18, v16

    add-double/2addr v0, v2

    sub-double v0, v0, v18

    add-double/2addr v2, v0

    if-nez v9, :cond_6

    add-double v18, v18, v2

    add-double/2addr v10, v12

    mul-double v18, v18, v10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v0

    div-double v2, v0, v18

    mul-double/2addr v7, v2

    mul-double/2addr v5, v2

    goto :goto_3

    :cond_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v16, v18, v10

    add-double v20, v16, v0

    sub-double v22, v20, v0

    sub-double v0, v22, v16

    neg-double v0, v0

    mul-double/2addr v10, v2

    mul-double v18, v18, v12

    add-double v10, v10, v18

    add-double v16, v20, v10

    sub-double v18, v16, v20

    sub-double v10, v18, v10

    neg-double v10, v10

    add-double/2addr v0, v10

    mul-double/2addr v2, v12

    add-double/2addr v0, v2

    div-double v2, v7, v16

    mul-double v10, v2, v14

    add-double v12, v2, v10

    sub-double/2addr v12, v10

    sub-double v10, v2, v12

    mul-double v14, v14, v16

    add-double v18, v16, v14

    sub-double v18, v18, v14

    sub-double v14, v16, v18

    mul-double v20, v12, v18

    sub-double v20, v7, v20

    mul-double/2addr v12, v14

    sub-double v20, v20, v12

    mul-double v18, v18, v10

    sub-double v20, v20, v18

    mul-double/2addr v10, v14

    sub-double v20, v20, v10

    div-double v20, v20, v16

    neg-double v7, v7

    mul-double/2addr v7, v0

    div-double v7, v7, v16

    div-double v7, v7, v16

    add-double v20, v20, v7

    div-double v5, v5, v16

    add-double v5, v20, v5

    move-wide v7, v2

    :goto_3
    mul-double v0, v7, v7

    const-wide v2, 0x3fb32d2f6f8219e7L    # 0.07490822288864472

    mul-double/2addr v2, v0

    const-wide v10, 0x3fb74435086a6a2fL    # 0.09088450866185192

    sub-double/2addr v2, v10

    mul-double/2addr v2, v0

    const-wide v10, 0x3fbc71c490f31505L    # 0.11111095942313305

    add-double/2addr v2, v10

    mul-double/2addr v2, v0

    const-wide v10, 0x3fc24924913c3052L    # 0.1428571423679182

    sub-double/2addr v2, v10

    mul-double/2addr v2, v0

    const-wide v10, 0x3fc9999999992e0dL    # 0.19999999999923582

    add-double/2addr v2, v10

    mul-double/2addr v2, v0

    const-wide v10, 0x3fd555555555554dL    # 0.33333333333333287

    sub-double/2addr v2, v10

    mul-double/2addr v2, v0

    mul-double/2addr v2, v7

    add-double v10, v7, v2

    sub-double v7, v10, v7

    sub-double/2addr v7, v2

    neg-double v2, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v7

    div-double/2addr v5, v0

    add-double/2addr v2, v5

    sget-object v0, Lorg/apache/commons/math3/util/FastMath;->t:[D

    aget-wide v0, v0, v9

    add-double v5, v0, v10

    sub-double v0, v5, v0

    sub-double/2addr v0, v10

    neg-double v0, v0

    add-double v7, v5, v2

    sub-double v5, v7, v5

    sub-double/2addr v5, v2

    neg-double v2, v5

    add-double/2addr v0, v2

    add-double v2, v7, v0

    if-eqz p4, :cond_7

    sub-double v5, v2, v7

    sub-double/2addr v5, v0

    neg-double v0, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    sub-double v7, v5, v2

    sub-double v5, v7, v5

    add-double/2addr v5, v2

    neg-double v2, v5

    const-wide v5, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    sub-double/2addr v5, v0

    add-double/2addr v2, v5

    add-double/2addr v2, v7

    :cond_7
    xor-int v0, v4, p4

    if-eqz v0, :cond_8

    neg-double v2, v2

    :cond_8
    return-wide v2
.end method

.method public static abs(D)D
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static abs(F)F
    .locals 1

    const v0, 0x7fffffff

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static abs(I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p0, 0x1f

    not-int v1, v0

    add-int/lit8 v1, v1, 0x1

    xor-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static abs(J)J
    .locals 6

    .line 2
    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    not-long v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    xor-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static acos(D)D
    .locals 21

    cmpl-double v0, p0, p0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v3

    if-gtz v0, :cond_7

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v7, p0, v5

    if-gez v7, :cond_1

    goto/16 :goto_1

    :cond_1
    cmpl-double v1, p0, v5

    if-nez v1, :cond_2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    return-wide v0

    :cond_2
    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    cmpl-double v0, p0, v1

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-nez v0, :cond_4

    return-wide v5

    :cond_4
    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    mul-double v9, p0, v7

    add-double v11, p0, v9

    sub-double/2addr v11, v9

    sub-double v9, p0, v11

    mul-double v13, v11, v11

    mul-double v15, v11, v9

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v17

    mul-double v19, v9, v9

    add-double v1, v15, v19

    neg-double v13, v13

    neg-double v0, v1

    add-double v15, v13, v3

    sub-double v2, v15, v3

    sub-double/2addr v2, v13

    neg-double v2, v2

    add-double v13, v15, v0

    sub-double v15, v13, v15

    sub-double v0, v15, v0

    neg-double v0, v0

    add-double/2addr v2, v0

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    add-double v15, v0, v7

    sub-double/2addr v15, v7

    sub-double v7, v0, v15

    mul-double v19, v15, v15

    sub-double v13, v13, v19

    mul-double v19, v15, v17

    mul-double v19, v19, v7

    sub-double v13, v13, v19

    mul-double v19, v7, v7

    sub-double v13, v13, v19

    mul-double v0, v0, v17

    div-double/2addr v13, v0

    add-double/2addr v7, v13

    div-double/2addr v2, v0

    add-double/2addr v7, v2

    add-double v0, v15, v7

    sub-double v2, v0, v15

    sub-double/2addr v2, v7

    neg-double v2, v2

    div-double v7, v0, p0

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_5

    return-wide v5

    :cond_5
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->c(D)D

    move-result-wide v4

    sub-double/2addr v7, v4

    mul-double v13, v4, v11

    sub-double/2addr v0, v13

    mul-double v13, v4, v9

    sub-double/2addr v0, v13

    mul-double/2addr v11, v7

    sub-double/2addr v0, v11

    mul-double/2addr v9, v7

    sub-double/2addr v0, v9

    div-double v0, v0, p0

    add-double/2addr v7, v0

    div-double v2, v2, p0

    add-double/2addr v7, v2

    add-double v0, v4, v7

    sub-double v2, v0, v4

    sub-double/2addr v2, v7

    neg-double v2, v2

    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->a(DDZ)D

    move-result-wide v0

    return-wide v0

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public static acosh(D)D
    .locals 4

    mul-double v0, p0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static addExact(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    add-int v0, p0, p1

    xor-int v1, p0, p1

    if-ltz v1, :cond_1

    xor-int v1, v0, p1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    add-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    xor-long v2, v0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static asin(D)D
    .locals 19

    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-eqz v2, :cond_0

    return-wide v3

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v5

    if-gtz v2, :cond_5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpg-double v9, v0, v7

    if-gez v9, :cond_1

    goto/16 :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    return-wide v0

    :cond_2
    cmpl-double v2, v0, v7

    if-nez v2, :cond_3

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    return-wide v0

    :cond_3
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_4

    return-wide v0

    :cond_4
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v7, v0, v2

    add-double v9, v0, v7

    sub-double/2addr v9, v7

    sub-double v7, v0, v9

    mul-double v11, v9, v9

    mul-double/2addr v9, v7

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v13

    mul-double/2addr v7, v7

    add-double/2addr v9, v7

    neg-double v7, v11

    neg-double v9, v9

    add-double v11, v7, v5

    sub-double v4, v11, v5

    sub-double/2addr v4, v7

    neg-double v4, v4

    add-double v6, v11, v9

    sub-double v11, v6, v11

    sub-double/2addr v11, v9

    neg-double v8, v11

    add-double/2addr v4, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double v10, v8, v2

    add-double v15, v8, v10

    sub-double/2addr v15, v10

    sub-double v10, v8, v15

    mul-double v17, v15, v15

    sub-double v6, v6, v17

    mul-double v17, v15, v13

    mul-double v17, v17, v10

    sub-double v6, v6, v17

    mul-double v17, v10, v10

    sub-double v6, v6, v17

    mul-double/2addr v13, v8

    div-double/2addr v6, v13

    add-double/2addr v10, v6

    div-double/2addr v4, v13

    div-double v6, v0, v8

    mul-double/2addr v2, v6

    add-double v12, v6, v2

    sub-double/2addr v12, v2

    sub-double/2addr v6, v12

    mul-double v2, v12, v15

    sub-double v2, v0, v2

    mul-double v17, v12, v10

    sub-double v2, v2, v17

    mul-double/2addr v15, v6

    sub-double/2addr v2, v15

    mul-double/2addr v10, v6

    sub-double/2addr v2, v10

    div-double/2addr v2, v8

    add-double/2addr v6, v2

    neg-double v0, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v8

    div-double/2addr v0, v8

    add-double/2addr v6, v0

    add-double v0, v12, v6

    sub-double v2, v0, v12

    sub-double/2addr v2, v6

    neg-double v2, v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->a(DDZ)D

    move-result-wide v0

    return-wide v0

    :cond_5
    :goto_0
    return-wide v3
.end method

.method public static asinh(D)D
    .locals 36

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v0, v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x3fc5604189374bc7L    # 0.167

    cmpl-double v3, v0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    mul-double v6, v0, v0

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    goto/16 :goto_3

    :cond_1
    mul-double v6, v0, v0

    const-wide v8, 0x3fb8d4fdf3b645a2L    # 0.097

    cmpl-double v3, v0, v8

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const-wide v10, 0x3fed555555555555L    # 0.9166666666666666

    const-wide v12, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    const-wide v14, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v16, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    const-wide/high16 v18, 0x3fec000000000000L    # 0.875

    const-wide v20, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v22, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    const-wide v28, 0x3fc999999999999aL    # 0.2

    const-wide v30, 0x3fd5555555555555L    # 0.3333333333333333

    if-lez v3, :cond_3

    const-wide v32, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    mul-double v32, v32, v6

    const-wide/high16 v34, 0x3fee000000000000L    # 0.9375

    mul-double v32, v32, v34

    const-wide v34, 0x3fb1111111111111L    # 0.06666666666666667

    sub-double v34, v34, v32

    mul-double v34, v34, v6

    const-wide v32, 0x3fedb6db6db6db6eL    # 0.9285714285714286

    mul-double v34, v34, v32

    sub-double v12, v12, v34

    :goto_1
    mul-double/2addr v12, v6

    mul-double/2addr v12, v10

    sub-double/2addr v14, v12

    mul-double/2addr v14, v6

    mul-double/2addr v14, v8

    sub-double v20, v20, v14

    :goto_2
    mul-double v20, v20, v6

    mul-double v20, v20, v18

    sub-double v22, v22, v20

    mul-double v22, v22, v6

    mul-double v22, v22, v16

    sub-double v28, v28, v22

    :cond_2
    mul-double v28, v28, v6

    mul-double v28, v28, v26

    sub-double v30, v30, v28

    mul-double v6, v6, v30

    mul-double v6, v6, v24

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    goto :goto_3

    :cond_3
    const-wide v32, 0x3fa26e978d4fdf3bL    # 0.036

    cmpl-double v3, v0, v32

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const-wide v8, 0x3f6d7dbf487fcb92L    # 0.0036

    cmpl-double v3, v0, v8

    if-lez v3, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_5

    neg-double v0, v0

    :cond_5
    return-wide v0
.end method

.method public static atan(D)D
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->a(DDZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static atan2(DD)D
    .locals 20

    move-wide/from16 v0, p0

    cmpl-double v2, p2, p2

    if-nez v2, :cond_1e

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide v5, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_7

    mul-double v11, p2, v0

    div-double v13, v9, p2

    div-double/2addr v9, v0

    cmpl-double v4, v13, v2

    if-nez v4, :cond_2

    cmpl-double v2, p2, v2

    if-lez v2, :cond_1

    return-wide v0

    :cond_1
    invoke-static {v7, v8, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v0

    return-wide v0

    :cond_2
    cmpg-double v4, p2, v2

    if-ltz v4, :cond_4

    cmpg-double v4, v13, v2

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    return-wide v11

    :cond_4
    :goto_0
    cmpg-double v0, v0, v2

    if-ltz v0, :cond_6

    cmpg-double v0, v9, v2

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    return-wide v7

    :cond_6
    :goto_1
    return-wide v5

    :cond_7
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v13, v0, v11

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v13, :cond_a

    cmpl-double v0, p2, v11

    if-nez v0, :cond_8

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    return-wide v0

    :cond_8
    cmpl-double v0, p2, v16

    if-nez v0, :cond_9

    const-wide v0, 0x4002d97c7f3321d2L    # 2.356194490192345

    return-wide v0

    :cond_9
    return-wide v14

    :cond_a
    cmpl-double v13, v0, v16

    const-wide v18, -0x4006de04abbbd2e8L    # -1.5707963267948966

    if-nez v13, :cond_d

    cmpl-double v0, p2, v11

    if-nez v0, :cond_b

    const-wide v0, -0x4016de04abbbd2e8L    # -0.7853981633974483

    return-wide v0

    :cond_b
    cmpl-double v0, p2, v16

    if-nez v0, :cond_c

    const-wide v0, -0x3ffd268380ccde2eL    # -2.356194490192345

    return-wide v0

    :cond_c
    return-wide v18

    :cond_d
    cmpl-double v11, p2, v11

    if-nez v11, :cond_11

    if-gtz v4, :cond_10

    div-double v11, v9, v0

    cmpl-double v13, v11, v2

    if-lez v13, :cond_e

    goto :goto_2

    :cond_e
    cmpg-double v13, v0, v2

    if-ltz v13, :cond_f

    cmpg-double v11, v11, v2

    if-gez v11, :cond_11

    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_10
    :goto_2
    return-wide v2

    :cond_11
    cmpl-double v11, p2, v16

    if-nez v11, :cond_15

    if-gtz v4, :cond_14

    div-double v11, v9, v0

    cmpl-double v13, v11, v2

    if-lez v13, :cond_12

    goto :goto_3

    :cond_12
    cmpg-double v7, v0, v2

    if-ltz v7, :cond_13

    cmpg-double v7, v11, v2

    if-gez v7, :cond_15

    :cond_13
    return-wide v5

    :cond_14
    :goto_3
    return-wide v7

    :cond_15
    cmpl-double v5, p2, v2

    if-nez v5, :cond_19

    if-gtz v4, :cond_18

    div-double/2addr v9, v0

    cmpl-double v4, v9, v2

    if-lez v4, :cond_16

    goto :goto_4

    :cond_16
    cmpg-double v4, v0, v2

    if-ltz v4, :cond_17

    cmpg-double v4, v9, v2

    if-gez v4, :cond_19

    :cond_17
    return-wide v18

    :cond_18
    :goto_4
    return-wide v14

    :cond_19
    div-double v4, v0, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1b

    cmpg-double v0, p2, v2

    if-gez v0, :cond_1a

    goto :goto_5

    :cond_1a
    move v7, v8

    :goto_5
    invoke-static {v4, v5, v2, v3, v7}, Lorg/apache/commons/math3/util/FastMath;->a(DDZ)D

    move-result-wide v0

    return-wide v0

    :cond_1b
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->c(D)D

    move-result-wide v9

    sub-double/2addr v4, v9

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->c(D)D

    move-result-wide v11

    sub-double v13, p2, v11

    mul-double v15, v9, v11

    sub-double v15, v0, v15

    mul-double v17, v9, v13

    sub-double v15, v15, v17

    mul-double/2addr v11, v4

    sub-double/2addr v15, v11

    mul-double/2addr v13, v4

    sub-double/2addr v15, v13

    div-double v15, v15, p2

    add-double/2addr v4, v15

    add-double v11, v9, v4

    sub-double v9, v11, v9

    sub-double/2addr v9, v4

    neg-double v4, v9

    cmpl-double v6, v11, v2

    if-nez v6, :cond_1c

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v11

    :cond_1c
    cmpg-double v0, p2, v2

    if-gez v0, :cond_1d

    goto :goto_6

    :cond_1d
    move v7, v8

    :goto_6
    invoke-static {v11, v12, v4, v5, v7}, Lorg/apache/commons/math3/util/FastMath;->a(DDZ)D

    move-result-wide v0

    return-wide v0

    :cond_1e
    :goto_7
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static atanh(D)D
    .locals 24

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v0, v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x3fc3333333333333L    # 0.15

    cmpl-double v3, v0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez v3, :cond_1

    add-double v6, v0, v4

    sub-double/2addr v4, v0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v3

    goto/16 :goto_2

    :cond_1
    mul-double v6, v0, v0

    const-wide v8, 0x3fb645a1cac08312L    # 0.087

    cmpl-double v3, v0, v8

    const-wide v8, 0x3fb3b13b13b13b14L    # 0.07692307692307693

    const-wide v10, 0x3fb745d1745d1746L    # 0.09090909090909091

    const-wide v12, 0x3fbc71c71c71c71cL    # 0.1111111111111111

    const-wide v14, 0x3fc2492492492492L    # 0.14285714285714285

    const-wide v16, 0x3fc999999999999aL    # 0.2

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    if-lez v3, :cond_2

    const-wide v20, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    mul-double v20, v20, v6

    const-wide v22, 0x3fb1111111111111L    # 0.06666666666666667

    add-double v20, v20, v22

    mul-double v20, v20, v6

    add-double v20, v20, v8

    mul-double v20, v20, v6

    add-double v20, v20, v10

    mul-double v20, v20, v6

    add-double v20, v20, v12

    mul-double v20, v20, v6

    add-double v20, v20, v14

    mul-double v20, v20, v6

    add-double v20, v20, v16

    mul-double v20, v20, v6

    add-double v20, v20, v18

    mul-double v6, v6, v20

    :goto_1
    add-double/2addr v6, v4

    mul-double/2addr v0, v6

    goto :goto_2

    :cond_2
    const-wide v20, 0x3f9fbe76c8b43958L    # 0.031

    cmpl-double v3, v0, v20

    if-lez v3, :cond_3

    mul-double/2addr v8, v6

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    add-double/2addr v8, v12

    mul-double/2addr v8, v6

    add-double/2addr v8, v14

    mul-double/2addr v8, v6

    add-double v8, v8, v16

    mul-double/2addr v8, v6

    add-double v8, v8, v18

    mul-double/2addr v6, v8

    goto :goto_1

    :cond_3
    const-wide v8, 0x3f689374bc6a7efaL    # 0.003

    cmpl-double v3, v0, v8

    if-lez v3, :cond_4

    mul-double/2addr v12, v6

    add-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double v12, v12, v16

    mul-double/2addr v12, v6

    add-double v12, v12, v18

    mul-double/2addr v6, v12

    goto :goto_1

    :cond_4
    mul-double v16, v16, v6

    add-double v16, v16, v18

    mul-double v6, v6, v16

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_5

    neg-double v0, v0

    :cond_5
    return-wide v0
.end method

.method public static b(DD)D
    .locals 4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v0, p0

    sub-double v0, v2, v0

    add-double/2addr v0, p0

    neg-double p0, v0

    const-wide v0, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double/2addr v0, p2

    add-double/2addr p0, v0

    invoke-static {v2, v3, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->j(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static c(D)D
    .locals 4

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    neg-double v2, v0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/32 v0, -0x40000000

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static cbrt(D)D
    .locals 21

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    shr-long v3, v0, v2

    const-wide/16 v5, 0x7ff

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit16 v3, v3, -0x3ff

    const/16 v4, -0x3ff

    if-ne v3, v4, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4350000000000000L    # 1.8014398509481984E16

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    shr-long v7, v3, v2

    and-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit16 v5, v5, -0x3ff

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move v5, v3

    move-wide v3, v0

    move-wide/from16 v0, p0

    :goto_0
    const/16 v7, 0x400

    if-ne v5, v7, :cond_2

    return-wide v0

    :cond_2
    div-int/lit8 v7, v5, 0x3

    const-wide/high16 v8, -0x8000000000000000L

    and-long/2addr v8, v3

    add-int/lit16 v7, v7, 0x3ff

    and-int/lit16 v7, v7, 0x7ff

    int-to-long v10, v7

    shl-long/2addr v10, v2

    or-long v7, v8, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    const-wide v9, 0xfffffffffffffL

    and-long v2, v3, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    or-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    const-wide v9, -0x407a0e6a8db69e58L    # -0.010714690733195933

    mul-double/2addr v9, v2

    const-wide v11, 0x3fb66c0dc5466945L    # 0.0875862700108075

    add-double/2addr v9, v11

    mul-double/2addr v9, v2

    const-wide v11, -0x402c6dbf3a3bd7a4L    # -0.3058015757857271

    add-double/2addr v9, v11

    mul-double/2addr v9, v2

    const-wide v11, 0x3fe733323180162bL    # 0.7249995199969751

    add-double/2addr v9, v11

    mul-double/2addr v9, v2

    const-wide v2, 0x3fe01ff6c0b8a77fL    # 0.5039018405998233

    add-double/2addr v9, v2

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->u:[D

    rem-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-wide v2, v2, v5

    mul-double/2addr v9, v2

    mul-double v2, v7, v7

    mul-double/2addr v2, v7

    div-double/2addr v0, v2

    mul-double v2, v9, v9

    mul-double/2addr v2, v9

    sub-double v2, v0, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v11, v9, v4

    mul-double/2addr v11, v9

    div-double/2addr v2, v11

    add-double/2addr v9, v2

    mul-double v2, v9, v9

    mul-double/2addr v2, v9

    sub-double v2, v0, v2

    mul-double v11, v9, v4

    mul-double/2addr v11, v9

    div-double/2addr v2, v11

    add-double/2addr v9, v2

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v11, v9, v2

    add-double v13, v9, v11

    sub-double/2addr v13, v11

    sub-double v11, v9, v13

    mul-double v15, v13, v13

    mul-double v17, v13, v11

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v17, v17, v19

    mul-double v19, v11, v11

    add-double v17, v17, v19

    mul-double/2addr v2, v15

    add-double v19, v15, v2

    sub-double v19, v19, v2

    sub-double v15, v15, v19

    add-double v17, v17, v15

    mul-double v2, v19, v11

    mul-double v15, v13, v17

    add-double/2addr v2, v15

    mul-double v17, v17, v11

    add-double v2, v2, v17

    mul-double v19, v19, v13

    sub-double v11, v0, v19

    sub-double v0, v11, v0

    add-double v0, v0, v19

    neg-double v0, v0

    sub-double/2addr v0, v2

    add-double/2addr v11, v0

    mul-double/2addr v4, v9

    mul-double/2addr v4, v9

    div-double/2addr v11, v4

    add-double/2addr v9, v11

    mul-double/2addr v9, v7

    if-eqz v6, :cond_3

    const-wide/high16 v0, 0x3ed0000000000000L    # 3.814697265625E-6

    mul-double/2addr v9, v0

    :cond_3
    return-wide v9
.end method

.method public static ceil(D)D
    .locals 4

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_2

    mul-double/2addr p0, v0

    return-wide p0

    :cond_2
    return-wide v0
.end method

.method public static copySign(DD)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    xor-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    return-wide p0

    :cond_0
    neg-double p0, p0

    return-wide p0
.end method

.method public static copySign(FF)F
    .locals 1

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    xor-int/2addr p1, v0

    if-ltz p1, :cond_0

    return p0

    :cond_0
    neg-float p0, p0

    return p0
.end method

.method public static cos(D)D
    .locals 11

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    neg-double p0, p0

    :cond_0
    cmpl-double v2, p0, p0

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_8

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v5

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-wide v5, 0x414921fb00000000L    # 3294198.0

    cmpl-double v2, p0, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-lez v2, :cond_2

    new-array v0, v7, [D

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->i(D[D)V

    aget-wide p0, v0, v8

    double-to-int p0, p0

    and-int/lit8 v8, p0, 0x3

    aget-wide p0, v0, v6

    aget-wide v0, v0, v5

    goto :goto_0

    :cond_2
    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v2, p0, v9

    if-lez v2, :cond_3

    new-instance v0, Lorg/apache/commons/math3/util/FastMath$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/FastMath$a;-><init>(D)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$a;->a()I

    move-result p0

    and-int/lit8 v8, p0, 0x3

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$a;->b()D

    move-result-wide p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$a;->c()D

    move-result-wide v0

    :cond_3
    :goto_0
    if-eqz v8, :cond_7

    if-eq v8, v6, :cond_6

    if-eq v8, v5, :cond_5

    if-eq v8, v7, :cond_4

    return-wide v3

    :cond_4
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->j(DD)D

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->b(DD)D

    move-result-wide p0

    :goto_1
    neg-double p0, p0

    return-wide p0

    :cond_6
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->j(DD)D

    move-result-wide p0

    goto :goto_1

    :cond_7
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->b(DD)D

    move-result-wide p0

    return-wide p0

    :cond_8
    :goto_2
    return-wide v3
.end method

.method public static cosh(D)D
    .locals 21

    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_2

    sget-wide v5, Lorg/apache/commons/math3/util/FastMath;->e:D

    cmpl-double v2, v0, v5

    if-ltz v2, :cond_1

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v3, v0

    mul-double/2addr v3, v0

    return-wide v3

    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    :goto_1
    mul-double/2addr v0, v3

    return-wide v0

    :cond_2
    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_4

    sget-wide v5, Lorg/apache/commons/math3/util/FastMath;->e:D

    neg-double v5, v5

    cmpg-double v2, v0, v5

    if-gtz v2, :cond_3

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [D

    const-wide/16 v5, 0x0

    cmpg-double v7, v0, v5

    if-gez v7, :cond_5

    neg-double v0, v0

    :cond_5
    invoke-static {v0, v1, v5, v6, v2}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    const/4 v0, 0x0

    aget-wide v0, v2, v0

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    add-double v7, v0, v5

    sub-double v0, v7, v0

    sub-double/2addr v0, v5

    neg-double v0, v0

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    mul-double v9, v7, v5

    add-double v11, v7, v9

    sub-double/2addr v11, v9

    sub-double v9, v7, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double v15, v13, v7

    mul-double/2addr v5, v15

    add-double v17, v15, v5

    sub-double v17, v17, v5

    sub-double v5, v15, v17

    mul-double v19, v11, v17

    sub-double v13, v13, v19

    mul-double/2addr v11, v5

    sub-double/2addr v13, v11

    mul-double v11, v9, v17

    sub-double/2addr v13, v11

    mul-double/2addr v9, v5

    sub-double/2addr v13, v9

    mul-double/2addr v13, v15

    add-double/2addr v5, v13

    neg-double v9, v0

    mul-double/2addr v9, v15

    mul-double/2addr v9, v15

    add-double/2addr v5, v9

    add-double v9, v7, v17

    sub-double v7, v9, v7

    sub-double v7, v7, v17

    neg-double v7, v7

    add-double/2addr v0, v7

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    neg-double v5, v9

    add-double/2addr v0, v5

    add-double/2addr v7, v0

    mul-double/2addr v7, v3

    return-wide v7
.end method

.method public static d(DD[D)D
    .locals 22

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    double-to-int v5, v0

    const-wide/16 v6, 0x0

    cmpg-double v8, v0, v6

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-gez v8, :cond_6

    const-wide v13, -0x3f78b00000000000L    # -746.0

    cmpg-double v8, v0, v13

    if-gez v8, :cond_1

    if-eqz v4, :cond_0

    aput-wide v6, v4, v12

    aput-wide v6, v4, v11

    :cond_0
    return-wide v6

    :cond_1
    const/16 v8, -0x2c5

    if-ge v5, v8, :cond_3

    const-wide v5, 0x4044188000000000L    # 40.19140625

    add-double/2addr v0, v5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    move-result-wide v0

    const-wide v2, 0x438fa553a68e6b40L    # 2.85040095144011776E17

    div-double/2addr v0, v2

    if-eqz v4, :cond_2

    aget-wide v5, v4, v12

    div-double/2addr v5, v2

    aput-wide v5, v4, v12

    aget-wide v5, v4, v11

    div-double/2addr v5, v2

    aput-wide v5, v4, v11

    :cond_2
    return-wide v0

    :cond_3
    if-ne v5, v8, :cond_5

    const-wide v5, 0x3ff7e80000000000L    # 1.494140625

    add-double/2addr v0, v5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    move-result-wide v0

    const-wide v2, 0x4011d270274c83abL    # 4.455505956692757

    div-double/2addr v0, v2

    if-eqz v4, :cond_4

    aget-wide v5, v4, v12

    div-double/2addr v5, v2

    aput-wide v5, v4, v12

    aget-wide v5, v4, v11

    div-double/2addr v5, v2

    aput-wide v5, v4, v11

    :cond_4
    return-wide v0

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    const/16 v8, 0x2c5

    if-le v5, v8, :cond_8

    if-eqz v4, :cond_7

    aput-wide v9, v4, v12

    aput-wide v6, v4, v11

    :cond_7
    return-wide v9

    :cond_8
    :goto_0
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$c;->a()[D

    move-result-object v8

    add-int/lit16 v13, v5, 0x2ee

    aget-wide v14, v8, v13

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$c;->b()[D

    move-result-object v8

    aget-wide v16, v8, v13

    int-to-double v11, v5

    sub-double v18, v0, v11

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    mul-double v6, v18, v20

    double-to-int v5, v6

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$b;->a()[D

    move-result-object v6

    aget-wide v6, v6, v5

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$b;->b()[D

    move-result-object v18

    aget-wide v18, v18, v5

    int-to-double v8, v5

    div-double v8, v8, v20

    add-double/2addr v11, v8

    sub-double/2addr v0, v11

    const-wide v8, 0x3fa5580030b20837L    # 0.04168701738764507

    mul-double/2addr v8, v0

    const-wide v11, 0x3fc55555329ee223L    # 0.1666666505023083

    add-double/2addr v8, v11

    mul-double/2addr v8, v0

    const-wide v11, 0x3fe0000000009631L    # 0.5000000000042687

    add-double/2addr v8, v11

    mul-double/2addr v8, v0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v11

    mul-double/2addr v8, v0

    const-wide v0, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    add-double/2addr v8, v0

    mul-double v0, v14, v6

    mul-double v14, v14, v18

    mul-double v6, v6, v16

    add-double/2addr v14, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    add-double v5, v14, v0

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v5, v11

    if-nez v7, :cond_9

    return-wide v11

    :cond_9
    const-wide/16 v11, 0x0

    cmpl-double v7, v2, v11

    if-eqz v7, :cond_a

    mul-double v11, v5, v2

    mul-double v16, v11, v8

    add-double v16, v16, v11

    mul-double v11, v5, v8

    add-double v16, v16, v11

    add-double v16, v16, v14

    add-double v16, v16, v0

    goto :goto_1

    :cond_a
    mul-double v11, v5, v8

    add-double/2addr v11, v14

    add-double v16, v11, v0

    :goto_1
    if-eqz v4, :cond_b

    const/4 v7, 0x0

    aput-wide v0, v4, v7

    mul-double v0, v5, v2

    mul-double v2, v0, v8

    add-double/2addr v2, v0

    mul-double/2addr v5, v8

    add-double/2addr v2, v5

    add-double/2addr v2, v14

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    :cond_b
    return-wide v16
.end method

.method public static decrementExact(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    sub-int/2addr p0, v1

    return p0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static decrementExact(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    return-wide p0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static e(D[D)D
    .locals 24

    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v7, v0, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-lez v7, :cond_5

    cmpl-double v7, v0, v10

    if-ltz v7, :cond_1

    goto/16 :goto_1

    :cond_1
    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    neg-double v0, v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double v5, v0, v3

    double-to-int v5, v5

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$b;->a()[D

    move-result-object v6

    aget-wide v6, v6, v5

    sub-double/2addr v6, v10

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$b;->b()[D

    move-result-object v12

    aget-wide v12, v12, v5

    add-double v14, v6, v12

    sub-double v6, v14, v6

    sub-double/2addr v6, v12

    neg-double v6, v6

    const-wide/high16 v12, 0x41d0000000000000L    # 1.073741824E9

    mul-double v16, v14, v12

    add-double v18, v14, v16

    sub-double v18, v18, v16

    sub-double v14, v14, v18

    add-double/2addr v6, v14

    int-to-double v14, v5

    div-double/2addr v14, v3

    sub-double/2addr v0, v14

    const-wide v3, 0x3f8112dba54d5643L    # 0.008336750013465571

    mul-double/2addr v3, v0

    const-wide v14, 0x3fa555553d639997L    # 0.041666663879186654

    add-double/2addr v3, v14

    mul-double/2addr v3, v0

    const-wide v14, 0x3fc555555555c421L    # 0.16666666666745392

    add-double/2addr v3, v14

    mul-double/2addr v3, v0

    const-wide v14, 0x3fdfffffffffffffL    # 0.49999999999999994

    add-double/2addr v3, v14

    mul-double/2addr v3, v0

    mul-double/2addr v3, v0

    add-double v14, v0, v3

    sub-double v0, v14, v0

    sub-double/2addr v0, v3

    neg-double v0, v0

    mul-double v3, v14, v12

    add-double v16, v14, v3

    sub-double v16, v16, v3

    sub-double v14, v14, v16

    add-double/2addr v0, v14

    mul-double v3, v16, v18

    mul-double v14, v16, v6

    add-double v20, v3, v14

    sub-double v3, v20, v3

    sub-double/2addr v3, v14

    neg-double v3, v3

    mul-double v14, v0, v18

    add-double v22, v20, v14

    sub-double v20, v22, v20

    sub-double v14, v20, v14

    neg-double v14, v14

    add-double/2addr v3, v14

    mul-double v14, v0, v6

    add-double v20, v22, v14

    sub-double v22, v20, v22

    sub-double v14, v22, v14

    neg-double v14, v14

    add-double/2addr v3, v14

    add-double v14, v20, v18

    sub-double v18, v14, v18

    sub-double v8, v18, v20

    neg-double v8, v8

    add-double/2addr v3, v8

    add-double v8, v14, v16

    sub-double v14, v8, v14

    sub-double v14, v14, v16

    neg-double v14, v14

    add-double/2addr v3, v14

    add-double v14, v8, v6

    sub-double v8, v14, v8

    sub-double/2addr v8, v6

    neg-double v5, v8

    add-double/2addr v3, v5

    add-double v5, v14, v0

    sub-double v7, v5, v14

    sub-double/2addr v7, v0

    neg-double v0, v7

    add-double/2addr v3, v0

    if-eqz v2, :cond_3

    add-double v0, v5, v10

    div-double v7, v10, v0

    sub-double v9, v0, v10

    sub-double/2addr v9, v5

    neg-double v9, v9

    add-double/2addr v9, v3

    mul-double v14, v5, v7

    mul-double v16, v14, v12

    add-double v18, v14, v16

    move-wide/from16 p0, v9

    sub-double v9, v18, v16

    sub-double/2addr v14, v9

    mul-double/2addr v12, v0

    add-double v16, v0, v12

    sub-double v16, v16, v12

    sub-double v0, v0, v16

    mul-double v11, v16, v9

    sub-double v11, v5, v11

    mul-double v16, v16, v14

    sub-double v11, v11, v16

    mul-double v16, v0, v9

    sub-double v11, v11, v16

    mul-double/2addr v0, v14

    sub-double/2addr v11, v0

    mul-double/2addr v11, v7

    add-double/2addr v14, v11

    mul-double/2addr v3, v7

    add-double/2addr v14, v3

    neg-double v0, v5

    move-wide/from16 v2, p0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v7

    mul-double/2addr v0, v7

    add-double/2addr v14, v0

    neg-double v5, v9

    neg-double v3, v14

    :cond_3
    if-eqz p2, :cond_4

    const/4 v7, 0x0

    aput-wide v5, p2, v7

    const/4 v0, 0x1

    aput-wide v3, p2, v0

    :cond_4
    add-double/2addr v5, v3

    return-wide v5

    :cond_5
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [D

    invoke-static {v0, v1, v2, v3, v8}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    if-lez v4, :cond_6

    aget-wide v0, v8, v7

    add-double/2addr v0, v5

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    add-double/2addr v0, v2

    return-wide v0

    :cond_6
    const/4 v2, 0x1

    aget-wide v0, v8, v7

    add-double/2addr v5, v0

    add-double/2addr v10, v5

    sub-double/2addr v10, v0

    neg-double v0, v10

    aget-wide v2, v8, v2

    add-double/2addr v0, v2

    add-double/2addr v5, v0

    return-wide v5

    :cond_7
    :goto_2
    return-wide v0
.end method

.method public static exp(D)D
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static expm1(D)D
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->e(D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static f(D[D)D
    .locals 23

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-nez v7, :cond_1

    cmpl-double v7, p0, p0

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_2

    aput-wide v0, p2, v8

    :cond_2
    return-wide v0

    :cond_3
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, p0, v11

    if-nez v7, :cond_5

    if-eqz p2, :cond_4

    aput-wide v11, p2, v8

    :cond_4
    return-wide v11

    :cond_5
    const/16 v7, 0x34

    shr-long v11, v5, v7

    long-to-int v7, v11

    add-int/lit16 v7, v7, -0x3ff

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v11, v5

    cmp-long v11, v11, v9

    const/4 v12, 0x1

    if-nez v11, :cond_8

    if-nez v2, :cond_7

    if-eqz p2, :cond_6

    aput-wide v3, p2, v8

    :cond_6
    return-wide v3

    :cond_7
    shl-long v2, v5, v12

    move-wide v5, v2

    :goto_0
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v5

    cmp-long v2, v2, v9

    if-nez v2, :cond_8

    add-int/lit8 v7, v7, -0x1

    shl-long/2addr v5, v12

    goto :goto_0

    :cond_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, -0x1

    const-wide/high16 v9, 0x41d0000000000000L    # 1.073741824E9

    if-eq v7, v4, :cond_9

    if-nez v7, :cond_b

    :cond_9
    const-wide v13, 0x3ff028f5c28f5c29L    # 1.01

    cmpg-double v4, p0, v13

    if-gez v4, :cond_b

    const-wide v13, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v4, p0, v13

    if-lez v4, :cond_b

    if-nez p2, :cond_b

    sub-double v0, p0, v2

    mul-double v2, v0, v9

    add-double v4, v0, v2

    sub-double/2addr v4, v2

    sub-double/2addr v0, v4

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->i:[[D

    array-length v3, v2

    sub-int/2addr v3, v12

    aget-object v3, v2, v3

    aget-wide v6, v3, v8

    aget-wide v13, v3, v12

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    :goto_1
    if-ltz v2, :cond_a

    mul-double v15, v6, v4

    mul-double/2addr v6, v0

    mul-double v17, v13, v4

    add-double v6, v6, v17

    mul-double/2addr v13, v0

    add-double/2addr v6, v13

    mul-double v13, v15, v9

    add-double v17, v15, v13

    sub-double v17, v17, v13

    sub-double v15, v15, v17

    add-double/2addr v15, v6

    sget-object v3, Lorg/apache/commons/math3/util/FastMath;->i:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v8

    add-double v17, v17, v6

    aget-wide v6, v3, v12

    add-double/2addr v15, v6

    mul-double v6, v17, v9

    add-double v13, v17, v6

    sub-double v6, v13, v6

    sub-double v17, v17, v6

    add-double v13, v17, v15

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_a
    mul-double v2, v6, v4

    mul-double/2addr v6, v0

    mul-double/2addr v4, v13

    add-double/2addr v6, v4

    mul-double/2addr v13, v0

    add-double/2addr v6, v13

    mul-double/2addr v9, v2

    add-double v0, v2, v9

    sub-double/2addr v0, v9

    sub-double/2addr v2, v0

    add-double/2addr v2, v6

    add-double/2addr v0, v2

    return-wide v0

    :cond_b
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$e;->a()[[D

    move-result-object v4

    const-wide v13, 0xffc0000000000L

    and-long/2addr v13, v5

    const/16 v11, 0x2a

    shr-long v0, v13, v11

    long-to-int v0, v0

    aget-object v0, v4, v0

    const-wide v17, 0x3ffffffffffL

    and-long v4, v5, v17

    long-to-double v4, v4

    const-wide/high16 v17, 0x4330000000000000L    # 4.503599627370496E15

    long-to-double v13, v13

    add-double v13, v13, v17

    div-double v17, v4, v13

    if-eqz p2, :cond_d

    mul-double v1, v17, v9

    add-double v19, v17, v1

    sub-double v19, v19, v1

    sub-double v17, v17, v19

    mul-double v1, v19, v13

    sub-double/2addr v4, v1

    mul-double v1, v17, v13

    sub-double/2addr v4, v1

    div-double/2addr v4, v13

    add-double v17, v17, v4

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->j:[[D

    array-length v2, v1

    sub-int/2addr v2, v12

    aget-object v2, v1, v2

    aget-wide v3, v2, v8

    aget-wide v5, v2, v12

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_2
    if-ltz v1, :cond_c

    mul-double v13, v3, v19

    mul-double v3, v3, v17

    mul-double v21, v5, v19

    add-double v3, v3, v21

    mul-double v5, v5, v17

    add-double/2addr v3, v5

    mul-double v5, v13, v9

    add-double v21, v13, v5

    sub-double v21, v21, v5

    sub-double v13, v13, v21

    add-double/2addr v13, v3

    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->j:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, v8

    add-double v21, v21, v3

    aget-wide v2, v2, v12

    add-double/2addr v13, v2

    mul-double v2, v21, v9

    add-double v4, v21, v2

    sub-double v3, v4, v2

    sub-double v21, v21, v3

    add-double v5, v21, v13

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_c
    mul-double v1, v3, v19

    mul-double v3, v3, v17

    mul-double v19, v19, v5

    add-double v3, v3, v19

    mul-double v5, v5, v17

    add-double/2addr v3, v5

    add-double v5, v1, v3

    sub-double v1, v5, v1

    sub-double/2addr v1, v3

    neg-double v1, v1

    goto :goto_3

    :cond_d
    const-wide v4, -0x403ab85bc817c0f3L    # -0.16624882440418567

    mul-double v4, v4, v17

    const-wide v9, 0x3fc99995c0570824L    # 0.19999954120254515

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide v9, -0x40300000007fae53L    # -0.2499999997677497

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide v9, 0x3fd5555555555198L    # 0.3333333333332802

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    add-double/2addr v4, v2

    mul-double v5, v4, v17

    const-wide/16 v1, 0x0

    :goto_3
    int-to-double v3, v7

    const-wide v9, 0x3fe62e42c0000000L    # 0.6931470632553101

    mul-double/2addr v9, v3

    aget-wide v13, v0, v8

    add-double v17, v9, v13

    sub-double v9, v17, v9

    sub-double/2addr v9, v13

    neg-double v9, v9

    const-wide/16 v13, 0x0

    add-double/2addr v9, v13

    add-double v13, v17, v5

    sub-double v15, v13, v17

    sub-double v5, v15, v5

    neg-double v5, v5

    add-double/2addr v9, v5

    const-wide v5, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    mul-double/2addr v3, v5

    add-double v5, v13, v3

    sub-double v13, v5, v13

    sub-double/2addr v13, v3

    neg-double v3, v13

    add-double/2addr v9, v3

    aget-wide v3, v0, v12

    add-double v13, v5, v3

    sub-double v5, v13, v5

    sub-double/2addr v5, v3

    neg-double v3, v5

    add-double/2addr v9, v3

    add-double v3, v13, v1

    sub-double v5, v3, v13

    sub-double/2addr v5, v1

    neg-double v0, v5

    add-double/2addr v9, v0

    if-eqz p2, :cond_e

    aput-wide v3, p2, v8

    aput-wide v9, p2, v12

    :cond_e
    add-double/2addr v3, v9

    return-wide v3
.end method

.method public static floor(D)D
    .locals 4

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v0, p0, v0

    if-gez v0, :cond_4

    const-wide/high16 v0, -0x3cd0000000000000L    # -4.503599627370496E15

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    double-to-long v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_2

    long-to-double v2, v0

    cmpl-double v2, v2, p0

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    long-to-double v0, v0

    mul-double/2addr p0, v0

    return-wide p0

    :cond_3
    long-to-double p0, v0

    :cond_4
    :goto_0
    return-wide p0
.end method

.method public static floorDiv(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    rem-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    div-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 3
    :cond_1
    :goto_0
    div-int/2addr p0, p1

    return p0

    .line 4
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static floorDiv(JJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 5
    rem-long v2, p0, p2

    xor-long v4, p0, p2

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    div-long/2addr p0, p2

    const-wide/16 p2, 0x1

    sub-long/2addr p0, p2

    return-wide p0

    .line 7
    :cond_1
    :goto_0
    div-long/2addr p0, p2

    return-wide p0

    .line 8
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static floorMod(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    rem-int v0, p0, p1

    xor-int/2addr p0, p1

    if-gez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    return v0

    .line 2
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static floorMod(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 3
    rem-long v2, p0, p2

    xor-long/2addr p0, p2

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    cmp-long p0, v2, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p2, v2

    return-wide p2

    :cond_1
    :goto_0
    return-wide v2

    .line 4
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static g(D)D
    .locals 4

    mul-double/2addr p0, p0

    const-wide v0, 0x3efa0097667cf584L    # 2.479773539153719E-5

    mul-double/2addr v0, p0

    const-wide v2, -0x40a93e93eebce3e0L    # -0.0013888888689039883

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, 0x3fa5555555553bb8L    # 0.041666666666621166

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide v2, -0x4020000000000001L    # -0.49999999999999994

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static getExponent(D)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x34

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x7ff

    and-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit16 p0, p0, -0x3ff

    return p0
.end method

.method public static getExponent(F)I
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x17

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 p0, p0, -0x7f

    return p0
.end method

.method public static h(D)D
    .locals 6

    mul-double v0, p0, p0

    const-wide v2, 0x3ec71d2322488cdeL    # 2.7553817452272217E-6

    mul-double/2addr v2, v0

    const-wide v4, -0x40d5fe5fe9fd292eL    # -1.9841269659586505E-4

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v4, 0x3f811111111107c0L    # 0.008333333333329196

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v4, -0x403aaaaaaaaaaaabL    # -0.16666666666666666

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, p0

    return-wide v2
.end method

.method public static hypot(DD)D
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v1

    add-int/lit8 v2, v1, 0x1b

    if-le v0, v2, :cond_2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    add-int/lit8 v2, v0, 0x1b

    if-le v1, v2, :cond_3

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0

    :cond_3
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide p0

    invoke-static {p2, p3, v1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide p2

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_5
    :goto_1
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0
.end method

.method public static i(D[D)V
    .locals 38

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    shr-long v2, v0, v2

    const-wide/16 v4, 0x7ff

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit16 v2, v2, -0x3ff

    const-wide v3, 0xfffffffffffffL

    and-long/2addr v0, v3

    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr v0, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0xb

    shl-long/2addr v0, v4

    shr-int/lit8 v4, v2, 0x6

    shl-int/lit8 v5, v4, 0x6

    sub-int/2addr v2, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    sget-object v8, Lorg/apache/commons/math3/util/FastMath;->r:[J

    add-int/lit8 v9, v4, -0x1

    aget-wide v8, v8, v9

    shl-long/2addr v8, v2

    :goto_0
    sget-object v10, Lorg/apache/commons/math3/util/FastMath;->r:[J

    aget-wide v11, v10, v4

    rsub-int/lit8 v13, v2, 0x40

    ushr-long v14, v11, v13

    or-long/2addr v8, v14

    shl-long/2addr v11, v2

    add-int/lit8 v14, v4, 0x1

    aget-wide v14, v10, v14

    ushr-long v16, v14, v13

    or-long v11, v11, v16

    shl-long/2addr v14, v2

    add-int/2addr v4, v5

    aget-wide v16, v10, v4

    ushr-long v16, v16, v13

    or-long v13, v14, v16

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    move-wide v8, v6

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->r:[J

    add-int/lit8 v8, v4, -0x1

    aget-wide v8, v2, v8

    :goto_1
    sget-object v2, Lorg/apache/commons/math3/util/FastMath;->r:[J

    aget-wide v11, v2, v4

    add-int/2addr v4, v3

    aget-wide v13, v2, v4

    :goto_2
    const/16 v2, 0x20

    ushr-long v15, v0, v2

    const-wide v17, 0xffffffffL

    and-long v0, v0, v17

    ushr-long v19, v11, v2

    and-long v10, v11, v17

    mul-long v21, v15, v19

    mul-long v23, v0, v10

    mul-long v19, v19, v0

    mul-long/2addr v10, v15

    shl-long v25, v10, v2

    add-long v25, v23, v25

    ushr-long v27, v10, v2

    add-long v21, v21, v27

    const-wide/high16 v27, -0x8000000000000000L

    and-long v23, v23, v27

    cmp-long v4, v23, v6

    const/4 v12, 0x0

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v12

    :goto_3
    const-wide v23, 0x80000000L

    and-long v10, v10, v23

    cmp-long v10, v10, v6

    if-eqz v10, :cond_4

    move v10, v3

    goto :goto_4

    :cond_4
    move v10, v12

    :goto_4
    and-long v29, v25, v27

    cmp-long v11, v29, v6

    if-eqz v11, :cond_5

    move/from16 v29, v3

    goto :goto_5

    :cond_5
    move/from16 v29, v12

    :goto_5
    const-wide/16 v30, 0x1

    if-eqz v4, :cond_6

    if-nez v10, :cond_8

    :cond_6
    if-nez v4, :cond_7

    if-eqz v10, :cond_9

    :cond_7
    if-nez v29, :cond_9

    :cond_8
    add-long v21, v21, v30

    :cond_9
    if-eqz v11, :cond_a

    move v4, v3

    goto :goto_6

    :cond_a
    move v4, v12

    :goto_6
    and-long v10, v19, v23

    cmp-long v10, v10, v6

    if-eqz v10, :cond_b

    move v10, v3

    goto :goto_7

    :cond_b
    move v10, v12

    :goto_7
    shl-long v32, v19, v2

    add-long v25, v25, v32

    ushr-long v19, v19, v2

    add-long v21, v21, v19

    and-long v19, v25, v27

    cmp-long v11, v19, v6

    if-eqz v11, :cond_c

    move/from16 v19, v3

    goto :goto_8

    :cond_c
    move/from16 v19, v12

    :goto_8
    if-eqz v4, :cond_d

    if-nez v10, :cond_f

    :cond_d
    if-nez v4, :cond_e

    if-eqz v10, :cond_10

    :cond_e
    if-nez v19, :cond_10

    :cond_f
    add-long v21, v21, v30

    :cond_10
    ushr-long v19, v13, v2

    and-long v13, v13, v17

    mul-long v32, v15, v19

    mul-long v19, v19, v0

    mul-long/2addr v13, v15

    add-long v19, v19, v13

    ushr-long v13, v19, v2

    add-long v32, v32, v13

    if-eqz v11, :cond_11

    move v4, v3

    goto :goto_9

    :cond_11
    move v4, v12

    :goto_9
    and-long v10, v32, v27

    cmp-long v10, v10, v6

    if-eqz v10, :cond_12

    move v10, v3

    goto :goto_a

    :cond_12
    move v10, v12

    :goto_a
    add-long v25, v25, v32

    and-long v13, v25, v27

    cmp-long v11, v13, v6

    if-eqz v11, :cond_13

    move v11, v3

    goto :goto_b

    :cond_13
    move v11, v12

    :goto_b
    if-eqz v4, :cond_14

    if-nez v10, :cond_16

    :cond_14
    if-nez v4, :cond_15

    if-eqz v10, :cond_17

    :cond_15
    if-nez v11, :cond_17

    :cond_16
    add-long v21, v21, v30

    :cond_17
    ushr-long v10, v8, v2

    and-long v8, v8, v17

    mul-long v13, v0, v8

    mul-long/2addr v0, v10

    mul-long/2addr v15, v8

    add-long/2addr v0, v15

    shl-long/2addr v0, v2

    add-long/2addr v13, v0

    add-long v21, v21, v13

    const/16 v0, 0x3e

    ushr-long v8, v21, v0

    long-to-int v1, v8

    shl-long v8, v21, v5

    ushr-long v10, v25, v0

    or-long/2addr v8, v10

    shl-long v10, v25, v5

    ushr-long v13, v8, v2

    and-long v8, v8, v17

    sget-object v0, Lorg/apache/commons/math3/util/FastMath;->s:[J

    aget-wide v15, v0, v12

    ushr-long v19, v15, v2

    and-long v21, v15, v17

    mul-long v25, v13, v19

    mul-long v32, v8, v21

    mul-long v19, v19, v8

    mul-long v21, v21, v13

    shl-long v34, v21, v2

    add-long v34, v32, v34

    ushr-long v36, v21, v2

    add-long v25, v25, v36

    and-long v32, v32, v27

    cmp-long v4, v32, v6

    if-eqz v4, :cond_18

    move v4, v3

    goto :goto_c

    :cond_18
    move v4, v12

    :goto_c
    and-long v21, v21, v23

    cmp-long v21, v21, v6

    if-eqz v21, :cond_19

    move/from16 v21, v3

    goto :goto_d

    :cond_19
    move/from16 v21, v12

    :goto_d
    and-long v32, v34, v27

    cmp-long v22, v32, v6

    if-eqz v22, :cond_1a

    move/from16 v29, v3

    goto :goto_e

    :cond_1a
    move/from16 v29, v12

    :goto_e
    if-eqz v4, :cond_1b

    if-nez v21, :cond_1d

    :cond_1b
    if-nez v4, :cond_1c

    if-eqz v21, :cond_1e

    :cond_1c
    if-nez v29, :cond_1e

    :cond_1d
    add-long v25, v25, v30

    :cond_1e
    if-eqz v22, :cond_1f

    move v4, v3

    goto :goto_f

    :cond_1f
    move v4, v12

    :goto_f
    and-long v21, v19, v23

    cmp-long v21, v21, v6

    if-eqz v21, :cond_20

    move/from16 v21, v3

    goto :goto_10

    :cond_20
    move/from16 v21, v12

    :goto_10
    shl-long v22, v19, v2

    add-long v34, v34, v22

    ushr-long v19, v19, v2

    add-long v25, v25, v19

    and-long v19, v34, v27

    cmp-long v19, v19, v6

    if-eqz v19, :cond_21

    move/from16 v20, v3

    goto :goto_11

    :cond_21
    move/from16 v20, v12

    :goto_11
    if-eqz v4, :cond_22

    if-nez v21, :cond_24

    :cond_22
    if-nez v4, :cond_23

    if-eqz v21, :cond_25

    :cond_23
    if-nez v20, :cond_25

    :cond_24
    add-long v25, v25, v30

    :cond_25
    aget-wide v20, v0, v3

    ushr-long v22, v20, v2

    and-long v20, v20, v17

    mul-long v32, v13, v22

    mul-long v8, v8, v22

    mul-long v13, v13, v20

    add-long/2addr v8, v13

    ushr-long/2addr v8, v2

    add-long v32, v32, v8

    if-eqz v19, :cond_26

    move v0, v3

    goto :goto_12

    :cond_26
    move v0, v12

    :goto_12
    and-long v8, v32, v27

    cmp-long v4, v8, v6

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_13

    :cond_27
    move v4, v12

    :goto_13
    add-long v34, v34, v32

    and-long v8, v34, v27

    cmp-long v8, v8, v6

    if-eqz v8, :cond_28

    move v9, v3

    goto :goto_14

    :cond_28
    move v9, v12

    :goto_14
    if-eqz v0, :cond_29

    if-nez v4, :cond_2b

    :cond_29
    if-nez v0, :cond_2a

    if-eqz v4, :cond_2c

    :cond_2a
    if-nez v9, :cond_2c

    :cond_2b
    add-long v25, v25, v30

    :cond_2c
    ushr-long v13, v10, v2

    and-long v9, v10, v17

    ushr-long v19, v15, v2

    and-long v15, v15, v17

    mul-long v17, v13, v19

    mul-long v9, v9, v19

    mul-long/2addr v13, v15

    add-long/2addr v9, v13

    ushr-long/2addr v9, v2

    add-long v17, v17, v9

    if-eqz v8, :cond_2d

    move v0, v3

    goto :goto_15

    :cond_2d
    move v0, v12

    :goto_15
    and-long v8, v17, v27

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2e

    move v2, v3

    goto :goto_16

    :cond_2e
    move v2, v12

    :goto_16
    add-long v34, v34, v17

    and-long v8, v34, v27

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2f

    move v4, v3

    goto :goto_17

    :cond_2f
    move v4, v12

    :goto_17
    if-eqz v0, :cond_30

    if-nez v2, :cond_32

    :cond_30
    if-nez v0, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    if-nez v4, :cond_33

    :cond_32
    add-long v25, v25, v30

    :cond_33
    const/16 v0, 0xc

    ushr-long v6, v25, v0

    long-to-double v6, v6

    const-wide/high16 v8, 0x4330000000000000L    # 4.503599627370496E15

    div-double/2addr v6, v8

    const-wide/16 v10, 0xfff

    and-long v10, v25, v10

    const/16 v0, 0x28

    shl-long/2addr v10, v0

    const/16 v0, 0x18

    ushr-long v13, v34, v0

    add-long/2addr v10, v13

    long-to-double v10, v10

    div-double/2addr v10, v8

    div-double/2addr v10, v8

    add-double v8, v6, v10

    sub-double v6, v8, v6

    sub-double/2addr v6, v10

    neg-double v6, v6

    int-to-double v0, v1

    aput-wide v0, p2, v12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v0

    aput-wide v8, p2, v3

    mul-double/2addr v6, v0

    aput-wide v6, p2, v5

    return-void
.end method

.method public static incrementExact(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    add-int/2addr p0, v1

    return p0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static incrementExact(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    return-wide p0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_ADDITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static j(DD)D
    .locals 23

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->t:[D

    aget-wide v1, v1, v0

    sub-double v1, p0, v1

    sget-object v3, Lorg/apache/commons/math3/util/FastMath;->l:[D

    aget-wide v3, v3, v0

    sget-object v5, Lorg/apache/commons/math3/util/FastMath;->m:[D

    aget-wide v5, v5, v0

    sget-object v7, Lorg/apache/commons/math3/util/FastMath;->n:[D

    aget-wide v7, v7, v0

    sget-object v9, Lorg/apache/commons/math3/util/FastMath;->o:[D

    aget-wide v9, v9, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->h(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->g(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v15, v1

    add-double v17, v1, v15

    sub-double v17, v17, v15

    sub-double v1, v1, v17

    add-double/2addr v11, v1

    const-wide/16 v0, 0x0

    add-double v15, v3, v0

    sub-double v19, v15, v0

    move-wide/from16 p0, v9

    sub-double v9, v19, v3

    neg-double v9, v9

    add-double/2addr v9, v0

    mul-double v19, v7, v17

    add-double v21, v15, v19

    sub-double v15, v21, v15

    sub-double v0, v15, v19

    neg-double v0, v0

    add-double/2addr v9, v0

    mul-double v0, v3, v13

    add-double/2addr v9, v0

    mul-double v0, v7, v11

    add-double/2addr v9, v0

    add-double/2addr v9, v5

    move-wide/from16 v0, p0

    mul-double v15, v0, v17

    add-double/2addr v9, v15

    mul-double v15, v5, v13

    add-double/2addr v9, v15

    mul-double v15, v0, v11

    add-double/2addr v9, v15

    const-wide/16 v15, 0x0

    cmpl-double v2, p2, v15

    if-eqz v2, :cond_0

    add-double/2addr v7, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v0

    mul-double/2addr v7, v13

    add-double/2addr v3, v5

    add-double v17, v17, v11

    mul-double v3, v3, v17

    sub-double/2addr v7, v3

    mul-double v7, v7, p2

    add-double v0, v21, v7

    sub-double v2, v0, v21

    sub-double/2addr v2, v7

    neg-double v2, v2

    add-double/2addr v9, v2

    move-wide/from16 v21, v0

    :cond_0
    add-double v21, v21, v9

    return-wide v21
.end method

.method public static k(DDZ)D
    .locals 31

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->t:[D

    aget-wide v1, v1, v0

    sub-double v1, p0, v1

    sget-object v3, Lorg/apache/commons/math3/util/FastMath;->l:[D

    aget-wide v3, v3, v0

    sget-object v5, Lorg/apache/commons/math3/util/FastMath;->m:[D

    aget-wide v5, v5, v0

    sget-object v7, Lorg/apache/commons/math3/util/FastMath;->n:[D

    aget-wide v7, v7, v0

    sget-object v9, Lorg/apache/commons/math3/util/FastMath;->o:[D

    aget-wide v9, v9, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->h(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->g(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x41d0000000000000L    # 1.073741824E9

    mul-double v17, v1, v15

    add-double v19, v1, v17

    sub-double v19, v19, v17

    sub-double v1, v1, v19

    add-double/2addr v11, v1

    const-wide/16 v0, 0x0

    add-double v17, v3, v0

    sub-double v21, v17, v0

    move-wide/from16 p0, v5

    sub-double v5, v21, v3

    neg-double v5, v5

    add-double/2addr v5, v0

    mul-double v21, v7, v19

    add-double v23, v17, v21

    sub-double v17, v23, v17

    sub-double v0, v17, v21

    neg-double v0, v0

    add-double/2addr v5, v0

    mul-double v0, v3, v13

    mul-double v17, v7, v11

    add-double v0, v0, v17

    add-double/2addr v5, v0

    mul-double v0, v9, v19

    move-wide/from16 v17, p0

    add-double v0, v17, v0

    mul-double v21, v17, v13

    add-double v0, v0, v21

    mul-double v21, v9, v11

    add-double v0, v0, v21

    add-double/2addr v5, v0

    add-double v0, v23, v5

    sub-double v21, v0, v23

    sub-double v5, v21, v5

    neg-double v5, v5

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    mul-double v23, v7, v21

    const-wide/16 v25, 0x0

    add-double v27, v23, v25

    sub-double v29, v27, v25

    move-wide/from16 p0, v0

    sub-double v0, v29, v23

    neg-double v0, v0

    add-double v0, v0, v25

    move-wide/from16 v23, v5

    neg-double v5, v3

    mul-double v5, v5, v19

    add-double v29, v27, v5

    sub-double v27, v29, v27

    sub-double v5, v27, v5

    neg-double v5, v5

    add-double/2addr v0, v5

    mul-double v21, v21, v9

    mul-double/2addr v7, v13

    add-double v21, v21, v7

    mul-double/2addr v9, v13

    add-double v21, v21, v9

    add-double v0, v0, v21

    mul-double v5, v17, v19

    mul-double/2addr v3, v11

    add-double/2addr v5, v3

    mul-double v2, v17, v11

    add-double/2addr v5, v2

    sub-double/2addr v0, v5

    add-double v2, v29, v0

    sub-double v4, v2, v29

    sub-double/2addr v4, v0

    neg-double v0, v4

    if-eqz p4, :cond_0

    move-wide v5, v0

    move-wide v0, v2

    move-wide/from16 v2, p0

    goto :goto_0

    :cond_0
    move-wide/from16 v5, v23

    move-wide/from16 v23, v0

    move-wide/from16 v0, p0

    :goto_0
    div-double v7, v0, v2

    mul-double v9, v7, v15

    add-double v11, v7, v9

    sub-double/2addr v11, v9

    sub-double v9, v7, v11

    mul-double/2addr v15, v2

    add-double v13, v2, v15

    sub-double/2addr v13, v15

    sub-double v15, v2, v13

    mul-double v17, v11, v13

    sub-double v17, v0, v17

    mul-double/2addr v11, v15

    sub-double v17, v17, v11

    mul-double/2addr v13, v9

    sub-double v17, v17, v13

    mul-double/2addr v9, v15

    sub-double v17, v17, v9

    div-double v17, v17, v2

    div-double/2addr v5, v2

    add-double v17, v17, v5

    neg-double v0, v0

    mul-double v0, v0, v23

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    add-double v17, v17, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_2

    mul-double v0, v7, v7

    mul-double v0, v0, p2

    add-double v0, p2, v0

    if-eqz p4, :cond_1

    neg-double v0, v0

    :cond_1
    add-double v17, v17, v0

    :cond_2
    add-double v7, v7, v17

    return-wide v7
.end method

.method public static log(D)D
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->f(D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static log(DD)D
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    div-double/2addr p2, p0

    return-wide p2
.end method

.method public static log10(D)D
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/FastMath;->f(D[D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_0

    return-wide p0

    :cond_0
    const/4 p0, 0x0

    aget-wide p0, v0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v1, p0

    add-double v3, p0, v1

    sub-double/2addr v3, v1

    sub-double/2addr p0, v3

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    add-double/2addr p0, v0

    const-wide v0, 0x3e5526e50e32a6abL    # 1.9699272335463627E-8

    mul-double v5, p0, v0

    mul-double/2addr v0, v3

    add-double/2addr v5, v0

    const-wide v0, 0x3fdbcb7b00000000L    # 0.4342944622039795

    mul-double/2addr p0, v0

    add-double/2addr v5, p0

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    return-wide v5
.end method

.method public static log1p(D)D
    .locals 10

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v0, :cond_3

    const-wide v5, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v0, p0, v5

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v5, p0

    sub-double/2addr v5, v1

    mul-double/2addr v5, p0

    add-double/2addr v5, v3

    mul-double/2addr v5, p0

    return-wide v5

    :cond_3
    :goto_0
    add-double v5, p0, v3

    sub-double v7, v5, v3

    sub-double/2addr v7, p0

    neg-double p0, v7

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {v5, v6, v0}, Lorg/apache/commons/math3/util/FastMath;->f(D[D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_4

    return-wide v7

    :cond_4
    div-double/2addr p0, v5

    mul-double/2addr v1, p0

    add-double/2addr v1, v3

    mul-double/2addr v1, p0

    const/4 p0, 0x1

    aget-wide p0, v0, p0

    add-double/2addr v1, p0

    const/4 p0, 0x0

    aget-wide p0, v0, p0

    add-double/2addr v1, p0

    return-wide v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$c;->a()[D

    move-result-object v0

    const-string v1, "EXP_INT_TABLE_A"

    const/16 v2, 0x5dc

    invoke-static {p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "EXP_INT_TABLE_B"

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$c;->b()[D

    move-result-object v1

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$b;->a()[D

    move-result-object v0

    const-string v1, "EXP_FRAC_TABLE_A"

    const/16 v2, 0x401

    invoke-static {p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "EXP_FRAC_TABLE_B"

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$b;->b()[D

    move-result-object v1

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const/16 v0, 0x400

    invoke-static {}, Lorg/apache/commons/math3/util/FastMath$e;->a()[[D

    move-result-object v1

    const-string v2, "LN_MANT"

    invoke-static {p0, v2, v0, v1}, Lcom/sunia/HTREnginev2/b9g;->f(Ljava/io/PrintStream;Ljava/lang/String;I[[D)V

    sget-object v0, Lorg/apache/commons/math3/util/FastMath;->l:[D

    const-string v1, "SINE_TABLE_A"

    const/16 v2, 0xe

    invoke-static {p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "SINE_TABLE_B"

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->m:[D

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "COSINE_TABLE_A"

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->n:[D

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "COSINE_TABLE_B"

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->o:[D

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "TANGENT_TABLE_A"

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->p:[D

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    const-string v0, "TANGENT_TABLE_B"

    sget-object v1, Lorg/apache/commons/math3/util/FastMath;->q:[D

    invoke-static {p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/b9g;->e(Ljava/io/PrintStream;Ljava/lang/String;I[D)V

    return-void
.end method

.method public static max(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    return-wide p2

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 4
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    return-wide p2

    :cond_3
    return-wide p0
.end method

.method public static max(FF)F
    .locals 2

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    cmpg-float v1, p0, p1

    if-gez v1, :cond_1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 3
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    return p1

    :cond_3
    return p0
.end method

.method public static max(II)I
    .locals 0

    .line 1
    if-gt p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static max(JJ)J
    .locals 1

    .line 2
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static min(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    return-wide p2

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    return-wide p0

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 4
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    return-wide p0

    :cond_3
    return-wide p2
.end method

.method public static min(FF)F
    .locals 2

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p1

    :cond_0
    cmpg-float v1, p0, p1

    if-gez v1, :cond_1

    return p0

    :cond_1
    if-eqz v0, :cond_2

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 3
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    return p0

    :cond_3
    return p1
.end method

.method public static min(II)I
    .locals 0

    .line 1
    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static min(JJ)J
    .locals 1

    .line 2
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    return-wide p0
.end method

.method public static multiplyExact(II)I
    .locals 4

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    if-lez p1, :cond_0

    .line 1
    div-int v2, v0, p1

    if-gt p0, v2, :cond_2

    div-int v2, v1, p1

    if-lt p0, v2, :cond_2

    :cond_0
    const/4 v2, -0x1

    if-ge p1, v2, :cond_1

    div-int v3, v1, p1

    if-gt p0, v3, :cond_2

    div-int/2addr v0, p1

    if-lt p0, v0, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-eq p0, v1, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_MULTIPLICATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_0
    mul-int/2addr p0, p1

    return p0
.end method

.method public static multiplyExact(JJ)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide v1, 0x7fffffffffffffffL

    const-wide/high16 v3, -0x8000000000000000L

    if-lez v0, :cond_0

    .line 3
    div-long v5, v1, p2

    cmp-long v0, p0, v5

    if-gtz v0, :cond_2

    div-long v5, v3, p2

    cmp-long v0, p0, v5

    if-ltz v0, :cond_2

    :cond_0
    const-wide/16 v5, -0x1

    cmp-long v0, p2, v5

    if-gez v0, :cond_1

    div-long v5, v3, p2

    cmp-long v5, p0, v5

    if-gtz v5, :cond_2

    div-long/2addr v1, p2

    cmp-long v1, p0, v1

    if-ltz v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    cmp-long v0, p0, v3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_MULTIPLICATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_0
    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static nextAfter(DD)D
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    return-wide p2

    .line 2
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    cmpg-double p0, p0, v1

    if-gez p0, :cond_2

    const-wide p0, -0x10000000000001L

    goto :goto_0

    :cond_2
    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    return-wide p0

    :cond_3
    cmpl-double v0, p0, v1

    if-nez v0, :cond_5

    cmpg-double p0, p2, v1

    if-gez p0, :cond_4

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_4
    const-wide/16 p0, 0x1

    :goto_1
    return-wide p0

    .line 3
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    cmpg-double p0, p2, p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-gez p0, :cond_6

    move p0, p1

    goto :goto_2

    :cond_6
    move p0, p2

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    move p1, p2

    :goto_3
    xor-int/2addr p0, p1

    const-wide/16 p1, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-eqz p0, :cond_8

    and-long/2addr v0, v4

    add-long/2addr v0, p1

    or-long p0, v2, v0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_8
    and-long/2addr v0, v4

    sub-long/2addr v0, p1

    or-long p0, v2, v0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :cond_9
    :goto_4
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static nextAfter(FD)F
    .locals 4

    float-to-double v0, p0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    cmpl-double v2, v0, p1

    if-nez v2, :cond_1

    double-to-float p0, p1

    return p0

    .line 7
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    cmpg-float p0, p0, v3

    if-gez p0, :cond_2

    const p0, -0x800001

    goto :goto_0

    :cond_2
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    return p0

    :cond_3
    cmpl-float v2, p0, v3

    if-nez v2, :cond_5

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_4

    const p0, -0x7fffffff

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 8
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    const/high16 v2, -0x80000000

    and-int/2addr v2, p0

    cmpg-double p1, p1, v0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p1, :cond_6

    move p1, v0

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    if-nez v2, :cond_7

    move p2, v0

    :cond_7
    xor-int/2addr p1, p2

    const p2, 0x7fffffff

    if-eqz p1, :cond_8

    and-int/2addr p0, p2

    add-int/2addr p0, v0

    or-int/2addr p0, v2

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_8
    and-int/2addr p0, p2

    sub-int/2addr p0, v0

    or-int/2addr p0, v2

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_9
    :goto_3
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public static nextDown(D)D
    .locals 2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static nextDown(F)F
    .locals 2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2
    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(FD)F

    move-result p0

    return p0
.end method

.method public static nextUp(D)D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static nextUp(F)F
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2
    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(FD)F

    move-result p0

    return p0
.end method

.method public static pow(DD)D
    .locals 24

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, p2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_0

    return-wide v5

    .line 1
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v11, v7, v9

    const/16 v13, 0x34

    shr-long/2addr v11, v13

    long-to-int v11, v11

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v7, v14

    .line 2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    and-long v9, v16, v9

    shr-long/2addr v9, v13

    long-to-int v9, v9

    and-long v12, v16, v14

    const/16 v10, 0x43d

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v14, 0x3ff

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v20, 0x0

    const/16 v15, 0x7ff

    if-le v11, v10, :cond_9

    if-ne v11, v15, :cond_1

    cmp-long v0, v7, v20

    if-nez v0, :cond_2

    :cond_1
    if-ne v9, v15, :cond_3

    cmp-long v0, v12, v20

    if-eqz v0, :cond_3

    :cond_2
    return-wide v18

    :cond_3
    if-ne v9, v14, :cond_5

    cmp-long v0, v12, v20

    if-nez v0, :cond_5

    if-ne v11, v15, :cond_4

    return-wide v18

    :cond_4
    return-wide v5

    :cond_5
    if-lez v4, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-ge v9, v14, :cond_7

    const/4 v14, 0x1

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    xor-int/2addr v0, v14

    if-eqz v0, :cond_8

    return-wide v16

    :cond_8
    return-wide v2

    :cond_9
    if-lt v11, v14, :cond_d

    const-wide/high16 v22, 0x10000000000000L

    or-long v7, v7, v22

    const/16 v4, 0x433

    if-ge v11, v4, :cond_b

    sub-int/2addr v4, v11

    const-wide/16 v10, -0x1

    shl-long/2addr v10, v4

    and-long/2addr v10, v7

    cmp-long v10, v10, v7

    if-nez v10, :cond_d

    shr-long v4, v7, v4

    cmpg-double v2, p2, v2

    if-gez v2, :cond_a

    neg-long v4, v4

    .line 3
    :cond_a
    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DJ)D

    move-result-wide v0

    return-wide v0

    :cond_b
    sub-int/2addr v11, v4

    shl-long v4, v7, v11

    cmpg-double v2, p2, v2

    if-gez v2, :cond_c

    neg-long v4, v4

    .line 4
    :cond_c
    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DJ)D

    move-result-wide v0

    return-wide v0

    :cond_d
    cmpl-double v4, v0, v2

    if-nez v4, :cond_f

    cmpg-double v0, p2, v2

    if-gez v0, :cond_e

    move-wide/from16 v2, v16

    :cond_e
    return-wide v2

    :cond_f
    if-ne v9, v15, :cond_12

    cmp-long v0, v12, v20

    if-nez v0, :cond_11

    cmpg-double v0, p2, v2

    if-gez v0, :cond_10

    goto :goto_2

    :cond_10
    move-wide/from16 v2, v16

    :goto_2
    return-wide v2

    :cond_11
    return-wide v18

    :cond_12
    cmpg-double v2, v0, v2

    if-gez v2, :cond_13

    return-wide v18

    :cond_13
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v7, p2, v2

    add-double v9, p2, v7

    sub-double/2addr v9, v7

    sub-double v7, p2, v9

    const/4 v4, 0x2

    new-array v4, v4, [D

    .line 5
    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/util/FastMath;->f(D[D)D

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_14

    return-wide v0

    :cond_14
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const/4 v11, 0x1

    aget-wide v11, v4, v11

    mul-double/2addr v2, v0

    add-double v13, v0, v2

    sub-double/2addr v13, v2

    sub-double/2addr v0, v13

    add-double/2addr v11, v0

    mul-double v0, v13, v9

    mul-double/2addr v13, v7

    mul-double/2addr v9, v11

    add-double/2addr v13, v9

    mul-double/2addr v11, v7

    add-double/2addr v13, v11

    add-double v2, v0, v13

    sub-double v0, v2, v0

    sub-double/2addr v0, v13

    neg-double v0, v0

    const-wide v7, 0x3f81111111111111L    # 0.008333333333333333

    mul-double/2addr v7, v0

    const-wide v9, 0x3fa5555555555555L    # 0.041666666666666664

    add-double/2addr v7, v9

    mul-double/2addr v7, v0

    const-wide v9, 0x3fc5555555555555L    # 0.16666666666666666

    add-double/2addr v7, v9

    mul-double/2addr v7, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    mul-double/2addr v7, v0

    add-double/2addr v7, v5

    mul-double/2addr v7, v0

    const/4 v0, 0x0

    .line 7
    invoke-static {v2, v3, v7, v8, v0}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pow(DI)D
    .locals 2

    int-to-long v0, p2

    .line 8
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DJ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static pow(DJ)D
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    if-lez v0, :cond_1

    .line 9
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(D)V

    invoke-static {v0, p2, p3}, Lorg/apache/commons/math3/util/FastMath$d;->a(Lorg/apache/commons/math3/util/FastMath$d;J)Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/util/FastMath$d;->b(Lorg/apache/commons/math3/util/FastMath$d;)D

    move-result-wide p0

    return-wide p0

    .line 10
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(D)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/FastMath$d;->e()Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object p0

    neg-long p1, p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/FastMath$d;->a(Lorg/apache/commons/math3/util/FastMath$d;J)Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/util/FastMath$d;->b(Lorg/apache/commons/math3/util/FastMath$d;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static random()D
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static rint(D)D
    .locals 7

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    sub-double/2addr p0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, p0, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-lez v4, :cond_1

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_0
    add-double/2addr v0, v5

    return-wide v0

    :cond_1
    cmpg-double p0, p0, v2

    if-gez p0, :cond_2

    return-wide v0

    :cond_2
    double-to-long p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    add-double/2addr v0, v5

    :goto_0
    return-wide v0
.end method

.method public static round(F)I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static round(D)J
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static scalb(DI)D
    .locals 20

    move/from16 v0, p2

    const/16 v1, -0x3ff

    const/16 v2, 0x34

    if-le v0, v1, :cond_0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, v0, 0x3ff

    int-to-long v0, v0

    shl-long/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    mul-double v0, v0, p0

    return-wide v0

    .line 2
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_11

    const-wide/16 v3, 0x0

    cmpl-double v1, p0, v3

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 v5, -0x832

    if-ge v0, v5, :cond_3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/high16 v3, -0x8000000000000000L

    :goto_0
    return-wide v3

    :cond_3
    const/16 v5, 0x831

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-le v0, v5, :cond_5

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move-wide v8, v10

    :goto_1
    return-wide v8

    .line 3
    :cond_5
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v12

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v14, v12

    ushr-long v3, v12, v2

    long-to-int v1, v3

    const/16 v3, 0x7ff

    and-int/2addr v1, v3

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v12, v4

    add-int v6, v1, v0

    const/4 v7, 0x1

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    if-gez v0, :cond_a

    if-lez v6, :cond_6

    int-to-long v0, v6

    shl-long/2addr v0, v2

    or-long/2addr v0, v14

    or-long/2addr v0, v12

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_6
    const/16 v0, -0x35

    if-le v6, v0, :cond_8

    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr v0, v12

    neg-int v2, v6

    shl-long v2, v16, v2

    and-long/2addr v2, v0

    sub-int/2addr v7, v6

    ushr-long/2addr v0, v7

    cmp-long v2, v2, v18

    if-eqz v2, :cond_7

    add-long v0, v0, v16

    :cond_7
    or-long/2addr v0, v14

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_8
    cmp-long v0, v14, v18

    if-nez v0, :cond_9

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_9
    const-wide/high16 v3, -0x8000000000000000L

    :goto_2
    return-wide v3

    :cond_a
    if-nez v1, :cond_e

    :goto_3
    ushr-long v0, v12, v2

    cmp-long v0, v0, v16

    if-eqz v0, :cond_b

    shl-long/2addr v12, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_b
    add-int/2addr v6, v7

    and-long v0, v12, v4

    if-ge v6, v3, :cond_c

    int-to-long v3, v6

    shl-long v2, v3, v2

    or-long/2addr v2, v14

    or-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_c
    cmp-long v0, v14, v18

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    move-wide v8, v10

    :goto_4
    return-wide v8

    :cond_e
    if-ge v6, v3, :cond_f

    int-to-long v0, v6

    shl-long/2addr v0, v2

    or-long/2addr v0, v14

    or-long/2addr v0, v12

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_f
    cmp-long v0, v14, v18

    if-nez v0, :cond_10

    goto :goto_5

    :cond_10
    move-wide v8, v10

    :goto_5
    return-wide v8

    :cond_11
    :goto_6
    return-wide p0
.end method

.method public static scalb(FI)F
    .locals 10

    const/16 v0, -0x7f

    if-le p1, v0, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x7f

    shl-int/lit8 p1, p1, 0x17

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 v2, -0x115

    const/high16 v3, -0x80000000

    if-ge p1, v2, :cond_3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    return v0

    :cond_3
    const/16 v2, 0x114

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    if-le p1, v2, :cond_5

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    return v4

    .line 10
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    ushr-int/lit8 v2, p0, 0x17

    const/16 v6, 0xff

    and-int/2addr v2, v6

    const v7, 0x7fffff

    and-int/2addr p0, v7

    add-int v8, v2, p1

    const/4 v9, 0x1

    if-gez p1, :cond_a

    if-lez v8, :cond_6

    shl-int/lit8 p1, v8, 0x17

    or-int/2addr p1, v1

    or-int/2addr p0, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_6
    const/16 p1, -0x18

    if-le v8, p1, :cond_8

    const/high16 p1, 0x800000

    or-int/2addr p0, p1

    neg-int p1, v8

    shl-int p1, v9, p1

    and-int/2addr p1, p0

    sub-int/2addr v9, v8

    ushr-int/2addr p0, v9

    if-eqz p1, :cond_7

    add-int/lit8 p0, p0, 0x1

    :cond_7
    or-int/2addr p0, v1

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_8
    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_2
    return v0

    :cond_a
    if-nez v2, :cond_e

    :goto_3
    ushr-int/lit8 p1, p0, 0x17

    if-eq p1, v9, :cond_b

    shl-int/lit8 p0, p0, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_b
    add-int/2addr v8, v9

    and-int/2addr p0, v7

    if-ge v8, v6, :cond_c

    shl-int/lit8 p1, v8, 0x17

    or-int/2addr p1, v1

    or-int/2addr p0, p1

    .line 13
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_c
    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    move v4, v5

    :goto_4
    return v4

    :cond_e
    if-ge v8, v6, :cond_f

    shl-int/lit8 p1, v8, 0x17

    or-int/2addr p1, v1

    or-int/2addr p0, p1

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_f
    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    move v4, v5

    :goto_5
    return v4

    :cond_11
    :goto_6
    return p0
.end method

.method public static signum(D)D
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static signum(F)F
    .locals 2

    .line 2
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    return p0
.end method

.method public static sin(D)D
    .locals 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    neg-double v5, p0

    move v2, v3

    goto :goto_0

    :cond_0
    move-wide v5, p0

    move v2, v4

    :goto_0
    cmpl-double v7, v5, v0

    if-nez v7, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    return-wide v0

    :cond_2
    cmpl-double p0, v5, v5

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-nez p0, :cond_b

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, v5, p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const-wide p0, 0x414921fb00000000L    # 3294198.0

    cmpl-double p0, v5, p0

    const/4 p1, 0x2

    const/4 v9, 0x3

    if-lez p0, :cond_4

    new-array p0, v9, [D

    invoke-static {v5, v6, p0}, Lorg/apache/commons/math3/util/FastMath;->i(D[D)V

    aget-wide v0, p0, v4

    double-to-int v0, v0

    and-int/lit8 v4, v0, 0x3

    aget-wide v5, p0, v3

    aget-wide v0, p0, p1

    goto :goto_1

    :cond_4
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double p0, v5, v10

    if-lez p0, :cond_5

    new-instance p0, Lorg/apache/commons/math3/util/FastMath$a;

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/math3/util/FastMath$a;-><init>(D)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/FastMath$a;->a()I

    move-result v0

    and-int/lit8 v4, v0, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/FastMath$a;->b()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/FastMath$a;->c()D

    move-result-wide v0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    xor-int/lit8 v4, v4, 0x2

    :cond_6
    if-eqz v4, :cond_a

    if-eq v4, v3, :cond_9

    if-eq v4, p1, :cond_8

    if-eq v4, v9, :cond_7

    return-wide v7

    :cond_7
    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->b(DD)D

    move-result-wide p0

    :goto_2
    neg-double p0, p0

    return-wide p0

    :cond_8
    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->j(DD)D

    move-result-wide p0

    goto :goto_2

    :cond_9
    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->b(DD)D

    move-result-wide p0

    return-wide p0

    :cond_a
    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->j(DD)D

    move-result-wide p0

    return-wide p0

    :cond_b
    :goto_3
    return-wide v7
.end method

.method public static sinh(D)D
    .locals 21

    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-lez v2, :cond_2

    sget-wide v5, Lorg/apache/commons/math3/util/FastMath;->e:D

    cmpl-double v2, v0, v5

    if-ltz v2, :cond_1

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v3, v0

    mul-double/2addr v3, v0

    return-wide v3

    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    :goto_1
    mul-double/2addr v0, v3

    return-wide v0

    :cond_2
    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_4

    sget-wide v2, Lorg/apache/commons/math3/util/FastMath;->e:D

    neg-double v2, v2

    cmpg-double v2, v0, v2

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    if-gtz v2, :cond_3

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    cmpl-double v2, v0, v5

    if-nez v2, :cond_5

    return-wide v0

    :cond_5
    cmpg-double v2, v0, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v2, :cond_6

    neg-double v0, v0

    move v2, v7

    goto :goto_2

    :cond_6
    move v2, v8

    :goto_2
    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    cmpl-double v9, v0, v9

    const/4 v10, 0x2

    const-wide/high16 v11, 0x41d0000000000000L    # 1.073741824E9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-lez v9, :cond_7

    new-array v9, v10, [D

    invoke-static {v0, v1, v5, v6, v9}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    aget-wide v0, v9, v8

    aget-wide v5, v9, v7

    add-double v7, v0, v5

    sub-double v0, v7, v0

    sub-double/2addr v0, v5

    neg-double v0, v0

    mul-double v5, v7, v11

    add-double v9, v7, v5

    sub-double/2addr v9, v5

    sub-double v5, v7, v9

    div-double v15, v13, v7

    mul-double/2addr v11, v15

    add-double v17, v15, v11

    sub-double v11, v17, v11

    sub-double v17, v15, v11

    mul-double v19, v9, v11

    sub-double v13, v13, v19

    mul-double v9, v9, v17

    sub-double/2addr v13, v9

    mul-double v9, v5, v11

    sub-double/2addr v13, v9

    mul-double v5, v5, v17

    sub-double/2addr v13, v5

    mul-double/2addr v13, v15

    add-double v17, v17, v13

    neg-double v5, v0

    mul-double/2addr v5, v15

    mul-double/2addr v5, v15

    add-double v5, v17, v5

    neg-double v9, v11

    neg-double v5, v5

    add-double v11, v7, v9

    sub-double v7, v11, v7

    sub-double/2addr v7, v9

    neg-double v7, v7

    add-double/2addr v0, v7

    add-double v7, v11, v5

    sub-double v9, v7, v11

    sub-double/2addr v9, v5

    neg-double v5, v9

    goto :goto_3

    :cond_7
    new-array v5, v10, [D

    invoke-static {v0, v1, v5}, Lorg/apache/commons/math3/util/FastMath;->e(D[D)D

    aget-wide v0, v5, v8

    aget-wide v5, v5, v7

    add-double v7, v0, v5

    sub-double v0, v7, v0

    sub-double/2addr v0, v5

    neg-double v0, v0

    add-double v5, v7, v13

    div-double v9, v13, v5

    sub-double v13, v5, v13

    sub-double/2addr v13, v7

    neg-double v13, v13

    add-double/2addr v13, v0

    mul-double v15, v7, v9

    mul-double v17, v15, v11

    add-double v19, v15, v17

    sub-double v19, v19, v17

    sub-double v15, v15, v19

    mul-double/2addr v11, v5

    add-double v17, v5, v11

    sub-double v17, v17, v11

    sub-double v5, v5, v17

    mul-double v11, v17, v19

    sub-double v11, v7, v11

    mul-double v17, v17, v15

    sub-double v11, v11, v17

    mul-double v17, v5, v19

    sub-double v11, v11, v17

    mul-double/2addr v5, v15

    sub-double/2addr v11, v5

    mul-double/2addr v11, v9

    add-double/2addr v15, v11

    mul-double v5, v0, v9

    add-double/2addr v15, v5

    neg-double v5, v7

    mul-double/2addr v5, v13

    mul-double/2addr v5, v9

    mul-double/2addr v5, v9

    add-double/2addr v15, v5

    add-double v5, v7, v19

    sub-double v7, v5, v7

    sub-double v7, v7, v19

    neg-double v7, v7

    add-double/2addr v0, v7

    add-double v7, v5, v15

    sub-double v5, v7, v5

    sub-double/2addr v5, v15

    neg-double v5, v5

    :goto_3
    add-double/2addr v0, v5

    add-double/2addr v7, v0

    mul-double/2addr v7, v3

    if-eqz v2, :cond_8

    neg-double v7, v7

    :cond_8
    return-wide v7
.end method

.method public static sqrt(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static subtractExact(II)I
    .locals 2

    sub-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_1

    xor-int v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 6

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    xor-long v2, v0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_SUBTRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static tan(D)D
    .locals 13

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    neg-double v5, p0

    move v2, v3

    goto :goto_0

    :cond_0
    move-wide v5, p0

    move v2, v4

    :goto_0
    cmpl-double v7, v5, v0

    if-nez v7, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    return-wide v0

    :cond_2
    cmpl-double p0, v5, v5

    if-nez p0, :cond_9

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, v5, p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const-wide p0, 0x414921fb00000000L    # 3294198.0

    cmpl-double p0, v5, p0

    const/4 p1, 0x3

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-lez p0, :cond_4

    new-array p0, p1, [D

    invoke-static {v5, v6, p0}, Lorg/apache/commons/math3/util/FastMath;->i(D[D)V

    aget-wide v0, p0, v4

    double-to-int v0, v0

    and-int/2addr p1, v0

    aget-wide v5, p0, v3

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    goto :goto_1

    :cond_4
    cmpl-double p0, v5, v7

    if-lez p0, :cond_5

    new-instance p0, Lorg/apache/commons/math3/util/FastMath$a;

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/math3/util/FastMath$a;-><init>(D)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/FastMath$a;->a()I

    move-result v0

    and-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/FastMath$a;->b()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/FastMath$a;->c()D

    move-result-wide v0

    goto :goto_1

    :cond_5
    move p1, v4

    :goto_1
    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    cmpl-double p0, v5, v9

    if-lez p0, :cond_6

    sub-double v9, v7, v5

    sub-double v7, v9, v7

    add-double/2addr v7, v5

    neg-double v5, v7

    const-wide v7, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double/2addr v7, v0

    add-double/2addr v5, v7

    add-double v0, v9, v5

    sub-double v7, v0, v9

    sub-double/2addr v7, v5

    neg-double v5, v7

    xor-int/lit8 p1, p1, 0x1

    xor-int/lit8 v2, v2, 0x1

    move-wide v11, v0

    move-wide v0, v5

    move-wide v5, v11

    :cond_6
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_7

    invoke-static {v5, v6, v0, v1, v4}, Lorg/apache/commons/math3/util/FastMath;->k(DDZ)D

    move-result-wide p0

    goto :goto_2

    :cond_7
    invoke-static {v5, v6, v0, v1, v3}, Lorg/apache/commons/math3/util/FastMath;->k(DDZ)D

    move-result-wide p0

    neg-double p0, p0

    :goto_2
    if-eqz v2, :cond_8

    neg-double p0, p0

    :cond_8
    return-wide p0

    :cond_9
    :goto_3
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static tanh(D)D
    .locals 19

    move-wide/from16 v0, p0

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_1

    return-wide v3

    :cond_1
    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v2, v0, v5

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-gez v2, :cond_2

    return-wide v5

    :cond_2
    const-wide/16 v7, 0x0

    cmpl-double v2, v0, v7

    if-nez v2, :cond_3

    return-wide v0

    :cond_3
    cmpg-double v2, v0, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gez v2, :cond_4

    neg-double v0, v0

    move v2, v9

    goto :goto_0

    :cond_4
    move v2, v10

    :goto_0
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v11, v0, v11

    const/4 v12, 0x2

    const-wide/high16 v13, 0x41d0000000000000L    # 1.073741824E9

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    if-ltz v11, :cond_5

    new-array v11, v12, [D

    mul-double/2addr v0, v15

    invoke-static {v0, v1, v7, v8, v11}, Lorg/apache/commons/math3/util/FastMath;->d(DD[D)D

    aget-wide v0, v11, v10

    aget-wide v7, v11, v9

    add-double v9, v0, v7

    sub-double v0, v9, v0

    sub-double/2addr v0, v7

    neg-double v0, v0

    add-double/2addr v5, v9

    add-double v7, v5, v3

    sub-double/2addr v7, v9

    neg-double v7, v7

    add-double v11, v5, v0

    sub-double v5, v11, v5

    sub-double/2addr v5, v0

    neg-double v5, v5

    add-double/2addr v7, v5

    add-double v5, v9, v3

    sub-double v3, v5, v3

    sub-double/2addr v3, v9

    neg-double v3, v3

    add-double v9, v5, v0

    sub-double v5, v9, v5

    sub-double/2addr v5, v0

    neg-double v0, v5

    add-double/2addr v3, v0

    mul-double v0, v9, v13

    add-double v5, v9, v0

    sub-double/2addr v5, v0

    sub-double v0, v9, v5

    div-double v15, v11, v9

    mul-double/2addr v13, v15

    add-double v17, v15, v13

    sub-double v17, v17, v13

    sub-double v15, v15, v17

    mul-double v13, v5, v17

    sub-double v13, v11, v13

    mul-double/2addr v5, v15

    sub-double/2addr v13, v5

    mul-double v5, v0, v17

    sub-double/2addr v13, v5

    mul-double/2addr v0, v15

    sub-double/2addr v13, v0

    div-double/2addr v13, v9

    add-double/2addr v15, v13

    div-double/2addr v7, v9

    add-double/2addr v15, v7

    neg-double v0, v3

    mul-double/2addr v0, v11

    goto :goto_1

    :cond_5
    new-array v3, v12, [D

    mul-double/2addr v0, v15

    invoke-static {v0, v1, v3}, Lorg/apache/commons/math3/util/FastMath;->e(D[D)D

    aget-wide v0, v3, v10

    aget-wide v3, v3, v9

    add-double v5, v0, v3

    sub-double v0, v5, v0

    sub-double/2addr v0, v3

    neg-double v0, v0

    add-double v3, v5, v15

    sub-double v7, v3, v15

    sub-double/2addr v7, v5

    neg-double v7, v7

    add-double v9, v3, v0

    sub-double v3, v9, v3

    sub-double/2addr v3, v0

    neg-double v3, v3

    add-double/2addr v7, v3

    mul-double v3, v9, v13

    add-double v11, v9, v3

    sub-double/2addr v11, v3

    sub-double v3, v9, v11

    div-double v15, v5, v9

    mul-double/2addr v13, v15

    add-double v17, v15, v13

    sub-double v17, v17, v13

    sub-double v15, v15, v17

    mul-double v13, v11, v17

    sub-double v13, v5, v13

    mul-double/2addr v11, v15

    sub-double/2addr v13, v11

    mul-double v11, v3, v17

    sub-double/2addr v13, v11

    mul-double/2addr v3, v15

    sub-double/2addr v13, v3

    div-double/2addr v13, v9

    add-double/2addr v15, v13

    div-double/2addr v0, v9

    add-double/2addr v15, v0

    neg-double v0, v7

    mul-double/2addr v0, v5

    :goto_1
    div-double/2addr v0, v9

    div-double/2addr v0, v9

    add-double/2addr v15, v0

    add-double v17, v17, v15

    move-wide/from16 v0, v17

    if-eqz v2, :cond_6

    neg-double v0, v0

    :cond_6
    return-wide v0
.end method

.method public static toDegrees(D)D
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->c(D)D

    move-result-wide v0

    sub-double/2addr p0, v0

    const-wide v2, 0x3eca63c1f7b86153L    # 3.145894820876798E-6

    mul-double v4, p0, v2

    const-wide v6, 0x404ca5dc00000000L    # 57.2957763671875

    mul-double/2addr p0, v6

    add-double/2addr v4, p0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    return-wide v4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static toIntExact(J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static toRadians(D)D
    .locals 12

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->c(D)D

    move-result-wide v2

    sub-double v4, p0, v2

    const-wide v6, 0x3e21294e9c8ae0ecL    # 1.997844754509471E-9

    mul-double v8, v4, v6

    const-wide v10, 0x3f91df4680000000L    # 0.01745329052209854

    mul-double/2addr v4, v10

    add-double/2addr v8, v4

    mul-double/2addr v6, v2

    add-double/2addr v8, v6

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    cmpl-double v0, v8, v0

    if-nez v0, :cond_1

    mul-double/2addr v8, p0

    :cond_1
    return-wide v8

    :cond_2
    :goto_0
    return-wide p0
.end method

.method public static ulp(D)D
    .locals 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static ulp(F)F
    .locals 1

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float/2addr p0, v0

    invoke-static {p0}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result p0

    return p0
.end method
