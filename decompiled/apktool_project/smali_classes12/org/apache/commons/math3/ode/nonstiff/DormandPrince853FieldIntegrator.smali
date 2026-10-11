.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final O:Ljava/lang/String; = "Dormand-Prince 8 (5, 3)"


# instance fields
.field public final A:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final B:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final C:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final D:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final E:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final F:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final G:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final H:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final I:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final J:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final K:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final L:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final M:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final N:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final y:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final z:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;DDDD)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DDDD)V"
        }
    .end annotation

    move-object v12, p0

    const-string v2, "Dormand-Prince 8 (5, 3)"

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    const-wide v0, 0x419badb5bc000000L    # 1.16092271E8

    const-wide v2, 0x42007b4700000000L    # 8.84846592E9

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->y:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ec370e100000000L    # -1871647.0

    const-wide v2, 0x41374f8000000000L    # 1527680.0

    .line 3
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->z:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3e6f5bc36c000000L    # -6.9799717E7

    const-wide v2, 0x41a0c8ae78000000L    # 1.4079366E8

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->A:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x4271e6b83db9b000L    # 1.230164450203E12

    const-wide v2, 0x426582d40c000000L    # 7.39113984E11

    .line 5
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->B:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ce3d9d73b83dcacL    # -1.980813971228885E15

    const-wide v2, 0x4334166cc96ea800L    # 5.654156025964544E15

    .line 6
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->C:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x41bbafb845000000L    # 4.64500805E8

    const-wide v2, 0x41d4b65600000000L    # 1.389975552E9

    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->D:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x427761aa7ee0d000L    # 1.606764981773E12

    const-wide v2, 0x42b1d685a1f00000L    # 1.9613062656E13

    .line 8
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->E:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3eff2a5800000000L    # -137909.0

    const-wide v2, 0x4157886000000000L    # 6168960.0

    .line 9
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->F:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ee9c14400000000L    # -364463.0

    const-wide v2, 0x413d4cf000000000L    # 1920240.0

    .line 10
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->G:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x4149ef4f80000000L    # 3399327.0

    const-wide v2, 0x41274f8000000000L    # 763840.0

    .line 11
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->H:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v2, 0x4180c8ae78000000L    # 3.5198415E7

    .line 12
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->I:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v2, 0x41b1357670000000L    # 2.887164E8

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->J:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3d2f04c698ed3440L    # -7.4684743568175E13

    const-wide v2, 0x42e4166cc96ea800L    # 1.76692375811392E14

    .line 14
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->K:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ed996b200000000L    # -734375.0

    const-wide v2, 0x4152693000000000L    # 4826304.0

    .line 15
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->L:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v2, 0x41c95e9bec000000L    # 8.512614E8

    .line 16
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->M:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x40f10ed000000000L    # 69869.0

    const-wide v2, 0x4147886000000000L    # 3084480.0

    .line 17
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->N:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;DD[D[D)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DD[D[D)V"
        }
    .end annotation

    move-object v10, p0

    const-string v2, "Dormand-Prince 8 (5, 3)"

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 18
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    const-wide v0, 0x419badb5bc000000L    # 1.16092271E8

    const-wide v2, 0x42007b4700000000L    # 8.84846592E9

    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->y:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ec370e100000000L    # -1871647.0

    const-wide v2, 0x41374f8000000000L    # 1527680.0

    .line 20
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->z:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3e6f5bc36c000000L    # -6.9799717E7

    const-wide v2, 0x41a0c8ae78000000L    # 1.4079366E8

    .line 21
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->A:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x4271e6b83db9b000L    # 1.230164450203E12

    const-wide v2, 0x426582d40c000000L    # 7.39113984E11

    .line 22
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->B:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ce3d9d73b83dcacL    # -1.980813971228885E15

    const-wide v2, 0x4334166cc96ea800L    # 5.654156025964544E15

    .line 23
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->C:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x41bbafb845000000L    # 4.64500805E8

    const-wide v2, 0x41d4b65600000000L    # 1.389975552E9

    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->D:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x427761aa7ee0d000L    # 1.606764981773E12

    const-wide v2, 0x42b1d685a1f00000L    # 1.9613062656E13

    .line 25
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->E:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3eff2a5800000000L    # -137909.0

    const-wide v2, 0x4157886000000000L    # 6168960.0

    .line 26
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->F:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ee9c14400000000L    # -364463.0

    const-wide v2, 0x413d4cf000000000L    # 1920240.0

    .line 27
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->G:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x4149ef4f80000000L    # 3399327.0

    const-wide v2, 0x41274f8000000000L    # 763840.0

    .line 28
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->H:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v2, 0x4180c8ae78000000L    # 3.5198415E7

    .line 29
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->I:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v2, 0x41b1357670000000L    # 2.887164E8

    .line 30
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->J:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3d2f04c698ed3440L    # -7.4684743568175E13

    const-wide v2, 0x42e4166cc96ea800L    # 1.76692375811392E14

    .line 31
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->K:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, -0x3ed996b200000000L    # -734375.0

    const-wide v2, 0x4152693000000000L    # 4826304.0

    .line 32
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->L:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v2, 0x41c95e9bec000000L    # 8.512614E8

    .line 33
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->M:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v0, 0x40f10ed000000000L    # 69869.0

    const-wide v2, 0x4147886000000000L    # 3084480.0

    .line 34
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->N:Lorg/apache/commons/math3/RealFieldElement;

    return-void
.end method


# virtual methods
.method public createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lcom/sunia/HTREnginev2/hff;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lcom/sunia/HTREnginev2/hff<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v9, Lcom/sunia/HTREnginev2/hff;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sunia/HTREnginev2/hff;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v9
.end method

.method public bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lcom/sunia/HTREnginev2/hvl;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lcom/sunia/HTREnginev2/hff;

    move-result-object p0

    return-object p0
.end method

.method public estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation

    move-object v0, p0

    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-ge v4, v5, :cond_1

    aget-object v5, p1, v3

    aget-object v5, v5, v4

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->y:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v6, 0x5

    aget-object v7, p1, v6

    aget-object v7, v7, v4

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->z:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v7, 0x6

    aget-object v8, p1, v7

    aget-object v8, v8, v4

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->A:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v8, 0x7

    aget-object v9, p1, v8

    aget-object v9, v9, v4

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->B:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v9, 0x8

    aget-object v10, p1, v9

    aget-object v10, v10, v4

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->C:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v10, 0x9

    aget-object v11, p1, v10

    aget-object v11, v11, v4

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->D:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0xa

    aget-object v12, p1, v11

    aget-object v12, v12, v4

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->E:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v12, 0xb

    aget-object v13, p1, v12

    aget-object v13, v13, v4

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->F:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v5, v13}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v13, p1, v3

    aget-object v13, v13, v4

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->G:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v6, p1, v6

    aget-object v6, v6, v4

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->H:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v13, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v7

    aget-object v7, v7, v4

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->I:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v8

    aget-object v7, v7, v4

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->J:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v9

    aget-object v7, v7, v4

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->K:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v10

    aget-object v7, v7, v4

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->L:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v11

    aget-object v7, v7, v4

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->M:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p1, v12

    aget-object v7, v7, v4

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->N:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v7, p2, v4

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v8, p3, v4

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v8, :cond_0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v8, v8, v4

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v8, v8, v4

    :goto_1
    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    :cond_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v3, v5

    move v5, v7

    goto :goto_0

    :cond_0
    aget-object v5, v3, v4

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, -0x3faf200000000000L    # -67.5

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v8, v5, v4

    const/4 v5, 0x1

    aget-object v8, v3, v5

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, -0x3f99800000000000L    # -180.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v8, v4

    aget-object v8, v3, v5

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v10, -0x3fb2000000000000L    # -60.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v8, v5

    const/4 v8, 0x2

    aget-object v9, v3, v8

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, -0x3fa2000000000000L    # -120.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v4

    aget-object v9, v3, v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v5

    aget-object v9, v3, v8

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v10, -0x3fbc000000000000L    # -40.0

    invoke-interface {v6, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v9, v8

    const/4 v6, 0x3

    aget-object v7, v3, v6

    const/16 v9, 0x6b

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x407ce00000000000L    # 462.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x40a7700000000000L    # 3000.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v7, v4

    aget-object v7, v3, v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v7, v5

    aget-object v7, v3, v6

    const/16 v9, 0xc5

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x4079200000000000L    # 402.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, -0x3f70c00000000000L    # -1000.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v7, v8

    aget-object v7, v3, v6

    const/16 v9, 0x49

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v10, 0x4065000000000000L    # 168.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x4077700000000000L    # 375.0

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v7, v6

    const/4 v7, 0x4

    aget-object v9, v3, v7

    const/16 v10, 0x1b

    invoke-virtual {v0, v5, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v9, v4

    aget-object v9, v3, v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v5

    aget-object v9, v3, v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v8

    aget-object v9, v3, v7

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x405b000000000000L    # 108.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v6

    aget-object v9, v3, v7

    const-wide/high16 v10, -0x3fd0000000000000L    # -16.0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, -0x3fa5000000000000L    # -108.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v7

    const/4 v9, 0x5

    aget-object v10, v3, v9

    const/16 v11, 0x13

    const/16 v12, 0x200

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v4

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v5

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v8

    aget-object v10, v3, v9

    const/16 v11, 0x17

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, 0x405d800000000000L    # 118.0

    invoke-interface {v11, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    invoke-interface {v11, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v6

    aget-object v10, v3, v9

    const/16 v11, -0x17

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v10, v7

    aget-object v4, v3, v9

    const/16 v5, -0x9

    invoke-virtual {v0, v5, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v9

    aget-object v4, v3, v2

    const/16 v5, 0x35cc

    const v10, 0x5aa5d

    invoke-virtual {v0, v5, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v4, v11

    aget-object v4, v3, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x1

    aput-object v5, v4, v11

    aget-object v4, v3, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v8

    aget-object v4, v3, v2

    const/16 v5, 0x12b0

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x40e92b0000000000L    # 51544.0

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, 0x4116a97400000000L    # 371293.0

    invoke-interface {v5, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v6

    aget-object v4, v3, v2

    const/16 v5, -0x12b0

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v7

    aget-object v4, v3, v2

    const/16 v5, -0x1638

    invoke-virtual {v0, v5, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v9

    aget-object v4, v3, v2

    const/16 v5, 0xc00

    invoke-virtual {v0, v5, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v4, 0x7

    aget-object v5, v3, v4

    const-wide v10, 0x422b505bdf960000L    # 5.8656157643E10

    const-wide v12, 0x4235e1db05910000L    # 9.3983540625E10

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v5, v11

    aget-object v5, v3, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x1

    aput-object v10, v5, v11

    aget-object v5, v3, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v5, v8

    aget-object v5, v3, v4

    const-wide v10, -0x3dad717d000b4000L    # -3.18801444819E11

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, -0x3d8cb866b2b38000L    # -1.324889724104E12

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x42623c3684a38000L    # 6.265569375E11

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v5, v6

    aget-object v5, v3, v4

    const-wide v10, 0x42528e82fff4c000L    # 3.18801444819E11

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, -0x3d8cb866b2b38000L    # -1.324889724104E12

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x42623c3684a38000L    # 6.265569375E11

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v5, v7

    aget-object v5, v3, v4

    const-wide v10, 0x42365cb3bd680000L    # 9.6044563816E10

    const-wide v12, 0x41e9ef3c78600000L    # 3.480871875E9

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v5, v9

    aget-object v5, v3, v4

    const-wide v10, 0x4294ac321a540000L    # 5.682451879168E12

    const-wide v12, 0x42506964442cc000L    # 2.81950621875E11

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v5, v2

    aget-object v5, v3, v4

    const-wide v10, -0x3e5c50c3d4000000L    # -1.65125654E8

    const-wide v12, 0x414cf7c580000000L    # 3796875.0

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v5, v4

    const/16 v5, 0x8

    aget-object v10, v3, v5

    const-wide v11, 0x4160fe8960000000L    # 8909899.0

    const-wide v13, 0x4171c9fc50000000L    # 1.8653125E7

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    aget-object v10, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    aget-object v10, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v8

    aget-object v10, v3, v5

    const-wide v11, -0x3ecea2d500000000L    # -1137963.0

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, -0x3eaec09000000000L    # -4521408.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, 0x4146694e00000000L    # 2937500.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v6

    aget-object v10, v3, v5

    const-wide v11, 0x41315d2b00000000L    # 1137963.0

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, -0x3eaec09000000000L    # -4521408.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, 0x4146694e00000000L    # 2937500.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v7

    aget-object v10, v3, v5

    const-wide v11, 0x41970bd898000000L    # 9.6663078E7

    const-wide v13, 0x41515e6940000000L    # 4553125.0

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v9

    aget-object v10, v3, v5

    const-wide v11, 0x41df668080000000L    # 2.107245056E9

    const-wide v13, 0x41a070d9d2000000L    # 1.37915625E8

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v2

    aget-object v10, v3, v5

    const-wide v11, -0x3e0db1f9ed000000L    # -4.913652016E9

    const-wide v13, 0x41a198ae3e000000L    # 1.47609375E8

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v4

    aget-object v10, v3, v5

    const-wide v11, -0x3e6d30ad08000000L    # -7.889427E7

    const-wide v13, 0x41ece96060a00000L    # 3.880452869E9

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v5

    const/16 v10, 0x9

    aget-object v11, v3, v10

    const-wide v12, -0x3decfff58dc80000L    # -2.0401265806E10

    const-wide v4, 0x4214464a30fc0000L    # 2.1769653311E10

    invoke-virtual {v0, v12, v13, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v11, v5

    aget-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x1

    aput-object v5, v4, v11

    aget-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v8

    aget-object v4, v3, v10

    const-wide v11, 0x40f7076000000000L    # 94326.0

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x41159ea000000000L    # 354216.0

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x40fb8cf000000000L    # 112847.0

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v6

    aget-object v4, v3, v10

    const-wide v11, -0x3f08f8a000000000L    # -94326.0

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x41159ea000000000L    # 354216.0

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x40fb8cf000000000L    # 112847.0

    invoke-interface {v5, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v7

    aget-object v4, v3, v10

    const-wide v11, -0x3ddbd56e69700000L    # -4.3306765128E10

    const-wide v14, 0x41f3cbaf3df00000L    # 5.313852383E9

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v4, v9

    aget-object v4, v3, v10

    const-wide v11, -0x3d4d059742bc0000L    # -2.0866708358144E13

    const-wide v14, 0x42706550988ed000L    # 1.126708119789E12

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v4, v2

    aget-object v4, v3, v10

    const-wide v11, 0x42ab13d5e4e38800L    # 1.488600343802E13

    const-wide v14, 0x42630d6414b56000L    # 6.54632330667E11

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v5, 0x7

    aput-object v11, v4, v5

    aget-object v4, v3, v10

    const-wide v11, 0x435f582c4c0a4600L    # 3.5290686222309376E16

    const-wide v13, 0x434923ccbe7776e6L    # 1.4152473387134412E16

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v4, v12

    aget-object v4, v3, v10

    const-wide v11, -0x3e29fa518a400000L    # -1.477884375E9

    const-wide v13, 0x41bce9884b000000L    # 4.85066827E8

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v4, v10

    const/16 v4, 0xa

    aget-object v11, v3, v4

    const-wide v12, 0x4182fc5288000000L    # 3.9815761E7

    const-wide v9, 0x4170b3fcb0000000L    # 1.7514443E7

    invoke-virtual {v0, v12, v13, v9, v10}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v11, v10

    aget-object v9, v3, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    aget-object v9, v3, v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v8

    aget-object v9, v3, v4

    const-wide v10, -0x3ed2acee00000000L    # -960905.0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, -0x3eb59f1c00000000L    # -3457480.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, 0x4120d5a800000000L    # 551636.0

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v6

    aget-object v9, v3, v4

    const-wide v10, 0x412d531200000000L    # 960905.0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, -0x3eb59f1c00000000L    # -3457480.0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x4120d5a800000000L    # 551636.0

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v9, v7

    aget-object v1, v3, v4

    const-wide v9, -0x3e36d49036000000L    # -8.44554132E8

    const-wide v11, 0x41866c98c8000000L    # 4.7026969E7

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v1, v10

    aget-object v1, v3, v4

    const-wide v9, 0x41ff75c6b0000000L    # 8.444996352E9

    const-wide v11, 0x41b202931b000000L    # 3.02158619E8

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v1, v2

    aget-object v1, v3, v4

    const-wide v9, -0x3e1d4d503b400000L    # -2.509602342E9

    const-wide v11, 0x41ca290320800000L    # 8.77790785E8

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/4 v5, 0x7

    aput-object v9, v1, v5

    aget-object v1, v3, v4

    const-wide v9, -0x3ca6c922a12a588aL    # -2.8388795297996248E16

    const-wide v11, 0x4326bbdffce6b4deL    # 3.199510091356783E15

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    const/16 v9, 0x8

    aput-object v5, v1, v9

    aget-object v1, v3, v4

    const-wide v9, 0x41ab06d4b4000000L    # 2.2671625E8

    const-wide v11, 0x41717e0090000000L    # 1.8341897E7

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    const/16 v9, 0x9

    aput-object v5, v1, v9

    aget-object v1, v3, v4

    const-wide v9, 0x41d46f2882000000L    # 1.371316744E9

    const-wide v11, 0x41dfc2954ac00000L    # 2.131383595E9

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v1, 0xb

    aget-object v5, v3, v1

    const-wide v9, 0x40f9741000000000L    # 104257.0

    const-wide v11, 0x413d4cf000000000L    # 1920240.0

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v5, v10

    aget-object v5, v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v10, 0x1

    aput-object v9, v5, v10

    aget-object v5, v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v5, v8

    aget-object v5, v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v5, v6

    aget-object v5, v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v5, v7

    aget-object v5, v3, v1

    const-wide v9, 0x4149ef4f80000000L    # 3399327.0

    const-wide v11, 0x41274f8000000000L    # 763840.0

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v5, v10

    aget-object v5, v3, v1

    const-wide v9, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v11, 0x4180c8ae78000000L    # 3.5198415E7

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v5, v2

    aget-object v5, v3, v1

    const-wide v9, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v11, 0x41b1357670000000L    # 2.887164E8

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v5, v10

    aget-object v5, v3, v1

    const-wide v9, 0x42c9008ebfdc2c80L    # 5.4980371265625E13

    const-wide v11, 0x42e4166cc96ea800L    # 1.76692375811392E14

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v5, v10

    aget-object v5, v3, v1

    const-wide v9, -0x3ed996b200000000L    # -734375.0

    const-wide v11, 0x4152693000000000L    # 4826304.0

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    const/16 v10, 0x9

    aput-object v9, v5, v10

    aget-object v5, v3, v1

    const-wide v9, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v11, 0x41c95e9bec000000L    # 8.512614E8

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v5, v4

    aget-object v5, v3, v1

    const-wide v9, 0x4100d5a800000000L    # 137909.0

    const-wide v11, 0x4147886000000000L    # 3084480.0

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aput-object v9, v5, v1

    const/16 v5, 0xc

    aget-object v9, v3, v5

    const-wide v10, 0x42091ca9fc280000L    # 1.3481885573E10

    const-wide v12, 0x424bf17391c00000L    # 2.4003E11

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    aget-object v9, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    aget-object v9, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v8

    aget-object v9, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v6

    aget-object v9, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v9, v7

    aget-object v9, v3, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x5

    aput-object v10, v9, v11

    aget-object v9, v3, v5

    const-wide v10, 0x42403b01510c0000L    # 1.39418837528E11

    const-wide v12, 0x426001a282e8e000L    # 5.49975234375E11

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v9, v2

    aget-object v9, v3, v5

    const-wide v10, -0x3d5bcb490e794a00L    # -1.1108320068443E13

    const-wide v12, 0x42c483b88141b000L    # 4.51119375E13

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/4 v11, 0x7

    aput-object v10, v9, v11

    aget-object v9, v3, v5

    const-wide v10, -0x3ce6da0bae7ab6e4L    # -1.769651421925959E15

    const-wide v12, 0x43494fdec1f32d80L    # 1.424938514608E16

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/16 v11, 0x8

    aput-object v10, v9, v11

    aget-object v9, v3, v5

    const-wide v10, 0x418b8f9878000000L    # 5.7799439E7

    const-wide v12, 0x41b6796718000000L    # 3.77055E8

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v9, v11

    aget-object v9, v3, v5

    const-wide v10, 0x426716b6dbcaa000L    # 7.93322643029E11

    const-wide v12, 0x42d5feaca6f7a000L    # 9.673425E13

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v9, v4

    aget-object v9, v3, v5

    const-wide v10, 0x41d5bd696bc00000L    # 1.458939311E9

    const-wide v12, 0x4246714aad800000L    # 1.9278E11

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v9, v1

    aget-object v9, v3, v5

    const-wide v10, -0x3f4fcb0000000000L    # -4149.0

    const-wide v12, 0x411e848000000000L    # 500000.0

    invoke-virtual {v0, v10, v11, v12, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aput-object v10, v9, v5

    const/16 v9, 0xd

    aget-object v10, v3, v9

    const-wide v11, 0x427737edce59b000L    # 1.595561272731E12

    const-wide v14, 0x42c6cac48c8bb000L    # 5.01202735E13

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v8

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v6

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v10, v7

    aget-object v10, v3, v9

    const-wide v11, 0x426c61afb5b96000L    # 9.75183916491E11

    const-wide v13, 0x42bf56ce41401200L    # 3.445768803125E13

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v10, v12

    aget-object v10, v3, v9

    const-wide v11, 0x42c1810f68984000L    # 3.8492013932672E13

    const-wide v13, 0x43046ec733ff3a48L    # 7.18912673015625E14

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v2

    aget-object v10, v3, v9

    const-wide v11, -0x3cf0502bc79a6658L    # -1.114881286517557E15

    const-wide v13, 0x43520764792c7eb8L    # 2.02987107675E16

    invoke-virtual {v0, v11, v12, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v10, v12

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v12, 0x8

    aput-object v11, v10, v12

    aget-object v10, v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v12, 0x9

    aput-object v11, v10, v12

    aget-object v10, v3, v9

    const-wide v11, -0x3d7d8748495e8800L    # -2.538710946863E12

    const-wide v14, 0x4354cfa4f7548bf4L    # 2.343122786125E16

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v4

    aget-object v10, v3, v9

    const-wide v11, 0x42006fece1c80000L    # 8.824659001E9

    const-wide v14, 0x42b4faa375bac200L    # 2.306671678125E13

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v1

    aget-object v10, v3, v9

    const-wide v11, -0x3dfa8ba14ce80000L    # -1.1518334563E10

    const-wide v14, 0x42bec4efbdbc9400L    # 3.38311846125E13

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v5

    aget-object v10, v3, v9

    const-wide v11, 0x41dc7edf41000000L    # 1.912306948E9

    const-wide v14, 0x420934c94fa80000L    # 1.3532473845E10

    invoke-virtual {v0, v11, v12, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v10, v9

    const/16 v10, 0xe

    aget-object v11, v3, v10

    const-wide v14, -0x3df6a4585b480000L    # -1.3613986967E10

    const-wide v4, 0x421d8fdc51400000L    # 3.1741908048E10

    invoke-virtual {v0, v14, v15, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v11, v5

    aget-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x1

    aput-object v5, v4, v11

    aget-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v8

    aget-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v6

    aget-object v4, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v7

    aget-object v4, v3, v10

    const-wide v5, -0x3e0e48b1c2900000L    # -4.755612631E9

    const-wide v7, 0x41ce2b93f2000000L    # 1.012344804E9

    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    aget-object v4, v3, v10

    const-wide v5, 0x42c386c99bbd0000L    # 4.2939257944576E13

    const-wide v7, 0x429454c075a11400L    # 5.588559685701E12

    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v4, v2

    aget-object v2, v3, v10

    const-wide v4, 0x42d1b553d5106d40L    # 7.7881972900277E13

    const-wide v6, 0x42b16876fcd87000L    # 1.9140370552944E13

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v2, v5

    aget-object v2, v3, v10

    const-wide v4, 0x42b4a9df59d2c700L    # 2.2719829234375E13

    const-wide v6, 0x42ccf67371237200L    # 6.3689648654052E13

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v2, v5

    aget-object v2, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v5, 0x9

    aput-object v4, v2, v5

    aget-object v2, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v5, 0xa

    aput-object v4, v2, v5

    aget-object v2, v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v2, v1

    aget-object v1, v3, v10

    const-wide v4, -0x3e2e2225f1400000L    # -1.199007803E9

    const-wide v6, 0x4268f161e48e0000L    # 8.57031517296E11

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    const/16 v4, 0xc

    aput-object v2, v1, v4

    aget-object v1, v3, v10

    const-wide v4, 0x42426140941c0000L    # 1.57882067E11

    const-wide v6, 0x4228f161e48e0000L    # 5.3564469831E10

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v9

    aget-object v1, v3, v10

    const-wide v4, -0x3daf17ad260e4000L    # -2.90468882375E11

    const-wide v6, 0x421d8fdc51400000L    # 3.1741908048E10

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v1, v10

    return-object v3
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    const v1, 0x19741

    const v2, 0x1d4cf0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-wide v1, 0x4149ef4f80000000L    # 3399327.0

    const-wide v3, 0x41274f8000000000L    # 763840.0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v3, 0x4180c8ae78000000L    # 3.5198415E7

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-wide v1, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v3, 0x41b1357670000000L    # 2.887164E8

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-wide v1, 0x42c9008ebfdc2c80L    # 5.4980371265625E13

    const-wide v3, 0x42e4166cc96ea800L    # 1.76692375811392E14

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-wide v1, -0x3ed996b200000000L    # -734375.0

    const-wide v3, 0x4152693000000000L    # 4826304.0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-wide v1, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v3, 0x41c95e9bec000000L    # 8.512614E8

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-wide v1, 0x4100d5a800000000L    # 137909.0

    const-wide v3, 0x4147886000000000L    # 3084480.0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v1, 0xf

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, -0x3fe8000000000000L    # -6.0

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3faf200000000000L    # -67.5

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3fb9800000000000L    # -45.0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, -0x3fc2000000000000L    # -30.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-virtual {p0, v6, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    const/4 v5, 0x5

    aput-object v0, v2, v5

    const/16 v0, 0xd

    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v2, v1

    const/16 v4, 0x7f

    const/16 v6, 0xc3

    invoke-virtual {p0, v4, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v2, v6

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v3, 0xa

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v2, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v5, v6, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v2, v0

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    const/16 v0, 0xe

    aput-object p0, v2, v0

    return-object v2
.end method

.method public getOrder()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method
