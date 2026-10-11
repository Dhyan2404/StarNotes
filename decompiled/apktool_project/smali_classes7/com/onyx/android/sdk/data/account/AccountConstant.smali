.class public final Lcom/onyx/android/sdk/data/account/AccountConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/AccountConstant;",
        "",
        "()V",
        "ONE_MONTH_TIME_MS",
        "",
        "getONE_MONTH_TIME_MS",
        "()J",
        "setONE_MONTH_TIME_MS",
        "(J)V",
        "REFRESH_TOKEN_EXPIRED_TIME_KEY",
        "",
        "REFRESH_TOKEN_REFRESH_TIME_KEY",
        "TOKEN_EXPIRED_TIME_MS",
        "getTOKEN_EXPIRED_TIME_MS",
        "setTOKEN_EXPIRED_TIME_MS",
        "TOKEN_REFRESH_TIME_MS",
        "getTOKEN_REFRESH_TIME_MS",
        "setTOKEN_REFRESH_TIME_MS",
        "sdk-data_release"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/AccountConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static ONE_MONTH_TIME_MS:J = 0x0L

.field public static final REFRESH_TOKEN_EXPIRED_TIME_KEY:Ljava/lang/String; = "expired_time_second"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REFRESH_TOKEN_REFRESH_TIME_KEY:Ljava/lang/String; = "refresh_time_second"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static TOKEN_EXPIRED_TIME_MS:J

.field private static TOKEN_REFRESH_TIME_MS:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/data/account/AccountConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/AccountConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/AccountConstant;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountConstant;

    const-wide v0, 0x9a7ec800L

    sput-wide v0, Lcom/onyx/android/sdk/data/account/AccountConstant;->ONE_MONTH_TIME_MS:J

    const/4 v2, 0x6

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sput-wide v2, Lcom/onyx/android/sdk/data/account/AccountConstant;->TOKEN_EXPIRED_TIME_MS:J

    sput-wide v0, Lcom/onyx/android/sdk/data/account/AccountConstant;->TOKEN_REFRESH_TIME_MS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getONE_MONTH_TIME_MS()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/data/account/AccountConstant;->ONE_MONTH_TIME_MS:J

    return-wide v0
.end method

.method public final getTOKEN_EXPIRED_TIME_MS()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/data/account/AccountConstant;->TOKEN_EXPIRED_TIME_MS:J

    return-wide v0
.end method

.method public final getTOKEN_REFRESH_TIME_MS()J
    .locals 2

    sget-wide v0, Lcom/onyx/android/sdk/data/account/AccountConstant;->TOKEN_REFRESH_TIME_MS:J

    return-wide v0
.end method

.method public final setONE_MONTH_TIME_MS(J)V
    .locals 0

    sput-wide p1, Lcom/onyx/android/sdk/data/account/AccountConstant;->ONE_MONTH_TIME_MS:J

    return-void
.end method

.method public final setTOKEN_EXPIRED_TIME_MS(J)V
    .locals 0

    sput-wide p1, Lcom/onyx/android/sdk/data/account/AccountConstant;->TOKEN_EXPIRED_TIME_MS:J

    return-void
.end method

.method public final setTOKEN_REFRESH_TIME_MS(J)V
    .locals 0

    sput-wide p1, Lcom/onyx/android/sdk/data/account/AccountConstant;->TOKEN_REFRESH_TIME_MS:J

    return-void
.end method
