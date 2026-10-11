.class public final enum Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum BOTH:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum LAST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field public static final enum NEITHER:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;


# instance fields
.field private final first:Z

.field private final last:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v1, "NEITHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->NEITHER:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    new-instance v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    new-instance v3, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v5, "LAST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2, v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->LAST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    new-instance v2, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    const-string v5, "BOTH"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v4, v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;-><init>(Ljava/lang/String;IZZ)V

    sput-object v2, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->BOTH:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    filled-new-array {v0, v1, v3, v2}, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->$VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->first:Z

    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->last:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->$VALUES:[Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    return-object v0
.end method


# virtual methods
.method public firstIncluded()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->first:Z

    return p0
.end method

.method public lastIncluded()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->last:Z

    return p0
.end method
