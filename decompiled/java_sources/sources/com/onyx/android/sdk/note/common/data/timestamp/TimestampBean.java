package com.onyx.android.sdk.note.common.data.timestamp;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0017¢\u0006\u0004\b\u0018\u0010\u0019B\u0011\b\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0018\u0010\u001cJ\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0004\u001a\u00020\u0000J\b\u0010\u0005\u001a\u00020\u0002H\u0016R$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0007\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\"\u0010\u0014\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/timestamp/TimestampBean;", "", "", "update", "createCopy", "toString", "a", Constants.STRING_SIG, "getPreFormatStr", "()Ljava/lang/String;", "setPreFormatStr", "(Ljava/lang/String;)V", "preFormatStr", "b", "getFormattedStr", "setFormattedStr", "formattedStr", "", "c", Constants.HASIDCALL_INDEX_SIG, "isChecked", Constants.BOOLEAN_VALUE_SIG, "setChecked", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "", "preFormatStrId", "(I)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TimestampBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String preFormatStr;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String formattedStr;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public boolean isChecked;

    @JSONCreator
    public TimestampBean() {
    }

    @NotNull
    public final TimestampBean createCopy() {
        TimestampBean timestampBean = new TimestampBean();
        timestampBean.preFormatStr = this.preFormatStr;
        timestampBean.formattedStr = this.formattedStr;
        return timestampBean;
    }

    @Nullable
    public final String getFormattedStr() {
        return this.formattedStr;
    }

    @Nullable
    public final String getPreFormatStr() {
        return this.preFormatStr;
    }

    /* renamed from: isChecked, reason: from getter */
    public final boolean getIsChecked() {
        return this.isChecked;
    }

    public final void setChecked(boolean z) {
        this.isChecked = z;
    }

    public final void setFormattedStr(@Nullable String str) {
        this.formattedStr = str;
    }

    public final void setPreFormatStr(@Nullable String str) {
        this.preFormatStr = str;
    }

    @NotNull
    public String toString() {
        return "TimestampBean{preFormatStr='" + this.preFormatStr + "', formattedStr='" + this.formattedStr + "', isChecked=" + this.isChecked + '}';
    }

    @Nullable
    public final String update() {
        String format = new TimestampFormat(this.preFormatStr).format(new Date());
        this.formattedStr = format;
        return format;
    }

    public TimestampBean(int i) {
        this.preFormatStr = ResManager.INSTANCE.getString(i);
    }
}
