.class public final enum Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HemfModifyWorldTransformMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

.field public static final enum MWT_IDENTITY:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

.field public static final enum MWT_LEFTMULTIPLY:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

.field public static final enum MWT_RIGHTMULTIPLY:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

.field public static final enum MWT_SET:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    const-string v1, "MWT_IDENTITY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->MWT_IDENTITY:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    new-instance v1, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    const-string v2, "MWT_LEFTMULTIPLY"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->MWT_LEFTMULTIPLY:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    new-instance v2, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    const-string v3, "MWT_RIGHTMULTIPLY"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->MWT_RIGHTMULTIPLY:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    new-instance v3, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    const-string v4, "MWT_SET"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->MWT_SET:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

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

    iput p3, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->id:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->values()[Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    return-object v0
.end method
