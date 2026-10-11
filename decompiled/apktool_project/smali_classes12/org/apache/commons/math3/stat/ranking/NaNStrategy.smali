.class public final enum Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/stat/ranking/NaNStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final enum FAILED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final enum FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final enum MAXIMAL:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final enum MINIMAL:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final enum REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const-string v1, "MINIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->MINIMAL:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const-string v2, "MAXIMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->MAXIMAL:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v2, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const-string v3, "REMOVED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v3, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const-string v4, "FIXED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const-string v5, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FAILED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->$VALUES:[Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->$VALUES:[Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object v0
.end method
