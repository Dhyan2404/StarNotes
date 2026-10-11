.class public final Lcom/onyx/android/sdk/data/account/utils/QuotaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/utils/QuotaManager;",
        "",
        "()V",
        "getAudioRecordQuota",
        "",
        "getNoteCreateQuota",
        "useDefault",
        "",
        "getRegisterGuideQuota",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/account/utils/QuotaManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;->INSTANCE:Lcom/onyx/android/sdk/data/account/utils/QuotaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getNoteCreateQuota$default(Lcom/onyx/android/sdk/data/account/utils/QuotaManager;ZILjava/lang/Object;)J
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;->getNoteCreateQuota(Z)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final getAudioRecordQuota()J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public final getNoteCreateQuota(Z)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public final getRegisterGuideQuota()J
    .locals 3

    const-string p0, "noteCountRegisterGuide"

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->isMessageExpired(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-string v0, "noteQuota"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method
