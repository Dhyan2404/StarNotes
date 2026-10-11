package com.onyx.android.sdk.data.message.model;

import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u0006\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u00103\u001a\u00020\u0010H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\u001a\u0010$\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0012\"\u0004\b&\u0010\u0014R\u001a\u0010'\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001e\"\u0004\b)\u0010 R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0018\"\u0004\b2\u0010\u001a¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "cacheable", "", "getCacheable", Constants.BOOLEAN_VALUE_SIG, "setCacheable", "(Z)V", "components", "Lcom/onyx/android/sdk/data/message/model/NotificationComponents;", "getComponents", "()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;", "setComponents", "(Lcom/onyx/android/sdk/data/message/model/NotificationComponents;)V", "displayStrategy", "", "getDisplayStrategy", "()Ljava/lang/String;", "setDisplayStrategy", "(Ljava/lang/String;)V", "displayTimes", "", "getDisplayTimes", "()I", "setDisplayTimes", "(I)V", MessageTemplateKt.KEY_EFFECTIVE_DATE, "", "getEffectiveDate", "()J", "setEffectiveDate", "(J)V", MessageTemplateKt.KEY_EXPIRE_DATE, "getExpiredDate", "setExpiredDate", "handleStrategy", "getHandleStrategy", "setHandleStrategy", "periodTime", "getPeriodTime", "setPeriodTime", "priority", "", "getPriority", Constants.DOUBLE_VALUE_SIG, "setPriority", "(D)V", "type", "getType", "setType", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NotificationModel extends BaseReplicatorModel {
    private int displayTimes;
    private long effectiveDate;
    private long expiredDate;
    private long periodTime;
    private double priority;
    private int type;

    @NotNull
    private String handleStrategy = "";

    @NotNull
    private String displayStrategy = "";
    private boolean cacheable = true;

    @NotNull
    private NotificationComponents components = new NotificationComponents();

    public final boolean getCacheable() {
        return this.cacheable;
    }

    @NotNull
    public final NotificationComponents getComponents() {
        return this.components;
    }

    @NotNull
    public final String getDisplayStrategy() {
        return this.displayStrategy;
    }

    public final int getDisplayTimes() {
        return this.displayTimes;
    }

    public final long getEffectiveDate() {
        return this.effectiveDate;
    }

    public final long getExpiredDate() {
        return this.expiredDate;
    }

    @NotNull
    public final String getHandleStrategy() {
        return this.handleStrategy;
    }

    public final long getPeriodTime() {
        return this.periodTime;
    }

    public final double getPriority() {
        return this.priority;
    }

    public final int getType() {
        return this.type;
    }

    public final void setCacheable(boolean z) {
        this.cacheable = z;
    }

    public final void setComponents(@NotNull NotificationComponents notificationComponents) {
        Intrinsics.checkNotNullParameter(notificationComponents, "<set-?>");
        this.components = notificationComponents;
    }

    public final void setDisplayStrategy(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.displayStrategy = str;
    }

    public final void setDisplayTimes(int i) {
        this.displayTimes = i;
    }

    public final void setEffectiveDate(long j) {
        this.effectiveDate = j;
    }

    public final void setExpiredDate(long j) {
        this.expiredDate = j;
    }

    public final void setHandleStrategy(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.handleStrategy = str;
    }

    public final void setPeriodTime(long j) {
        this.periodTime = j;
    }

    public final void setPriority(double d) {
        this.priority = d;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @NotNull
    public String toString() {
        return String.valueOf(this.type);
    }
}
