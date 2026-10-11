.class public final enum Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/comparators/FixedOrderComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnknownObjectBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

.field public static final enum EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const-string v1, "BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->BEFORE:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    new-instance v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const-string v2, "AFTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->AFTER:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    new-instance v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    const-string v3, "EXCEPTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->$VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    const-class v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->$VALUES:[Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method
