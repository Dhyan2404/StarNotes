.class final enum Lorg/apache/commons/math3/util/Combinations$IterationOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IterationOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/util/Combinations$IterationOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/util/Combinations$IterationOrder;

.field public static final enum LEXICOGRAPHIC:Lorg/apache/commons/math3/util/Combinations$IterationOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    const-string v1, "LEXICOGRAPHIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Combinations$IterationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->LEXICOGRAPHIC:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    filled-new-array {v0}, [Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->$VALUES:[Lorg/apache/commons/math3/util/Combinations$IterationOrder;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/util/Combinations$IterationOrder;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/util/Combinations$IterationOrder;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->$VALUES:[Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/util/Combinations$IterationOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    return-object v0
.end method
