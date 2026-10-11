.class public final Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;",
        "",
        "()V",
        "category",
        "",
        "getCategory",
        "()Ljava/lang/String;",
        "setCategory",
        "(Ljava/lang/String;)V",
        "dailyQuota",
        "",
        "getDailyQuota",
        "()J",
        "setDailyQuota",
        "(J)V",
        "dailyUsedQuota",
        "getDailyUsedQuota",
        "setDailyUsedQuota",
        "title",
        "getTitle",
        "setTitle",
        "totalQuota",
        "getTotalQuota",
        "setTotalQuota",
        "totalUsedQuota",
        "getTotalUsedQuota",
        "setTotalUsedQuota",
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


# instance fields
.field private category:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dailyQuota:J

.field private dailyUsedQuota:J

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private totalQuota:J

.field private totalUsedQuota:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getDailyQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->dailyQuota:J

    return-wide v0
.end method

.method public final getDailyUsedQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->dailyUsedQuota:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->totalQuota:J

    return-wide v0
.end method

.method public final getTotalUsedQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->totalUsedQuota:J

    return-wide v0
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->category:Ljava/lang/String;

    return-void
.end method

.method public final setDailyQuota(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->dailyQuota:J

    return-void
.end method

.method public final setDailyUsedQuota(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->dailyUsedQuota:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTotalQuota(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->totalQuota:J

    return-void
.end method

.method public final setTotalUsedQuota(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountQuotaSubItem;->totalUsedQuota:J

    return-void
.end method
