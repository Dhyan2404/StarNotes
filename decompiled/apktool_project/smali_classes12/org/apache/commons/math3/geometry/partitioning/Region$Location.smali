.class public final enum Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/geometry/partitioning/Region$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

.field public static final enum BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

.field public static final enum INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

.field public static final enum OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    const-string v1, "INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    const-string v2, "OUTSIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    const-string v3, "BOUNDARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->BOUNDARY:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    return-object v0
.end method
