package com.onyx.android.sdk.note.common.data.timestamp;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0014\u0010\u0015R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;", "", "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;", "a", "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;", "getTimestampBean", "()Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;", "setTimestampBean", "(Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;)V", "timestampBean", "", "b", Constants.HASIDCALL_INDEX_SIG, "isNoFrame", Constants.BOOLEAN_VALUE_SIG, "setNoFrame", "(Z)V", "c", "isAutoUpdate", "setAutoUpdate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeTimestampBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public TimestampBean timestampBean;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isNoFrame;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isAutoUpdate;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/timestamp/ShapeTimestampBean;", "bean", "Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;", "isNoFrame", "", "isAutoUpdate", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ShapeTimestampBean create(@Nullable TimestampBean bean, boolean isNoFrame, boolean isAutoUpdate) {
            ShapeTimestampBean shapeTimestampBean = new ShapeTimestampBean();
            shapeTimestampBean.setTimestampBean(bean);
            shapeTimestampBean.setNoFrame(isNoFrame);
            shapeTimestampBean.setAutoUpdate(isAutoUpdate);
            return shapeTimestampBean;
        }

        public Companion() {
        }
    }

    @Nullable
    public final TimestampBean getTimestampBean() {
        return this.timestampBean;
    }

    /* renamed from: isAutoUpdate, reason: from getter */
    public final boolean getIsAutoUpdate() {
        return this.isAutoUpdate;
    }

    /* renamed from: isNoFrame, reason: from getter */
    public final boolean getIsNoFrame() {
        return this.isNoFrame;
    }

    public final void setAutoUpdate(boolean z) {
        this.isAutoUpdate = z;
    }

    public final void setNoFrame(boolean z) {
        this.isNoFrame = z;
    }

    public final void setTimestampBean(@Nullable TimestampBean timestampBean) {
        this.timestampBean = timestampBean;
    }
}
