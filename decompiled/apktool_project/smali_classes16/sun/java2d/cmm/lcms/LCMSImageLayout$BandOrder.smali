.class final enum Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/cmm/lcms/LCMSImageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BandOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

.field public static final enum ARBITRARY:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

.field public static final enum DIRECT:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

.field public static final enum INVERTED:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

.field public static final enum UNKNOWN:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->DIRECT:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    new-instance v1, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    const-string v2, "INVERTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->INVERTED:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    new-instance v2, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    const-string v3, "ARBITRARY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->ARBITRARY:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    new-instance v3, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->UNKNOWN:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    filled-new-array {v0, v1, v2, v3}, [Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    move-result-object v0

    sput-object v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->$VALUES:[Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

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

.method public static getBandOrder([I)Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;
    .locals 6

    sget-object v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->UNKNOWN:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->ARBITRARY:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    if-eq v0, v3, :cond_6

    array-length v4, p0

    if-ge v2, v4, :cond_6

    sget-object v4, Lsun/java2d/cmm/lcms/LCMSImageLayout$1;->$SwitchMap$sun$java2d$cmm$lcms$LCMSImageLayout$BandOrder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    aget v4, p0, v2

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_1
    aget v4, p0, v2

    if-eq v4, v2, :cond_5

    :cond_2
    :goto_1
    move-object v0, v3

    goto :goto_2

    :cond_3
    aget v0, p0, v2

    if-ne v0, v2, :cond_4

    sget-object v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->DIRECT:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_2

    sget-object v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->INVERTED:Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;
    .locals 1

    const-class v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    return-object p0
.end method

.method public static values()[Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;
    .locals 1

    sget-object v0, Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->$VALUES:[Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    invoke-virtual {v0}, [Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/java2d/cmm/lcms/LCMSImageLayout$BandOrder;

    return-object v0
.end method
