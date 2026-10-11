.class public final enum Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/dfp/DfpField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoundingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field public static final enum ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v1, "ROUND_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v2, "ROUND_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v2, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v3, "ROUND_HALF_UP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_UP:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v3, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v4, "ROUND_HALF_DOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v4, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v5, "ROUND_HALF_EVEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v5, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v6, "ROUND_HALF_ODD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_ODD:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v6, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v7, "ROUND_CEIL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    new-instance v7, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const-string v8, "ROUND_FLOOR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->$VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->$VALUES:[Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object v0
.end method
