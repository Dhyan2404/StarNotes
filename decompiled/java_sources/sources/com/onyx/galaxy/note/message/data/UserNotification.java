package com.onyx.galaxy.note.message.data;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.message.model.NotificationComponents;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bF\u0010GR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\bR\"\u0010-\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\f\u001a\u0004\b+\u0010\u000e\"\u0004\b,\u0010\u0010R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0004\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\"\u0010E\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0004\u001a\u0004\bC\u0010\u0006\"\u0004\bD\u0010\b¨\u0006H"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/data/UserNotification;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "", "b", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/data/message/model/NotificationComponents;", "c", "Lcom/onyx/android/sdk/data/message/model/NotificationComponents;", "getComponents", "()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;", "setComponents", "(Lcom/onyx/android/sdk/data/message/model/NotificationComponents;)V", "components", "", "d", Constants.HASIDCALL_INDEX_SIG, "getCacheable", Constants.BOOLEAN_VALUE_SIG, "setCacheable", "(Z)V", "cacheable", "e", "getHandleStrategy", "setHandleStrategy", "handleStrategy", C6997f.f39671c, "getDisplayStrategy", "setDisplayStrategy", "displayStrategy", C6998g.f39679a, "getDisplayTimes", "setDisplayTimes", "displayTimes", "", C6999h.f39688c, "J", "getPeriodTime", "()J", "setPeriodTime", "(J)V", "periodTime", "", "i", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getPriority", Constants.DOUBLE_VALUE_SIG, "setPriority", "(D)V", "priority", "j", "getEffectiveDate", "setEffectiveDate", MessageTemplateKt.KEY_EFFECTIVE_DATE, C4921e.f26537n, "getExpiredDate", "setExpiredDate", MessageTemplateKt.KEY_EXPIRE_DATE, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UserNotification {

    /* renamed from: b, reason: from kotlin metadata */
    public int type;

    /* renamed from: g, reason: from kotlin metadata */
    public int displayTimes;

    /* renamed from: h, reason: from kotlin metadata */
    public long periodTime;

    /* renamed from: i, reason: from kotlin metadata */
    public double priority;

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {"_id"})
    @NotNull
    public String uniqueId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(alternateNames = {NotificationCompat.WearableExtender.f5050p})
    @NotNull
    public NotificationComponents components = new NotificationComponents();

    /* renamed from: d, reason: from kotlin metadata */
    public boolean cacheable = true;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String handleStrategy = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String displayStrategy = "";

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String effectiveDate = "";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public String expiredDate = "";

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

    @NotNull
    public final String getEffectiveDate() {
        return this.effectiveDate;
    }

    @NotNull
    public final String getExpiredDate() {
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

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
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

    public final void setEffectiveDate(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.effectiveDate = str;
    }

    public final void setExpiredDate(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.expiredDate = str;
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

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }
}
