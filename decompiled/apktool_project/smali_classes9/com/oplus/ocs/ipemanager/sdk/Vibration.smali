.class public final enum Lcom/oplus/ocs/ipemanager/sdk/Vibration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ocs/ipemanager/sdk/Vibration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ocs/ipemanager/sdk/Vibration;

.field public static final enum BALLPEN:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

.field public static final enum ERASER:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

.field public static final enum FUNCTION_VIBRATION:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

.field public static final enum PEN:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

.field public static final enum PENCIL:Lcom/oplus/ocs/ipemanager/sdk/Vibration;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    const-string v1, "PENCIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/ocs/ipemanager/sdk/Vibration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->PENCIL:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    new-instance v1, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    const-string v2, "ERASER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oplus/ocs/ipemanager/sdk/Vibration;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->ERASER:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    new-instance v2, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    const-string v3, "BALLPEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oplus/ocs/ipemanager/sdk/Vibration;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->BALLPEN:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    new-instance v3, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    const-string v4, "PEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/oplus/ocs/ipemanager/sdk/Vibration;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->PEN:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    new-instance v4, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    const-string v5, "FUNCTION_VIBRATION"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/oplus/ocs/ipemanager/sdk/Vibration;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->FUNCTION_VIBRATION:Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    move-result-object v0

    sput-object v0, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->$VALUES:[Lcom/oplus/ocs/ipemanager/sdk/Vibration;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ocs/ipemanager/sdk/Vibration;
    .locals 1

    const-class v0, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ocs/ipemanager/sdk/Vibration;
    .locals 1

    sget-object v0, Lcom/oplus/ocs/ipemanager/sdk/Vibration;->$VALUES:[Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    invoke-virtual {v0}, [Lcom/oplus/ocs/ipemanager/sdk/Vibration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ocs/ipemanager/sdk/Vibration;

    return-object v0
.end method
