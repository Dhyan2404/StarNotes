.class public final enum Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

.field public static final enum SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v1, "PLUS_MINUS_SUB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v2, "PLUS_SUB_MINUS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v3, "MINUS_PLUS_SUB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v4, "MINUS_SUB_PLUS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v5, "SUB_PLUS_MINUS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    const-string v6, "SUB_MINUS_PLUS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->$VALUES:[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object v0
.end method
