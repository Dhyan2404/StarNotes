.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final A:D = 0.3341791187130175

.field public static final B:D = 0.08192320648511571

.field public static final C:D = -0.022355307863886294

.field public static final D:D = -0.18980075407240762

.field public static final E:D = 4.450312892752409

.field public static final F:D = 1.8915178993145003

.field public static final G:D = -5.801203960010585

.field public static final H:D = -0.42268232132379197

.field public static final I:D = -0.1521609496625161

.field public static final J:D = 0.20136540080403034

.field public static final K:D = 0.022651792198360825

.field public static final r:Ljava/lang/String; = "Dormand-Prince 8 (5, 3)"

.field public static final s:[D

.field public static final t:[[D

.field public static final u:[D

.field public static final v:D = 0.01312004499419488

.field public static final w:D = -1.2251564463762044

.field public static final x:D = -0.4957589496572502

.field public static final y:D = 1.6643771824549864

.field public static final z:D = -0.35032884874997366


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const/16 v0, 0xc

    new-array v1, v0, [D

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    sub-double v4, v8, v4

    const-wide v10, 0x4060e00000000000L    # 135.0

    div-double/2addr v4, v10

    const/4 v12, 0x0

    aput-wide v4, v1, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v2, v4

    const-wide v13, 0x4046800000000000L    # 45.0

    div-double/2addr v4, v13

    const/4 v13, 0x1

    aput-wide v4, v1, v13

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v2, v4

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v4, v14

    const/4 v12, 0x2

    aput-wide v4, v1, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    div-double/2addr v4, v14

    const/4 v14, 0x3

    aput-wide v4, v1, v14

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    const/4 v15, 0x4

    aput-wide v4, v1, v15

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    const/4 v15, 0x5

    aput-wide v4, v1, v15

    const-wide v4, 0x3fd3b13b13b13b14L    # 0.3076923076923077

    const/4 v15, 0x6

    aput-wide v4, v1, v15

    const-wide v4, 0x3fe4d74d74d74d75L    # 0.6512820512820513

    const/4 v15, 0x7

    aput-wide v4, v1, v15

    const-wide v4, 0x3fe3333333333333L    # 0.6

    const/16 v15, 0x8

    aput-wide v4, v1, v15

    const-wide v4, 0x3feb6db6db6db6dbL    # 0.8571428571428571

    const/16 v15, 0x9

    aput-wide v4, v1, v15

    const/16 v4, 0xa

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    aput-wide v16, v1, v4

    const/16 v5, 0xb

    aput-wide v16, v1, v5

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->s:[D

    new-array v1, v0, [[D

    new-array v0, v13, [D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v6

    sub-double v8, v8, v17

    div-double/2addr v8, v10

    const/4 v6, 0x0

    aput-wide v8, v0, v6

    aput-object v0, v1, v6

    new-array v0, v12, [D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double v7, v2, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    aput-wide v7, v0, v6

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v6, v2, v6

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    aput-wide v6, v0, v13

    aput-object v0, v1, v13

    new-array v0, v14, [D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    sub-double v6, v2, v6

    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aput-wide v6, v0, v8

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v13

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    sub-double v8, v2, v8

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    div-double/2addr v8, v10

    aput-wide v8, v0, v12

    aput-object v0, v1, v12

    const/4 v0, 0x4

    new-array v8, v0, [D

    const-wide v9, 0x405ac00000000000L    # 107.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, 0x407ce00000000000L    # 462.0

    add-double v17, v17, v9

    const-wide v9, 0x40a7700000000000L    # 3000.0

    div-double v17, v17, v9

    const/4 v0, 0x0

    aput-wide v17, v8, v0

    aput-wide v6, v8, v13

    const-wide v9, 0x4068a00000000000L    # 197.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, -0x3f86e00000000000L    # -402.0

    sub-double v9, v9, v17

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v17

    aput-wide v9, v8, v12

    const-wide v9, 0x4052400000000000L    # 73.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide/high16 v9, 0x4065000000000000L    # 168.0

    add-double v17, v17, v9

    const-wide v9, 0x4077700000000000L    # 375.0

    div-double v17, v17, v9

    aput-wide v17, v8, v14

    aput-object v8, v1, v14

    const/4 v0, 0x5

    new-array v8, v0, [D

    const-wide v9, 0x3fa2f684bda12f68L    # 0.037037037037037035

    const/4 v0, 0x0

    aput-wide v9, v8, v0

    aput-wide v6, v8, v13

    aput-wide v6, v8, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    const-wide/high16 v17, 0x4030000000000000L    # 16.0

    add-double v9, v9, v17

    const-wide/high16 v19, 0x405b000000000000L    # 108.0

    div-double v9, v9, v19

    aput-wide v9, v8, v14

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    sub-double v17, v17, v9

    div-double v17, v17, v19

    const/4 v0, 0x4

    aput-wide v17, v8, v0

    aput-object v8, v1, v0

    const/4 v0, 0x6

    new-array v8, v0, [D

    const-wide/high16 v9, 0x3fa3000000000000L    # 0.037109375

    const/4 v0, 0x0

    aput-wide v9, v8, v0

    aput-wide v6, v8, v13

    aput-wide v6, v8, v12

    const-wide/high16 v9, 0x4037000000000000L    # 23.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, 0x405d800000000000L    # 118.0

    add-double v17, v17, v9

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double v17, v17, v9

    aput-wide v17, v8, v14

    const-wide/high16 v9, 0x4037000000000000L    # 23.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, 0x405d800000000000L    # 118.0

    sub-double v9, v9, v17

    const-wide/high16 v17, 0x4090000000000000L    # 1024.0

    div-double v9, v9, v17

    const/4 v0, 0x4

    aput-wide v9, v8, v0

    const-wide/high16 v9, -0x406e000000000000L    # -0.017578125

    const/4 v0, 0x5

    aput-wide v9, v8, v0

    aput-object v8, v1, v0

    const/4 v0, 0x7

    new-array v8, v0, [D

    const-wide v9, 0x3fa2fdb8fee78792L    # 0.03709200011850479

    const/4 v0, 0x0

    aput-wide v9, v8, v0

    aput-wide v6, v8, v13

    aput-wide v6, v8, v12

    const-wide v9, 0x40b2b00000000000L    # 4784.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, 0x40e92b0000000000L    # 51544.0

    add-double v17, v17, v9

    const-wide v9, 0x4116a97400000000L    # 371293.0

    div-double v17, v17, v9

    aput-wide v17, v8, v14

    const-wide v9, 0x40b2b00000000000L    # 4784.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, 0x40e92b0000000000L    # 51544.0

    sub-double v9, v9, v17

    const-wide v17, 0x4116a97400000000L    # 371293.0

    div-double v9, v9, v17

    const/4 v0, 0x4

    aput-wide v9, v8, v0

    const-wide v9, -0x4070a033df032cd1L    # -0.015319437748624402

    const/4 v0, 0x5

    aput-wide v9, v8, v0

    const-wide v9, 0x3f80f1d92efb0b71L    # 0.008273789163814023

    const/4 v0, 0x6

    aput-wide v9, v8, v0

    aput-object v8, v1, v0

    const/16 v0, 0x8

    new-array v8, v0, [D

    const-wide v9, 0x3fe3f8b78b985813L    # 0.6241109587160757

    const/4 v0, 0x0

    aput-wide v9, v8, v0

    aput-wide v6, v8, v13

    aput-wide v6, v8, v12

    const-wide v9, 0x42528e82fff4c000L    # 3.18801444819E11

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, -0x3d8cb866b2b38000L    # -1.324889724104E12

    sub-double v9, v9, v17

    const-wide v17, 0x42623c3684a38000L    # 6.265569375E11

    div-double v9, v9, v17

    aput-wide v9, v8, v14

    const-wide v9, 0x42528e82fff4c000L    # 3.18801444819E11

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    const-wide v9, -0x3d8cb866b2b38000L    # -1.324889724104E12

    add-double v17, v17, v9

    const-wide v9, 0x42623c3684a38000L    # 6.265569375E11

    div-double v17, v17, v9

    const/4 v0, 0x4

    aput-wide v17, v8, v0

    const-wide v9, 0x403b9793d88d1855L    # 27.59209969944671

    const/4 v0, 0x5

    aput-wide v9, v8, v0

    const-wide v9, 0x40342770f892ad69L    # 20.154067550477894

    const/4 v0, 0x6

    aput-wide v9, v8, v0

    const-wide v9, -0x3fba414b79a3bd07L    # -43.48988418106996

    const/4 v0, 0x7

    aput-wide v9, v8, v0

    aput-object v8, v1, v0

    new-array v0, v15, [D

    const-wide v8, 0x3fde9205e321b655L    # 0.47766253643826434

    const/4 v10, 0x0

    aput-wide v8, v0, v10

    aput-wide v6, v0, v13

    aput-wide v6, v0, v12

    const-wide v8, 0x41315d2b00000000L    # 1137963.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    const-wide v8, -0x3eaec09000000000L    # -4521408.0

    sub-double/2addr v8, v10

    const-wide v10, 0x4146694e00000000L    # 2937500.0

    div-double/2addr v8, v10

    aput-wide v8, v0, v14

    const-wide v8, 0x41315d2b00000000L    # 1137963.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    const-wide v8, -0x3eaec09000000000L    # -4521408.0

    add-double/2addr v10, v8

    const-wide v8, 0x4146694e00000000L    # 2937500.0

    div-double/2addr v10, v8

    const/4 v8, 0x4

    aput-wide v10, v0, v8

    const-wide v8, 0x40353ae4a6d655eeL    # 21.230051448181193

    const/4 v10, 0x5

    aput-wide v8, v0, v10

    const-wide v8, 0x402e8ef7b5f258b8L    # 15.279233632882423

    const/4 v10, 0x6

    aput-wide v8, v0, v10

    const-wide v8, -0x3fbf5b1be728ee47L    # -33.28821096898486

    const/4 v10, 0x7

    aput-wide v8, v0, v10

    const-wide v8, -0x406b2e4c264b578aL    # -0.020331201708508627

    const/16 v10, 0x8

    aput-wide v8, v0, v10

    aput-object v0, v1, v10

    new-array v0, v4, [D

    const-wide v8, -0x401202ede0e2c665L    # -0.9371424300859873

    const/4 v10, 0x0

    aput-wide v8, v0, v10

    aput-wide v6, v0, v13

    aput-wide v6, v0, v12

    const-wide v8, 0x40f7076000000000L    # 94326.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    const-wide v8, 0x41159ea000000000L    # 354216.0

    add-double/2addr v10, v8

    const-wide v8, 0x40fb8cf000000000L    # 112847.0

    div-double/2addr v10, v8

    aput-wide v10, v0, v14

    const-wide v8, 0x40f7076000000000L    # 94326.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    const-wide v8, 0x41159ea000000000L    # 354216.0

    sub-double/2addr v8, v10

    const-wide v10, 0x40fb8cf000000000L    # 112847.0

    div-double/2addr v8, v10

    const/4 v10, 0x4

    aput-wide v8, v0, v10

    const-wide v8, -0x3fdfb34f1deef3e4L    # -8.149787010746927

    const/4 v10, 0x5

    aput-wide v8, v0, v10

    const-wide v8, -0x3fcd7adcfa168a58L    # -18.52006565999696

    const/4 v10, 0x6

    aput-wide v8, v0, v10

    const-wide v8, 0x4036bd4f06cb863aL    # 22.739487099350505

    const/4 v10, 0x7

    aput-wide v8, v0, v10

    const-wide v8, 0x4003f2e777cf109dL    # 2.4936055526796523

    const/16 v10, 0x8

    aput-wide v8, v0, v10

    const-wide v8, -0x3ff7a039f2d4a8d4L    # -3.0467644718982196

    aput-wide v8, v0, v15

    aput-object v0, v1, v15

    new-array v0, v5, [D

    const-wide v8, 0x40022fbd3b09fcdcL    # 2.273310147516538

    const/4 v10, 0x0

    aput-wide v8, v0, v10

    aput-wide v6, v0, v13

    aput-wide v6, v0, v12

    const-wide v6, 0x412d531200000000L    # 960905.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    const-wide v6, -0x3eb59f1c00000000L    # -3457480.0

    sub-double/2addr v6, v8

    const-wide v8, 0x4120d5a800000000L    # 551636.0

    div-double/2addr v6, v8

    aput-wide v6, v0, v14

    const-wide v6, 0x412d531200000000L    # 960905.0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    const-wide v6, -0x3eb59f1c00000000L    # -3457480.0

    add-double/2addr v2, v6

    const-wide v6, 0x4120d5a800000000L    # 551636.0

    div-double/2addr v2, v6

    const/4 v6, 0x4

    aput-wide v2, v0, v6

    const-wide v2, -0x3fce0a837100cffaL    # -17.9589318631188

    const/4 v6, 0x5

    aput-wide v2, v0, v6

    const-wide v2, 0x403bf2ea18b58a01L    # 27.94888452941996

    const/4 v6, 0x6

    aput-wide v2, v0, v6

    const-wide v2, -0x3ff920c582e313edL    # -2.8589982771350235

    const/4 v6, 0x7

    aput-wide v2, v0, v6

    const-wide v2, -0x3fde4118e560cc57L    # -8.87285693353063

    const/16 v6, 0x8

    aput-wide v2, v0, v6

    const-wide v2, 0x4028b89c42c81861L    # 12.360567175794303

    aput-wide v2, v0, v15

    const-wide v2, 0x3fe496ac6253e202L    # 0.6433927460157636

    aput-wide v2, v0, v4

    aput-object v0, v1, v4

    const/16 v0, 0xc

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->t:[[D

    const/16 v0, 0xd

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->u:[D

    return-void

    :array_0
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
    .end array-data

    :array_1
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    const-string v1, "Dormand-Prince 8 (5, 3)"

    const/4 v2, 0x1

    .line 1
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->s:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->t:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->u:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    move-object v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 13

    const-string v1, "Dormand-Prince 8 (5, 3)"

    const/4 v2, 0x1

    .line 2
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->s:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->t:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->u:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    return-void
.end method


# virtual methods
.method public estimateError([[D[D[DD)D
    .locals 29

    move-object/from16 v0, p0

    const/4 v3, 0x0

    move v4, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    :goto_0
    iget v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v4, v9, :cond_1

    aget-object v9, p1, v3

    aget-wide v9, v9, v4

    const-wide v11, 0x3f8adeaea1607e1aL    # 0.01312004499419488

    mul-double/2addr v11, v9

    const/4 v13, 0x5

    aget-object v13, p1, v13

    aget-wide v13, v13, v4

    const-wide v15, -0x400c65c25aa54a3dL    # -1.2251564463762044

    mul-double/2addr v15, v13

    add-double/2addr v11, v15

    const/4 v15, 0x6

    aget-object v15, p1, v15

    aget-wide v15, v15, v4

    const-wide v17, -0x4020457c4121758eL    # -0.4957589496572502

    mul-double v17, v17, v15

    add-double v11, v11, v17

    const/16 v17, 0x7

    aget-object v17, p1, v17

    aget-wide v17, v17, v4

    const-wide v19, 0x3ffaa149f7eda509L    # 1.6643771824549864

    mul-double v19, v19, v17

    add-double v11, v11, v19

    const/16 v19, 0x8

    aget-object v19, p1, v19

    aget-wide v19, v19, v4

    const-wide v21, -0x402994364ef1818fL    # -0.35032884874997366

    mul-double v21, v21, v19

    add-double v11, v11, v21

    const/16 v21, 0x9

    aget-object v21, p1, v21

    aget-wide v21, v21, v4

    const-wide v23, 0x3fd56330d0783989L    # 0.3341791187130175

    mul-double v23, v23, v21

    add-double v11, v11, v23

    const/16 v23, 0xa

    aget-object v23, p1, v23

    aget-wide v23, v23, v4

    const-wide v25, 0x3fb4f8eb54a31435L    # 0.08192320648511571

    mul-double v25, v25, v23

    add-double v11, v11, v25

    const/16 v25, 0xb

    aget-object v25, p1, v25

    aget-wide v25, v25, v4

    const-wide v27, -0x40691bb0af54943eL    # -0.022355307863886294

    mul-double v27, v27, v25

    add-double v11, v11, v27

    const-wide v27, -0x4037b49be0405e0fL    # -0.18980075407240762

    mul-double v9, v9, v27

    const-wide v27, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    mul-double v13, v13, v27

    add-double/2addr v9, v13

    const-wide v13, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    mul-double/2addr v15, v13

    add-double/2addr v9, v15

    const-wide v13, -0x3fe8cb91306950bdL    # -5.801203960010585

    mul-double v17, v17, v13

    add-double v9, v9, v17

    const-wide v13, -0x4024f2c5d95448e9L    # -0.42268232132379197

    mul-double v19, v19, v13

    add-double v9, v9, v19

    const-wide v13, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    mul-double v21, v21, v13

    add-double v9, v9, v21

    const-wide v13, 0x3fc9c657697fe72dL    # 0.20136540080403034

    mul-double v23, v23, v13

    add-double v9, v9, v23

    const-wide v13, 0x3f9732080ac040eeL    # 0.022651792198360825

    mul-double v25, v25, v13

    add-double v9, v9, v25

    aget-wide v13, p2, v4

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v15, p3, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v13, :cond_0

    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    move/from16 v16, v4

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v3, v1

    add-double/2addr v13, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v4

    aget-wide v3, v13, v16

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v13, v13, v16

    mul-double/2addr v13, v1

    add-double/2addr v13, v3

    :goto_1
    div-double/2addr v11, v13

    mul-double/2addr v11, v11

    add-double/2addr v5, v11

    div-double/2addr v9, v13

    mul-double/2addr v9, v9

    add-double/2addr v7, v9

    add-int/lit8 v4, v16, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v1

    add-double/2addr v7, v5

    const-wide/16 v1, 0x0

    cmpg-double v1, v7, v1

    if-gtz v1, :cond_2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :cond_2
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    int-to-double v3, v0

    mul-double/2addr v3, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getOrder()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method
