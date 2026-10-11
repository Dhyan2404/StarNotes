package com.onyx.android.sdk.data.serverconvert.convertor.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;", "", "tasks", "", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryTaskBean;", "(Ljava/util/List;)V", "getTasks", "()Ljava/util/List;", "setTasks", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class QueryBean {

    @NotNull
    private List<QueryTaskBean> tasks;

    public QueryBean(@NotNull List<QueryTaskBean> tasks) {
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        this.tasks = tasks;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QueryBean copy$default(QueryBean queryBean, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = queryBean.tasks;
        }
        return queryBean.copy(list);
    }

    @NotNull
    public final List<QueryTaskBean> component1() {
        return this.tasks;
    }

    @NotNull
    public final QueryBean copy(@NotNull List<QueryTaskBean> tasks) {
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        return new QueryBean(tasks);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof QueryBean) && Intrinsics.areEqual(this.tasks, ((QueryBean) other).tasks);
    }

    @NotNull
    public final List<QueryTaskBean> getTasks() {
        return this.tasks;
    }

    public int hashCode() {
        return this.tasks.hashCode();
    }

    public final void setTasks(@NotNull List<QueryTaskBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tasks = list;
    }

    @NotNull
    public String toString() {
        return "QueryBean(tasks=" + this.tasks + ')';
    }
}
