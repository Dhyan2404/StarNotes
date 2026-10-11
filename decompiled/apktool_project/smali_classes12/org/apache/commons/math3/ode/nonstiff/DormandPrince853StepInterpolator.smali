.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final B_01:D = 0.054293734116568765

.field private static final B_06:D = 4.450312892752409

.field private static final B_07:D = 1.8915178993145003

.field private static final B_08:D = -5.801203960010585

.field private static final B_09:D = 0.3111643669578199

.field private static final B_10:D = -0.1521609496625161

.field private static final B_11:D = 0.20136540080403034

.field private static final B_12:D = 0.04471061572777259

.field private static final C14:D = 0.1

.field private static final C15:D = 0.2

.field private static final C16:D = 0.7777777777777778

.field private static final D:[[D

.field private static final K14_01:D = 0.0018737681664791894

.field private static final K14_06:D = -4.450312892752409

.field private static final K14_07:D = -1.6380176890978755

.field private static final K14_08:D = 5.554964922539782

.field private static final K14_09:D = -0.4353557902216363

.field private static final K14_10:D = 0.30545274794128174

.field private static final K14_11:D = -0.19316434850839564

.field private static final K14_12:D = -0.03714271806722689

.field private static final K14_13:D = -0.008298

.field private static final K15_01:D = -0.022459085953066622

.field private static final K15_06:D = -4.422011983080043

.field private static final K15_07:D = -1.8379759110070617

.field private static final K15_08:D = 5.746280211439194

.field private static final K15_09:D = -0.3111643669578199

.field private static final K15_10:D = 0.1521609496625161

.field private static final K15_11:D = -0.2014737481327276

.field private static final K15_12:D = -0.04432804463693693

.field private static final K15_13:D = -3.4046500868740456E-4

.field private static final K15_14:D = 0.1413124436746325

.field private static final K16_01:D = -0.4831900357003607

.field private static final K16_06:D = -9.147934308113573

.field private static final K16_07:D = 5.791903296748099

.field private static final K16_08:D = 9.870193778407696

.field private static final K16_09:D = 0.04556282049746119

.field private static final K16_10:D = 0.1521609496625161

.field private static final K16_11:D = -0.20136540080403034

.field private static final K16_12:D = -0.04471061572777259

.field private static final K16_13:D = -0.0013990241651590145

.field private static final K16_14:D = 2.9475147891527724

.field private static final K16_15:D = -9.15095847217987

.field private static final serialVersionUID:J = 0x132df10L


# instance fields
.field private v:[[D

.field private vectorsInitialized:Z

.field private yDotKLast:[[D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[D

    const/16 v1, 0xc

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v1, v1, [D

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    return-void

    :array_0
    .array-data 8
        -0x3fdf246233c837e5L    # -8.428938276109013
        0x3fe2228765f0a2ebL    # 0.5667149535193777
        -0x3ff772ca5ee8ac8aL    # -3.0689499459498917
        0x400313cca2e462ecL    # 2.38466765651207
        0x4000efafd3c0d1beL    # 2.1170345824450285
        -0x40141d8f65b53f2dL    # -0.871391583777973
        0x4001ec6a759da28bL    # 2.2404374302607883
        0x3fe435e4b2f53319L    # 0.6315787787694688
        -0x404937ede7480f84L    # -0.08899033645133331
        0x40322604753358b4L    # 18.148505520854727
        -0x3fdd9c59249f205fL    # -9.194632392478356
        -0x3fee417fad5da7e3L    # -4.436036387594894
    .end array-data

    :array_1
    .array-data 8
        0x4024dae269ad44fcL    # 10.427508642579134
        0x406e49125d57ed67L    # 242.28349177525817
        0x4064a66a19b8434bL    # 165.20045171727028
        -0x3f8897407e1eb1cbL    # -374.5467547226902
        -0x3fc9e2e6baa73006L    # -22.113666853125302
        0x401eef08f933a023L    # 7.733432668472264
        -0x3fc1536f2edd3cf3L    # -30.674084731089398
        -0x3fdd55f2fcd5f533L    # -9.332130526430229
        0x402f64fc65250f7cL    # 15.697238121770845
        -0x3fc0dc50121302adL    # -31.139403219565178
        -0x3fdd4b4d7f999a36L    # -9.35292435884448
        0x4041e88e43070a10L    # 35.81684148639408
    .end array-data

    :array_2
    .array-data 8
        0x4033fc2c7303381fL    # 19.985053242002433
        -0x3f87cf672ef0dadfL    # -387.0373087493518
        -0x3f985a4cb120b2c7L    # -189.17813819516758
        0x40807e771c2c6a0cL    # 527.8081592054236
        -0x3fd8da29723f9069L    # -11.573902539959631
        0x401b8661dd0f8bd7L    # 6.8812326946963
        -0x400ffd8582980398L    # -1.0006050966910838
        0x3fe8e308023d3331L    # 0.7777137798053443
        -0x3ff9c63c1000a92eL    # -2.778205752353508
        -0x3fb1e6d2b0cf3881L    # -60.19669523126412
        0x40551481861928c0L    # 84.32040550667716
        0x4027fc0d95740812L    # 11.99229113618279
    .end array-data

    :array_3
    .array-data 8
        -0x3fc64e5a6068165dL    # -25.69393346270375
        -0x3f9cb9ed94279f39L    # -154.18974869023643
        -0x3f930f0f5366f670L    # -231.5293791760455
        0x40765a39d3b3c602L    # 357.6391179106141
        0x405759f0d4d83c6fL    # 93.4053241836243
        -0x3fbd4555aadef855L    # -37.45832313645163
        0x405a0660a855838eL    # 104.0996495089623
        0x403dd71d78528cf6L    # 29.8402934266605
        -0x3fba3bb7b1c80882L    # -43.53345659001114
        0x405814c57df82010L    # 96.32455395918828
        -0x3fbc694f7d4a32e2L    # -39.17726167561544
        -0x3f9d48bdc1e34cf3L    # -149.72683625798564
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;)V
    .locals 5

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 6
    iget-object v0, p1, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    .line 9
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    goto :goto_2

    .line 10
    :cond_0
    array-length v0, v0

    const/4 v2, 0x3

    new-array v2, v2, [[D

    .line 11
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 13
    new-array v4, v0, [D

    aput-object v4, v3, v2

    .line 14
    iget-object v3, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v3, v3, v2

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [[D

    .line 15
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move v2, v1

    .line 16
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 17
    new-array v4, v0, [D

    aput-object v4, v3, v2

    .line 18
    iget-object v3, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v3, v3, v2

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_2
    iget-boolean p1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    const/4 v9, 0x7

    if-nez v1, :cond_0

    new-array v1, v9, [[D

    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move v1, v8

    :goto_0
    if-ge v1, v9, :cond_0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    iget-object v11, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v11, v11

    new-array v11, v11, [D

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V

    move v1, v8

    :goto_1
    iget-object v10, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v10, v10

    if-ge v1, v10, :cond_2

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v11, v10, v8

    aget-wide v11, v11, v1

    aget-object v13, v10, v4

    aget-wide v13, v13, v1

    aget-object v15, v10, v3

    aget-wide v15, v15, v1

    aget-object v17, v10, v9

    aget-wide v17, v17, v1

    const/16 v19, 0x8

    aget-object v20, v10, v19

    aget-wide v20, v20, v1

    const/16 v22, 0x9

    aget-object v23, v10, v22

    aget-wide v23, v23, v1

    const/16 v25, 0xa

    aget-object v26, v10, v25

    aget-wide v26, v26, v1

    const/16 v28, 0xb

    aget-object v29, v10, v28

    aget-wide v29, v29, v1

    const/16 v31, 0xc

    aget-object v10, v10, v31

    aget-wide v31, v10, v1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v34, v9, v8

    aget-wide v34, v34, v1

    aget-object v36, v9, v7

    aget-wide v36, v36, v1

    aget-object v9, v9, v6

    aget-wide v38, v9, v1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v40, v9, v8

    const-wide v41, 0x3fabcc6368d1177cL    # 0.054293734116568765

    mul-double v41, v41, v11

    const-wide v43, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    mul-double v43, v43, v13

    add-double v41, v41, v43

    const-wide v43, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    mul-double v43, v43, v15

    add-double v41, v41, v43

    const-wide v43, -0x3fe8cb91306950bdL    # -5.801203960010585

    mul-double v43, v43, v17

    add-double v41, v41, v43

    const-wide v43, 0x3fd3ea1df2f0eb98L    # 0.3111643669578199

    mul-double v43, v43, v20

    add-double v41, v41, v43

    const-wide v43, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    mul-double v43, v43, v23

    add-double v41, v41, v43

    const-wide v43, 0x3fc9c657697fe72dL    # 0.20136540080403034

    mul-double v43, v43, v26

    add-double v41, v41, v43

    const-wide v43, 0x3fa6e44f50ab6bc2L    # 0.04471061572777259

    mul-double v43, v43, v29

    add-double v41, v41, v43

    aput-wide v41, v40, v1

    aget-object v43, v9, v7

    sub-double v41, v11, v41

    aput-wide v41, v43, v1

    aget-object v9, v9, v6

    aget-wide v43, v40, v1

    sub-double v43, v43, v41

    aget-wide v40, v10, v1

    sub-double v43, v43, v40

    aput-wide v43, v9, v1

    move v9, v8

    :goto_2
    sget-object v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->D:[[D

    array-length v3, v10

    if-ge v9, v3, :cond_1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    add-int/lit8 v41, v9, 0x3

    aget-object v3, v3, v41

    aget-object v10, v10, v9

    aget-wide v41, v10, v8

    mul-double v41, v41, v11

    aget-wide v43, v10, v7

    mul-double v43, v43, v13

    add-double v41, v41, v43

    aget-wide v43, v10, v6

    mul-double v43, v43, v15

    add-double v41, v41, v43

    aget-wide v43, v10, v5

    mul-double v43, v43, v17

    add-double v41, v41, v43

    aget-wide v43, v10, v2

    mul-double v43, v43, v20

    add-double v41, v41, v43

    aget-wide v43, v10, v4

    mul-double v43, v43, v23

    add-double v41, v41, v43

    const/16 v40, 0x6

    aget-wide v43, v10, v40

    mul-double v43, v43, v26

    add-double v41, v41, v43

    const/16 v33, 0x7

    aget-wide v43, v10, v33

    mul-double v43, v43, v29

    add-double v41, v41, v43

    aget-wide v43, v10, v19

    mul-double v43, v43, v31

    add-double v41, v41, v43

    aget-wide v43, v10, v22

    mul-double v43, v43, v34

    add-double v41, v41, v43

    aget-wide v43, v10, v25

    mul-double v43, v43, v36

    add-double v41, v41, v43

    aget-wide v43, v10, v28

    mul-double v43, v43, v38

    add-double v41, v41, v43

    aput-wide v41, v3, v1

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x6

    goto :goto_2

    :cond_1
    const/16 v33, 0x7

    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v33

    const/4 v3, 0x6

    goto/16 :goto_1

    :cond_2
    iput-boolean v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    :cond_3
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, p1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v15, p1, v13

    mul-double v17, p1, p1

    sub-double v19, v9, v15

    const-wide/high16 v21, 0x4008000000000000L    # 3.0

    mul-double v23, p1, v21

    sub-double v13, v13, v23

    mul-double v13, v13, p1

    sub-double v23, v15, v21

    mul-double v23, v23, p1

    add-double v23, v23, v9

    mul-double v15, v15, v23

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    mul-double v9, v9, p1

    const-wide/high16 v23, 0x4020000000000000L    # 8.0

    sub-double v9, v9, v23

    mul-double v9, v9, p1

    add-double v9, v9, v21

    mul-double v9, v9, v17

    const-wide/high16 v23, 0x4018000000000000L    # 6.0

    mul-double v23, v23, p1

    const-wide/high16 v25, 0x402e000000000000L    # 15.0

    sub-double v25, v25, v23

    mul-double v23, p1, v25

    const-wide/high16 v25, -0x3fd8000000000000L    # -12.0

    add-double v23, v23, v25

    mul-double v23, v23, p1

    add-double v23, v23, v21

    mul-double v23, v23, v17

    mul-double v17, v17, p1

    const-wide/high16 v21, 0x401c000000000000L    # 7.0

    mul-double v21, v21, p1

    const-wide/high16 v25, 0x4032000000000000L    # 18.0

    sub-double v25, v25, v21

    mul-double v21, p1, v25

    const-wide/high16 v25, -0x3fd2000000000000L    # -15.0

    add-double v21, v21, v25

    mul-double v21, v21, p1

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    add-double v21, v21, v25

    mul-double v17, v17, v21

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    if-eqz v1, :cond_4

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v21

    if-gtz v1, :cond_4

    move v1, v8

    :goto_3
    iget-object v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v25, v4, v1

    move-object/from16 v22, v3

    iget-wide v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v2, v2, p1

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v27, v4, v8

    aget-wide v28, v27, v1

    aget-object v30, v4, v7

    aget-wide v31, v30, v1

    aget-object v33, v4, v6

    aget-wide v34, v33, v1

    aget-object v36, v4, v5

    aget-wide v37, v36, v1

    const/16 v39, 0x4

    aget-object v41, v4, v39

    aget-wide v42, v41, v1

    const/16 v21, 0x5

    aget-object v44, v4, v21

    aget-wide v45, v44, v1

    const/16 v40, 0x6

    aget-object v4, v4, v40

    aget-wide v47, v4, v1

    mul-double v47, v47, p1

    add-double v45, v45, v47

    mul-double v45, v45, v11

    add-double v42, v42, v45

    mul-double v42, v42, p1

    add-double v37, v37, v42

    mul-double v37, v37, v11

    add-double v34, v34, v37

    mul-double v34, v34, p1

    add-double v31, v31, v34

    mul-double v31, v31, v11

    add-double v28, v28, v31

    mul-double v2, v2, v28

    add-double v25, v25, v2

    aput-wide v25, v22, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v25, v27, v1

    aget-wide v27, v30, v1

    mul-double v27, v27, v19

    add-double v25, v25, v27

    aget-wide v27, v33, v1

    mul-double v27, v27, v13

    add-double v25, v25, v27

    aget-wide v27, v36, v1

    mul-double v27, v27, v15

    add-double v25, v25, v27

    aget-wide v27, v41, v1

    mul-double v27, v27, v9

    add-double v25, v25, v27

    aget-wide v27, v44, v1

    mul-double v27, v27, v23

    add-double v25, v25, v27

    aget-wide v3, v4, v1

    mul-double v3, v3, v17

    add-double v25, v25, v3

    aput-wide v25, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x5

    goto :goto_3

    :cond_4
    move v1, v8

    :goto_4
    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v3, v2

    if-ge v1, v3, :cond_5

    iget-object v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v3, v3, v1

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    aget-object v25, v5, v8

    aget-wide v26, v25, v1

    aget-object v28, v5, v7

    aget-wide v29, v28, v1

    aget-object v31, v5, v6

    aget-wide v32, v31, v1

    const/16 v22, 0x3

    aget-object v34, v5, v22

    aget-wide v35, v34, v1

    const/16 v37, 0x4

    aget-object v38, v5, v37

    aget-wide v41, v38, v1

    const/16 v21, 0x5

    aget-object v39, v5, v21

    aget-wide v43, v39, v1

    const/16 v40, 0x6

    aget-object v5, v5, v40

    aget-wide v45, v5, v1

    mul-double v45, v45, p1

    add-double v43, v43, v45

    mul-double v43, v43, v11

    add-double v41, v41, v43

    mul-double v41, v41, p1

    add-double v35, v35, v41

    mul-double v35, v35, v11

    add-double v32, v32, v35

    mul-double v32, v32, p1

    add-double v29, v29, v32

    mul-double v29, v29, p1

    sub-double v26, v26, v29

    mul-double v26, v26, p3

    sub-double v3, v3, v26

    aput-wide v3, v2, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v3, v25, v1

    aget-wide v25, v28, v1

    mul-double v25, v25, v19

    add-double v3, v3, v25

    aget-wide v25, v31, v1

    mul-double v25, v25, v13

    add-double v3, v3, v25

    aget-wide v25, v34, v1

    mul-double v25, v25, v15

    add-double v3, v3, v25

    aget-wide v25, v38, v1

    mul-double v25, v25, v9

    add-double v3, v3, v25

    aget-wide v25, v39, v1

    mul-double v25, v25, v23

    add-double v3, v3, v25

    aget-wide v25, v5, v1

    mul-double v25, v25, v17

    add-double v3, v3, v25

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v22

    goto :goto_4

    :cond_5
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;)V

    return-object v0
.end method

.method public doFinalize()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v1, :cond_0

    return-void

    :cond_0
    array-length v1, v1

    new-array v1, v1, [D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getGlobalPreviousTime()D

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v6

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    if-ge v5, v7, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v16, v7, v4

    aget-wide v16, v16, v5

    const-wide v18, 0x3f5eb3273fb33980L    # 0.0018737681664791894

    mul-double v16, v16, v18

    aget-object v15, v7, v15

    aget-wide v18, v15, v5

    const-wide v20, -0x3fee32e12d52a51eL    # -4.450312892752409

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aget-object v14, v7, v14

    aget-wide v14, v14, v5

    const-wide v18, -0x4005caadf6b0e1cfL    # -1.6380176890978755

    mul-double v14, v14, v18

    add-double v16, v16, v14

    aget-object v13, v7, v13

    aget-wide v13, v13, v5

    const-wide v18, 0x40163848b982f131L    # 5.554964922539782

    mul-double v13, v13, v18

    add-double v16, v16, v13

    aget-object v12, v7, v12

    aget-wide v12, v12, v5

    const-wide v14, -0x4024232177b7ececL    # -0.4353557902216363

    mul-double/2addr v12, v14

    add-double v16, v16, v12

    aget-object v11, v7, v11

    aget-wide v11, v11, v5

    const-wide v13, 0x3fd38c89aeb8648aL    # 0.30545274794128174

    mul-double/2addr v11, v13

    add-double v16, v16, v11

    aget-object v10, v7, v10

    aget-wide v10, v10, v5

    const-wide v12, -0x4037466400339f26L    # -0.19316434850839564

    mul-double/2addr v10, v12

    add-double v16, v16, v10

    aget-object v9, v7, v9

    aget-wide v9, v9, v5

    const-wide v11, -0x405cfba1313bc1b3L    # -0.03714271806722689

    mul-double/2addr v9, v11

    add-double v16, v16, v9

    aget-object v7, v7, v8

    aget-wide v7, v7, v5

    const-wide v9, -0x407f01754b05b7d0L    # -0.008298

    mul-double/2addr v7, v9

    add-double v16, v16, v7

    aget-wide v6, v6, v5

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v6, v6, v4

    invoke-virtual {v5, v8, v9, v1, v6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    move v5, v4

    :goto_1
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v7, v6

    const-wide v8, 0x3fc37a028f43b002L    # 0.1521609496625161

    if-ge v5, v7, :cond_2

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v18, v7, v4

    aget-wide v18, v18, v5

    const-wide v20, -0x4069007c415587ceL    # -0.022459085953066622

    mul-double v18, v18, v20

    aget-object v20, v7, v15

    aget-wide v20, v20, v5

    const-wide v22, -0x3fee4fdc17389abdL    # -4.422011983080043

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aget-object v20, v7, v14

    aget-wide v20, v20, v5

    const-wide v22, -0x400297a6923638c9L    # -1.8379759110070617

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aget-object v20, v7, v13

    aget-wide v20, v20, v5

    const-wide v22, 0x4016fc30e137221aL    # 5.746280211439194

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aget-object v20, v7, v12

    aget-wide v20, v20, v5

    const-wide v22, -0x402c15e20d0f1468L    # -0.3111643669578199

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aget-object v20, v7, v11

    aget-wide v20, v20, v5

    mul-double v20, v20, v8

    add-double v18, v18, v20

    aget-object v8, v7, v10

    aget-wide v8, v8, v5

    const-wide v20, -0x4036361bb46239f7L    # -0.2014737481327276

    mul-double v8, v8, v20

    add-double v18, v18, v8

    const/16 v8, 0xb

    aget-object v9, v7, v8

    aget-wide v8, v9, v5

    const-wide v20, -0x40594dd5a3fa3a84L    # -0.04432804463693693

    mul-double v8, v8, v20

    add-double v18, v18, v8

    const/16 v8, 0xc

    aget-object v7, v7, v8

    aget-wide v7, v7, v5

    const-wide v20, -0x40c9aff1ec18eb65L    # -3.4046500868740456E-4

    mul-double v7, v7, v20

    add-double v18, v18, v7

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v5

    const-wide v20, 0x3fc21686b20cd989L    # 0.1413124436746325

    mul-double v7, v7, v20

    add-double v18, v18, v7

    aget-wide v6, v6, v5

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v6, 0x3fc999999999999aL    # 0.2

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v8, v9, v1, v6}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    move v5, v4

    :goto_2
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v8, v6

    if-ge v5, v8, :cond_3

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v9, v8, v4

    aget-wide v20, v9, v5

    const-wide v22, -0x4021136a19ba7cfcL    # -0.4831900357003607

    mul-double v20, v20, v22

    aget-object v9, v8, v15

    aget-wide v22, v9, v5

    const-wide v24, -0x3fddb441f4516442L    # -9.147934308113573

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aget-object v9, v8, v14

    aget-wide v22, v9, v5

    const-wide v24, 0x40172ae8b2a482bbL    # 5.791903296748099

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aget-object v9, v8, v13

    aget-wide v22, v9, v5

    const-wide v24, 0x4023bd8a09f6e330L    # 9.870193778407696

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aget-object v9, v8, v12

    aget-wide v22, v9, v5

    const-wide v24, 0x3fa754028fe67560L    # 0.04556282049746119

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aget-object v9, v8, v11

    aget-wide v22, v9, v5

    const-wide v18, 0x3fc37a028f43b002L    # 0.1521609496625161

    mul-double v22, v22, v18

    add-double v20, v20, v22

    aget-object v9, v8, v10

    aget-wide v22, v9, v5

    const-wide v24, -0x403639a8968018d3L    # -0.20136540080403034

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const/16 v9, 0xb

    aget-object v16, v8, v9

    aget-wide v22, v16, v5

    const-wide v24, -0x40591bb0af54943eL    # -0.04471061572777259

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const/16 v16, 0xc

    aget-object v8, v8, v16

    aget-wide v22, v8, v5

    const-wide v24, -0x40a914113db78e2cL    # -0.0013990241651590145

    mul-double v22, v22, v24

    add-double v20, v20, v22

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v17, v8, v4

    aget-wide v22, v17, v5

    const-wide v24, 0x40079482a23f1996L    # 2.9475147891527724

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aget-object v8, v8, v7

    aget-wide v22, v8, v5

    const-wide v24, -0x3fddb2b59235dddeL    # -9.15095847217987

    mul-double v22, v22, v24

    add-double v20, v20, v22

    aget-wide v22, v6, v5

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v7, v7, v20

    add-double v22, v22, v7

    aput-wide v22, v1, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_3
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->integrator:Lorg/apache/commons/math3/ode/AbstractIntegrator;

    const-wide v5, 0x3fe8e38e38e38e39L    # 0.7777777777777778

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double/2addr v7, v5

    add-double/2addr v2, v7

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v2, v3, v1, v0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-array v3, v0, [D

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v1, v4

    if-gez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-array v3, v0, [D

    :goto_1
    const/4 v5, 0x1

    aput-object v3, v1, v5

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    new-array v2, v0, [D

    :goto_2
    const/4 v3, 0x2

    aput-object v2, v1, v3

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v4

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v5

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v2, v2, v3

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->readExternal(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    iget-object p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length p1, p1

    const/4 p2, 0x3

    new-array p2, p2, [[D

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    array-length p5, p4

    if-ge p3, p5, :cond_0

    new-array p5, p1, [D

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x7

    new-array p3, p3, [[D

    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    move p3, p2

    :goto_1
    iget-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->v:[[D

    array-length p5, p4

    if-ge p3, p5, :cond_1

    new-array p5, p1, [D

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public storeTime(D)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->finalizeStep()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    aget-object v3, v3, v1

    aget-wide v3, v3, v2

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;->yDotKLast:[[D

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeDouble(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method
