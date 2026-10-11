.class public final enum Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HwmfTextVerticalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

.field public static final enum BASELINE:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

.field public static final enum BOTTOM:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

.field public static final enum TOP:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->TOP:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BOTTOM:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    const-string v3, "BASELINE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BASELINE:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object v0
.end method
