.class public final enum Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

.field public static final enum FRAME_TRANSFORM:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

.field public static final enum VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const-string v1, "VECTOR_OPERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->VECTOR_OPERATOR:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    const-string v2, "FRAME_TRANSFORM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->FRAME_TRANSFORM:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    filled-new-array {v0, v1}, [Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->$VALUES:[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->$VALUES:[Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/euclidean/threed/RotationConvention;

    return-object v0
.end method
