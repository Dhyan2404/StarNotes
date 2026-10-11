package com.onyx.android.sdk.data.serverconvert.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J%\u0010\u0012\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;", "", "components", "", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertParamsBean;", "target", "", "(Ljava/util/List;Ljava/lang/String;)V", "getComponents", "()Ljava/util/List;", "setComponents", "(Ljava/util/List;)V", "getTarget", "()Ljava/lang/String;", "setTarget", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ConvertRequestBody {

    @Nullable
    private List<ConvertParamsBean> components;

    @NotNull
    private String target;

    /* JADX WARN: Multi-variable type inference failed */
    public ConvertRequestBody() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConvertRequestBody copy$default(ConvertRequestBody convertRequestBody, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = convertRequestBody.components;
        }
        if ((i & 2) != 0) {
            str = convertRequestBody.target;
        }
        return convertRequestBody.copy(list, str);
    }

    @Nullable
    public final List<ConvertParamsBean> component1() {
        return this.components;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTarget() {
        return this.target;
    }

    @NotNull
    public final ConvertRequestBody copy(@Nullable List<ConvertParamsBean> components, @NotNull String target) {
        Intrinsics.checkNotNullParameter(target, "target");
        return new ConvertRequestBody(components, target);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConvertRequestBody)) {
            return false;
        }
        ConvertRequestBody convertRequestBody = (ConvertRequestBody) other;
        return Intrinsics.areEqual(this.components, convertRequestBody.components) && Intrinsics.areEqual(this.target, convertRequestBody.target);
    }

    @Nullable
    public final List<ConvertParamsBean> getComponents() {
        return this.components;
    }

    @NotNull
    public final String getTarget() {
        return this.target;
    }

    public int hashCode() {
        List<ConvertParamsBean> list = this.components;
        return ((list == null ? 0 : list.hashCode()) * 31) + this.target.hashCode();
    }

    public final void setComponents(@Nullable List<ConvertParamsBean> list) {
        this.components = list;
    }

    public final void setTarget(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.target = str;
    }

    @NotNull
    public String toString() {
        return "ConvertRequestBody(components=" + this.components + ", target=" + this.target + ')';
    }

    public ConvertRequestBody(@Nullable List<ConvertParamsBean> list, @NotNull String target) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.components = list;
        this.target = target;
    }

    public /* synthetic */ ConvertRequestBody(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? "" : str);
    }
}
