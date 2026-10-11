.class public final enum Lcom/sunia/authlib/bean/DeviceIdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/authlib/bean/DeviceIdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/authlib/bean/DeviceIdType;

.field public static final enum ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

.field public static final enum BOOT_SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

.field public static final enum ETH_MAC:Lcom/sunia/authlib/bean/DeviceIdType;

.field public static final enum SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

.field public static final enum WLAN_MAC:Lcom/sunia/authlib/bean/DeviceIdType;


# instance fields
.field value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sunia/authlib/bean/DeviceIdType;

    const-string v1, "WLAN_MAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/authlib/bean/DeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->WLAN_MAC:Lcom/sunia/authlib/bean/DeviceIdType;

    new-instance v1, Lcom/sunia/authlib/bean/DeviceIdType;

    const-string v2, "ETH_MAC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/sunia/authlib/bean/DeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sunia/authlib/bean/DeviceIdType;->ETH_MAC:Lcom/sunia/authlib/bean/DeviceIdType;

    new-instance v2, Lcom/sunia/authlib/bean/DeviceIdType;

    const-string v3, "ANDROID_ID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/sunia/authlib/bean/DeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sunia/authlib/bean/DeviceIdType;->ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

    new-instance v3, Lcom/sunia/authlib/bean/DeviceIdType;

    const-string v4, "SERIAL_NO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/sunia/authlib/bean/DeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sunia/authlib/bean/DeviceIdType;->SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

    new-instance v4, Lcom/sunia/authlib/bean/DeviceIdType;

    const-string v5, "BOOT_SERIAL_NO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/sunia/authlib/bean/DeviceIdType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sunia/authlib/bean/DeviceIdType;->BOOT_SERIAL_NO:Lcom/sunia/authlib/bean/DeviceIdType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sunia/authlib/bean/DeviceIdType;

    move-result-object v0

    sput-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->$VALUES:[Lcom/sunia/authlib/bean/DeviceIdType;

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

    iput p3, p0, Lcom/sunia/authlib/bean/DeviceIdType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/authlib/bean/DeviceIdType;
    .locals 1

    const-class v0, Lcom/sunia/authlib/bean/DeviceIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0
.end method

.method public static values()[Lcom/sunia/authlib/bean/DeviceIdType;
    .locals 1

    sget-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->$VALUES:[Lcom/sunia/authlib/bean/DeviceIdType;

    invoke-virtual {v0}, [Lcom/sunia/authlib/bean/DeviceIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/authlib/bean/DeviceIdType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sunia/authlib/bean/DeviceIdType;->value:I

    return p0
.end method
