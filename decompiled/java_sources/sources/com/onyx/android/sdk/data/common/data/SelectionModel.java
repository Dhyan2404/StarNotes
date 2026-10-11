package com.onyx.android.sdk.data.common.data;

import androidx.databinding.BaseObservable;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\f\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0007\b\u0017¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020 J#\u0010\"\u001a\u00020\u00132\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000$2\u0006\u0010%\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010&J\u0006\u0010'\u001a\u00020\u0013J\u0015\u0010(\u001a\u00020\u00132\u0006\u0010%\u001a\u00028\u0000H\u0007¢\u0006\u0002\u0010)J#\u0010*\u001a\u00020\u00132\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a2\u0006\u0010%\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010&J\u000e\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u0013J\u0006\u0010-\u001a\u00020 J\u0013\u0010.\u001a\u00020 2\u0006\u0010%\u001a\u00028\u0000¢\u0006\u0002\u0010/R0\u0010\b\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\n8GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u00138G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00068G¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0010R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/SelectionModel;", "T", "Landroidx/databinding/BaseObservable;", "Ljava/io/Serializable;", "()V", "count", "", "(J)V", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getComparator", "()Ljava/util/Comparator;", "setComparator", "(Ljava/util/Comparator;)V", "getCount", "()J", "setCount", "isAllDataSelected", "", Constants.BOOLEAN_VALUE_SIG, "<set-?>", "isSelectedAllMode", "selectedCount", "getSelectedCount", "selectedList", "", "getSelectedList", "()Ljava/util/List;", "setSelectedList", "(Ljava/util/List;)V", Constants.CLEAR_ATTRIBUTES, "", "clearSelectedStatus", Keywords.FUNC_CONTAINS_STRING, "list", "", "t", "(Ljava/util/List;Ljava/lang/Object;)Z", "hasSelectedItems", "isSelected", "(Ljava/lang/Object;)Z", SyncConstant.SYNC_ACTION_REMOVE, "setSelectedAllMode", "selectedAllMode", "toggleAllSection", "toggleSelectData", "(Ljava/lang/Object;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SelectionModel<T> extends BaseObservable implements Serializable {

    @Nullable
    private Comparator<T> comparator;
    private long count;
    private boolean isSelectedAllMode;

    @NotNull
    private List<T> selectedList;

    @JSONCreator
    public SelectionModel() {
        this.selectedList = new ArrayList();
    }

    private final boolean contains(List<? extends T> list, T t) {
        if (this.comparator == null) {
            return list.contains(t);
        }
        for (T t2 : list) {
            Comparator<T> comparator = this.comparator;
            Intrinsics.checkNotNull(comparator);
            if (comparator.compare(t2, t) == 0) {
                return true;
            }
        }
        return false;
    }

    private final boolean remove(List<T> list, T t) {
        if (this.comparator == null) {
            return list.remove(t);
        }
        for (T t2 : list) {
            Comparator<T> comparator = this.comparator;
            Intrinsics.checkNotNull(comparator);
            if (comparator.compare(t2, t) == 0) {
                return list.remove(t2);
            }
        }
        return false;
    }

    public final void clear() {
        clearSelectedStatus();
        this.count = 0L;
    }

    public final void clearSelectedStatus() {
        this.selectedList.clear();
        setSelectedAllMode(false);
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final Comparator<T> getComparator() {
        return this.comparator;
    }

    public final long getCount() {
        return this.count;
    }

    @JSONField(deserialize = false, serialize = false)
    public final long getSelectedCount() {
        return this.isSelectedAllMode ? this.count - this.selectedList.size() : this.selectedList.size();
    }

    @NotNull
    public final List<T> getSelectedList() {
        return this.selectedList;
    }

    public final boolean hasSelectedItems() {
        return (this.isSelectedAllMode && this.count > ((long) this.selectedList.size())) || !(this.isSelectedAllMode || this.selectedList.size() == 0);
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isAllDataSelected() {
        return this.isSelectedAllMode ? this.selectedList.isEmpty() : (this.selectedList.isEmpty() ^ true) && ((long) this.selectedList.size()) >= this.count;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSelected(T t) {
        return this.isSelectedAllMode != contains(this.selectedList, t);
    }

    /* renamed from: isSelectedAllMode, reason: from getter */
    public final boolean getIsSelectedAllMode() {
        return this.isSelectedAllMode;
    }

    public final void setComparator(@Nullable Comparator<T> comparator) {
        this.comparator = comparator;
    }

    public final void setCount(long j) {
        this.count = j;
    }

    public final void setSelectedAllMode(boolean selectedAllMode) {
        this.isSelectedAllMode = selectedAllMode;
        this.selectedList.clear();
        notifyChange();
    }

    public final void setSelectedList(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectedList = list;
    }

    public final void toggleAllSection() {
        this.isSelectedAllMode = !isAllDataSelected();
        this.selectedList.clear();
    }

    public final void toggleSelectData(T t) {
        if (!remove(this.selectedList, t)) {
            this.selectedList.add(t);
        }
        notifyChange();
    }

    public SelectionModel(long j) {
        this.selectedList = new ArrayList();
        this.isSelectedAllMode = false;
        this.selectedList = new ArrayList();
        this.count = j;
    }
}
