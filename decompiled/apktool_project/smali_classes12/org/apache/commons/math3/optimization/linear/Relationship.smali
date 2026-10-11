.class public final enum Lorg/apache/commons/math3/optimization/linear/Relationship;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/optimization/linear/Relationship;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optimization/linear/Relationship;

.field public static final enum EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

.field public static final enum GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

.field public static final enum LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/commons/math3/optimization/linear/Relationship;

    const/4 v1, 0x0

    const-string v2, "="

    const-string v3, "EQ"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/math3/optimization/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    new-instance v1, Lorg/apache/commons/math3/optimization/linear/Relationship;

    const/4 v2, 0x1

    const-string v3, "<="

    const-string v4, "LEQ"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/commons/math3/optimization/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    new-instance v2, Lorg/apache/commons/math3/optimization/linear/Relationship;

    const/4 v3, 0x2

    const-string v4, ">="

    const-string v5, "GEQ"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/math3/optimization/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/optimization/linear/Relationship;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optimization/linear/Relationship;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/optimization/linear/Relationship;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optimization/linear/Relationship;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/linear/Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object v0
.end method


# virtual methods
.method public oppositeRelationship()Lorg/apache/commons/math3/optimization/linear/Relationship;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/optimization/linear/Relationship$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->EQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optimization/linear/Relationship;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/Relationship;->stringValue:Ljava/lang/String;

    return-object p0
.end method
