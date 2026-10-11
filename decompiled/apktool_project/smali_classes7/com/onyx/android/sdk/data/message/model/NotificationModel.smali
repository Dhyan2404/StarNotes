.class public final Lcom/onyx/android/sdk/data/message/model/NotificationModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0006\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u00103\u001a\u00020\u0010H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u001a\u0010$\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0012\"\u0004\u0008&\u0010\u0014R\u001a\u0010\'\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001e\"\u0004\u0008)\u0010 R\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u00100\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0018\"\u0004\u00082\u0010\u001a\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "cacheable",
        "",
        "getCacheable",
        "()Z",
        "setCacheable",
        "(Z)V",
        "components",
        "Lcom/onyx/android/sdk/data/message/model/NotificationComponents;",
        "getComponents",
        "()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;",
        "setComponents",
        "(Lcom/onyx/android/sdk/data/message/model/NotificationComponents;)V",
        "displayStrategy",
        "",
        "getDisplayStrategy",
        "()Ljava/lang/String;",
        "setDisplayStrategy",
        "(Ljava/lang/String;)V",
        "displayTimes",
        "",
        "getDisplayTimes",
        "()I",
        "setDisplayTimes",
        "(I)V",
        "effectiveDate",
        "",
        "getEffectiveDate",
        "()J",
        "setEffectiveDate",
        "(J)V",
        "expiredDate",
        "getExpiredDate",
        "setExpiredDate",
        "handleStrategy",
        "getHandleStrategy",
        "setHandleStrategy",
        "periodTime",
        "getPeriodTime",
        "setPeriodTime",
        "priority",
        "",
        "getPriority",
        "()D",
        "setPriority",
        "(D)V",
        "type",
        "getType",
        "setType",
        "toString",
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
.field private cacheable:Z

.field private components:Lcom/onyx/android/sdk/data/message/model/NotificationComponents;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private displayStrategy:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private displayTimes:I

.field private effectiveDate:J

.field private expiredDate:J

.field private handleStrategy:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private periodTime:J

.field private priority:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->handleStrategy:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->displayStrategy:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->cacheable:Z

    new-instance v0, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->components:Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    return-void
.end method


# virtual methods
.method public final getCacheable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->cacheable:Z

    return p0
.end method

.method public final getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->components:Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    return-object p0
.end method

.method public final getDisplayStrategy()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->displayStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayTimes()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->displayTimes:I

    return p0
.end method

.method public final getEffectiveDate()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->effectiveDate:J

    return-wide v0
.end method

.method public final getExpiredDate()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->expiredDate:J

    return-wide v0
.end method

.method public final getHandleStrategy()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->handleStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public final getPeriodTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->periodTime:J

    return-wide v0
.end method

.method public final getPriority()D
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->priority:D

    return-wide v0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->type:I

    return p0
.end method

.method public final setCacheable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->cacheable:Z

    return-void
.end method

.method public final setComponents(Lcom/onyx/android/sdk/data/message/model/NotificationComponents;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationComponents;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->components:Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    return-void
.end method

.method public final setDisplayStrategy(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->displayStrategy:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayTimes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->displayTimes:I

    return-void
.end method

.method public final setEffectiveDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->effectiveDate:J

    return-void
.end method

.method public final setExpiredDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->expiredDate:J

    return-void
.end method

.method public final setHandleStrategy(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->handleStrategy:Ljava/lang/String;

    return-void
.end method

.method public final setPeriodTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->periodTime:J

    return-void
.end method

.method public final setPriority(D)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->priority:D

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->type:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
