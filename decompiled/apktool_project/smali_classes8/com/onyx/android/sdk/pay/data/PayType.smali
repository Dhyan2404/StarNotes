.class public final enum Lcom/onyx/android/sdk/pay/data/PayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pay/data/PayType$Companion;,
        Lcom/onyx/android/sdk/pay/data/PayType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/pay/data/PayType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/data/PayType;",
        "",
        "type",
        "",
        "isIapPayment",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "()Z",
        "getType",
        "()Ljava/lang/String;",
        "getPaymentMethod",
        "isQrcode",
        "ALI_PAY",
        "WX_PAY",
        "HUAWEI_PAY",
        "GOOGLE",
        "Companion",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/pay/data/PayType;

.field public static final enum ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

.field public static final Companion:Lcom/onyx/android/sdk/pay/data/PayType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

.field public static final enum HUAWEI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

.field public static final enum WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;


# instance fields
.field private final isIapPayment:Z

.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/pay/data/PayType;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    sget-object v2, Lcom/onyx/android/sdk/pay/data/PayType;->HUAWEI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    sget-object v3, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/onyx/android/sdk/pay/data/PayType;

    const-string v1, "ALI_PAY"

    const/4 v2, 0x0

    const-string v3, "ALIPAY"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/pay/data/PayType;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lcom/onyx/android/sdk/pay/data/PayType;->ALI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayType;

    const-string v9, "WX_PAY"

    const/4 v10, 0x1

    const-string v11, "WECHAT"

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/onyx/android/sdk/pay/data/PayType;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->WX_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayType;

    const-string v1, "HUAWEI_PAY"

    const/4 v2, 0x2

    const-string v3, "HUAWEI_IAP"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/pay/data/PayType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->HUAWEI_PAY:Lcom/onyx/android/sdk/pay/data/PayType;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayType;

    const/4 v1, 0x3

    const-string v2, "GOOGLE_IAP"

    const-string v3, "GOOGLE"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/onyx/android/sdk/pay/data/PayType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-static {}, Lcom/onyx/android/sdk/pay/data/PayType;->$values()[Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->$VALUES:[Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->Companion:Lcom/onyx/android/sdk/pay/data/PayType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onyx/android/sdk/pay/data/PayType;->type:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/onyx/android/sdk/pay/data/PayType;->isIapPayment:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/pay/data/PayType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/pay/data/PayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static synthetic getPaymentMethod$default(Lcom/onyx/android/sdk/pay/data/PayType;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/data/PayType;->getPaymentMethod(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPaymentMethod"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/data/PayType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/pay/data/PayType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->$VALUES:[Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/pay/data/PayType;

    return-object v0
.end method


# virtual methods
.method public final getPaymentMethod(Z)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const-string p0, "google"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "huawei"

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "wechat_qrcode_pay"

    goto :goto_0

    :cond_3
    const-string p0, "wechat_app_pay"

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string p0, "alipay_qrcode_pay"

    goto :goto_0

    :cond_5
    const-string p0, "alipay_app_pay"

    :goto_0
    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/data/PayType;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final isIapPayment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pay/data/PayType;->isIapPayment:Z

    return p0
.end method
