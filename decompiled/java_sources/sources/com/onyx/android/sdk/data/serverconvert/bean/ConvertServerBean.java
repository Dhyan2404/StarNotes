package com.onyx.android.sdk.data.serverconvert.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerBean;", "", "count", "", "results", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerLanguageBean;", "(ILjava/util/List;)V", "getCount", "()I", "getResults", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ConvertServerBean {
    private final int count;

    @Nullable
    private final List<ConvertServerLanguageBean> results;

    /* JADX WARN: Multi-variable type inference failed */
    public ConvertServerBean() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConvertServerBean copy$default(ConvertServerBean convertServerBean, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = convertServerBean.count;
        }
        if ((i2 & 2) != 0) {
            list = convertServerBean.results;
        }
        return convertServerBean.copy(i, list);
    }

    /* renamed from: component1, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<ConvertServerLanguageBean> component2() {
        return this.results;
    }

    @NotNull
    public final ConvertServerBean copy(int count, @Nullable List<ConvertServerLanguageBean> results) {
        return new ConvertServerBean(count, results);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConvertServerBean)) {
            return false;
        }
        ConvertServerBean convertServerBean = (ConvertServerBean) other;
        return this.count == convertServerBean.count && Intrinsics.areEqual(this.results, convertServerBean.results);
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<ConvertServerLanguageBean> getResults() {
        return this.results;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.count) * 31;
        List<ConvertServerLanguageBean> list = this.results;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        return "ConvertServerBean(count=" + this.count + ", results=" + this.results + ')';
    }

    public ConvertServerBean(int i, @Nullable List<ConvertServerLanguageBean> list) {
        this.count = i;
        this.results = list;
    }

    public /* synthetic */ ConvertServerBean(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : list);
    }
}
