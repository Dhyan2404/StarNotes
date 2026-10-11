.class final enum Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Skew"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field public static final enum BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field public static final enum LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field public static final enum RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    const-string v1, "LEFT_HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    const-string v2, "RIGHT_HIGH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    const-string v3, "BALANCED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-object v0
.end method
