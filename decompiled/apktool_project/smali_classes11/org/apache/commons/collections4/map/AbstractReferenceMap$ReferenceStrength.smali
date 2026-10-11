.class public final enum Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceStrength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

.field public static final enum HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

.field public static final enum SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

.field public static final enum WEAK:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const-string v1, "HARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    new-instance v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const-string v2, "SOFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    new-instance v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const-string v3, "WEAK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->WEAK:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->$VALUES:[Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->value:I

    return-void
.end method

.method public static resolve(I)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->WEAK:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1

    const-class v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1

    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->$VALUES:[Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object v0
.end method
