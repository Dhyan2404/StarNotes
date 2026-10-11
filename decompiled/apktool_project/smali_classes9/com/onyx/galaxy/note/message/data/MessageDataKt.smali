.class public final Lcom/onyx/galaxy/note/message/data/MessageDataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "convertToLocal",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "Lcom/onyx/galaxy/note/message/data/UserNotification;",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final convertToLocal(Lcom/onyx/galaxy/note/message/data/UserNotification;)Lcom/onyx/android/sdk/data/message/model/NotificationModel;
    .locals 8
    .param p0    # Lcom/onyx/galaxy/note/message/data/UserNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setType(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setComponents(Lcom/onyx/android/sdk/data/message/model/NotificationComponents;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getCacheable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setCacheable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getHandleStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setHandleStrategy(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getDisplayStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setDisplayStrategy(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getDisplayTimes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setDisplayTimes(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getPeriodTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->hourToMs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setPeriodTime(J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getPriority()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setPriority(D)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getEffectiveDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->rfcTimeToLong$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;ZILjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setEffectiveDate(J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/data/UserNotification;->getExpiredDate()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->rfcTimeToLong$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;Ljava/lang/String;ZILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->setExpiredDate(J)V

    return-object v0
.end method
