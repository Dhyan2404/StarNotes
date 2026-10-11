.class public final enum Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CombineMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

.field public static final enum COMPLEMENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

.field public static final enum EXCLUDE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

.field public static final enum INTERSECT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

.field public static final enum REPLACE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

.field public static final enum UNION:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

.field public static final enum XOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;


# instance fields
.field public final id:I

.field public final regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COPY:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-string v3, "REPLACE"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;-><init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->REPLACE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    new-instance v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_AND:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-string v4, "INTERSECT"

    invoke-direct {v1, v4, v2, v2, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;-><init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->INTERSECT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    new-instance v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    const/4 v3, 0x2

    sget-object v4, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_OR:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-string v5, "UNION"

    invoke-direct {v2, v5, v3, v3, v4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;-><init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->UNION:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    const/4 v4, 0x3

    sget-object v5, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_XOR:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-string v6, "XOR"

    invoke-direct {v3, v6, v4, v4, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;-><init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->XOR:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    new-instance v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    const/4 v5, 0x4

    sget-object v6, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_DIFF:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-string v7, "EXCLUDE"

    invoke-direct {v4, v7, v5, v5, v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;-><init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->EXCLUDE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    new-instance v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    const/4 v6, 0x5

    sget-object v7, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COMPLEMENT:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    const-string v8, "COMPLEMENT"

    invoke-direct {v5, v8, v6, v6, v7}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;-><init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V

    sput-object v5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->COMPLEMENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/apache/poi/hwmf/record/HwmfRegionMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/hwmf/record/HwmfRegionMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->id:I

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->regionMode:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->$VALUES:[Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    return-object v0
.end method
