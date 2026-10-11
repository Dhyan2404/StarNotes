.class public final enum Lcom/sunia/commonv2/auth/HWRDeviceIdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/commonv2/auth/HWRDeviceIdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field public static final enum ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field public static final enum BOOT_SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field public static final enum ETH_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field public static final enum SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field public static final enum WLAN_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;


# instance fields
.field value:I


# direct methods
.method private static synthetic $values()[Lcom/sunia/commonv2/auth/HWRDeviceIdType;
    .locals 5

    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->WLAN_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v1, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ETH_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v2, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v3, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    sget-object v4, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->BOOT_SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    const-string v1, "WLAN_MAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRDeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->WLAN_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    new-instance v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    const-string v1, "ETH_MAC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRDeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ETH_MAC:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    new-instance v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    const-string v1, "ANDROID_ID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRDeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    new-instance v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    const-string v1, "SERIAL_NO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRDeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    new-instance v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    const-string v1, "BOOT_SERIAL_NO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/commonv2/auth/HWRDeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->BOOT_SERIAL_NO:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    invoke-static {}, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->$values()[Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->$VALUES:[Lcom/sunia/commonv2/auth/HWRDeviceIdType;

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

    iput p3, p0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/commonv2/auth/HWRDeviceIdType;
    .locals 1

    const-class v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    return-object p0
.end method

.method public static values()[Lcom/sunia/commonv2/auth/HWRDeviceIdType;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->$VALUES:[Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    invoke-virtual {v0}, [Lcom/sunia/commonv2/auth/HWRDeviceIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->value:I

    return p0
.end method
