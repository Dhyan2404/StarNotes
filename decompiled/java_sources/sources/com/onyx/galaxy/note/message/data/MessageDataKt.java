package com.onyx.galaxy.note.message.data;

import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.message.model.NotificationModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"convertToLocal", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "Lcom/onyx/galaxy/note/message/data/UserNotification;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class MessageDataKt {
    @NotNull
    public static final NotificationModel convertToLocal(@NotNull UserNotification userNotification) {
        Intrinsics.checkNotNullParameter(userNotification, "<this>");
        NotificationModel notificationModel = new NotificationModel();
        notificationModel.setUniqueId(userNotification.getUniqueId());
        notificationModel.setType(userNotification.getType());
        notificationModel.setComponents(userNotification.getComponents());
        notificationModel.setCacheable(userNotification.getCacheable());
        notificationModel.setHandleStrategy(userNotification.getHandleStrategy());
        notificationModel.setDisplayStrategy(userNotification.getDisplayStrategy());
        notificationModel.setDisplayTimes(userNotification.getDisplayTimes());
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        notificationModel.setPeriodTime(dateTimeUtil.hourToMs(userNotification.getPeriodTime()));
        notificationModel.setPriority(userNotification.getPriority());
        notificationModel.setEffectiveDate(DateTimeUtil.rfcTimeToLong$default(dateTimeUtil, userNotification.getEffectiveDate(), false, 2, null));
        notificationModel.setExpiredDate(DateTimeUtil.rfcTimeToLong$default(dateTimeUtil, userNotification.getExpiredDate(), false, 2, null));
        return notificationModel;
    }
}
