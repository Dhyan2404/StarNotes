package com.onyx.android.sdk.data.serverconvert.convertor.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J#\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;", "", "components", "", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertComponentBean;", "target", "", "(Ljava/util/List;Ljava/lang/String;)V", "getComponents", "()Ljava/util/List;", "setComponents", "(Ljava/util/List;)V", "getTarget", "()Ljava/lang/String;", "setTarget", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class DocConvertBean {

    @NotNull
    private List<DocConvertComponentBean> components;

    @NotNull
    private String target;

    public DocConvertBean(@NotNull List<DocConvertComponentBean> components, @NotNull String target) {
        Intrinsics.checkNotNullParameter(components, "components");
        Intrinsics.checkNotNullParameter(target, "target");
        this.components = components;
        this.target = target;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DocConvertBean copy$default(DocConvertBean docConvertBean, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = docConvertBean.components;
        }
        if ((i & 2) != 0) {
            str = docConvertBean.target;
        }
        return docConvertBean.copy(list, str);
    }

    @NotNull
    public final List<DocConvertComponentBean> component1() {
        return this.components;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTarget() {
        return this.target;
    }

    @NotNull
    public final DocConvertBean copy(@NotNull List<DocConvertComponentBean> components, @NotNull String target) {
        Intrinsics.checkNotNullParameter(components, "components");
        Intrinsics.checkNotNullParameter(target, "target");
        return new DocConvertBean(components, target);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DocConvertBean)) {
            return false;
        }
        DocConvertBean docConvertBean = (DocConvertBean) other;
        return Intrinsics.areEqual(this.components, docConvertBean.components) && Intrinsics.areEqual(this.target, docConvertBean.target);
    }

    @NotNull
    public final List<DocConvertComponentBean> getComponents() {
        return this.components;
    }

    @NotNull
    public final String getTarget() {
        return this.target;
    }

    public int hashCode() {
        return (this.components.hashCode() * 31) + this.target.hashCode();
    }

    public final void setComponents(@NotNull List<DocConvertComponentBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.components = list;
    }

    public final void setTarget(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.target = str;
    }

    @NotNull
    public String toString() {
        return "DocConvertBean(components=" + this.components + ", target=" + this.target + ')';
    }
}
