.class public final enum Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HwmfFloodFillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

.field public static final enum FLOOD_FILL_BORDER:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

.field public static final enum FLOOD_FILL_SURFACE:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    const-string v1, "FLOOD_FILL_BORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->FLOOD_FILL_BORDER:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    const-string v2, "FLOOD_FILL_SURFACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->FLOOD_FILL_SURFACE:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    filled-new-array {v0, v1}, [Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    return-object v0
.end method
