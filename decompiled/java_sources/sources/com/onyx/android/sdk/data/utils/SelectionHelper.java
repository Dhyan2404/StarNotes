package com.onyx.android.sdk.data.utils;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.SelectionModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 6*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u00016B\u0007\b\u0017¢\u0006\u0002\u0010\u0003B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\u0005B\u0019\b\u0016\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u0010\bB\u0015\b\u0016\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0002\u0010\u000bB\u0015\b\u0016\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0002\u0010\rB!\b\u0016\u0012\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\u000f¢\u0006\u0002\u0010\u0011J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0006\u0010%\u001a\u00020#J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0002J\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0006\u001a\u00020\u0007J2\u0010(\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H)0\u00100\u000f\"\u0004\b\u0001\u0010)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H)0+J\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u000200J\u001b\u00101\u001a\u0002002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u00102J\u0018\u00103\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.H\u0002J!\u00104\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0002\u00105R0\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00148GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R,\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u0011R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u001f8G¢\u0006\u0006\u001a\u0004\b \u0010!¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/SelectionHelper;", "T", "Ljava/io/Serializable;", "()V", "t", "(Ljava/lang/Object;)V", "parent", "", "(Ljava/lang/String;Ljava/lang/Object;)V", "list", "", "(Ljava/util/List;)V", "selectionHelper", "(Lcom/onyx/android/sdk/data/utils/SelectionHelper;)V", Constant.MAP_TAG, "", "Lcom/onyx/android/sdk/data/common/data/SelectionModel;", "(Ljava/util/Map;)V", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getComparator", "()Ljava/util/Comparator;", "setComparator", "(Ljava/util/Comparator;)V", "selectedMap", "", "getSelectedMap", "()Ljava/util/Map;", "setSelectedMap", "selectedParentSet", "", "getSelectedParentSet", "()Ljava/util/Collection;", "clearAll", "", "clearAllSelectedStatus", "clearSelectedMap", "createSelectionModel", "getEnsureSelectedModel", "getSelectedItemMap", "R", Constants.ELEMNAME_TRANSFORM_STRING, "Lkotlin/Function1;", "getSelectedModel", "childCount", "", "hasSelectedItems", "", "isSelected", "(Ljava/lang/String;Ljava/lang/Object;)Z", "putSelectedModelMap", "toggleSelectData", "(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/android/sdk/data/common/data/SelectionModel;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSelectionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionHelper.kt\ncom/onyx/android/sdk/data/utils/SelectionHelper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n215#2,2:146\n1#3:148\n1855#4,2:149\n*S KotlinDebug\n*F\n+ 1 SelectionHelper.kt\ncom/onyx/android/sdk/data/utils/SelectionHelper\n*L\n27#1:146,2\n138#1:149,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SelectionHelper<T> implements Serializable {

    @NotNull
    public static final String DEFAULT_PARENT = "default_parent";

    @Nullable
    private Comparator<T> comparator;

    @NotNull
    private Map<String, SelectionModel<T>> selectedMap;

    @JSONCreator
    public SelectionHelper() {
        this.selectedMap = new LinkedHashMap();
    }

    private final SelectionModel<T> createSelectionModel() {
        SelectionModel<T> selectionModel = new SelectionModel<>();
        selectionModel.setComparator(this.comparator);
        return selectionModel;
    }

    private final void putSelectedModelMap(String parent, long childCount) {
        if (this.selectedMap.containsKey(parent)) {
            SelectionModel<T> selectionModel = this.selectedMap.get(parent);
            Intrinsics.checkNotNull(selectionModel);
            selectionModel.setCount(childCount);
        } else {
            Map<String, SelectionModel<T>> map = this.selectedMap;
            SelectionModel<T> createSelectionModel = createSelectionModel();
            createSelectionModel.setCount(childCount);
            map.put(parent, createSelectionModel);
        }
    }

    public final void clearAll() {
        Iterator<SelectionModel<T>> it2 = this.selectedMap.values().iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
        clearSelectedMap();
    }

    public final void clearAllSelectedStatus() {
        Iterator<SelectionModel<T>> it2 = this.selectedMap.values().iterator();
        while (it2.hasNext()) {
            it2.next().clearSelectedStatus();
        }
    }

    public final void clearSelectedMap() {
        this.selectedMap.clear();
    }

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public final Comparator<T> getComparator() {
        return this.comparator;
    }

    @NotNull
    public final SelectionModel<T> getEnsureSelectedModel(@NotNull String parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (!this.selectedMap.containsKey(parent)) {
            this.selectedMap.put(parent, createSelectionModel());
        }
        SelectionModel<T> selectionModel = this.selectedMap.get(parent);
        Intrinsics.checkNotNull(selectionModel);
        return selectionModel;
    }

    @NotNull
    public final <R> Map<String, SelectionModel<R>> getSelectedItemMap(@NotNull Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, SelectionModel<T>> entry : this.selectedMap.entrySet()) {
            String key = entry.getKey();
            SelectionModel<T> value = entry.getValue();
            if (value.getIsSelectedAllMode() || !CollectionKt.isNullOrEmpty(value.getSelectedList())) {
                SelectionModel selectionModel = new SelectionModel();
                selectionModel.setSelectedAllMode(value.getIsSelectedAllMode());
                Iterator<T> it2 = value.getSelectedList().iterator();
                while (it2.hasNext()) {
                    selectionModel.getSelectedList().add(transform.invoke(it2.next()));
                }
                linkedHashMap.put(key, selectionModel);
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public final Map<String, SelectionModel<T>> getSelectedMap() {
        return this.selectedMap;
    }

    @NotNull
    public final SelectionModel<T> getSelectedModel(@NotNull String parent, long childCount) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        putSelectedModelMap(parent, childCount);
        SelectionModel<T> selectionModel = this.selectedMap.get(parent);
        Intrinsics.checkNotNull(selectionModel);
        return selectionModel;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final Collection<String> getSelectedParentSet() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry<String, SelectionModel<T>> entry : this.selectedMap.entrySet()) {
            if (entry.getValue().hasSelectedItems()) {
                linkedHashSet.add(entry.getKey());
            }
        }
        return linkedHashSet;
    }

    public final boolean hasSelectedItems() {
        Iterator<SelectionModel<T>> it2 = this.selectedMap.values().iterator();
        while (it2.hasNext()) {
            if (it2.next().hasSelectedItems()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSelected(@NotNull String parent, T t) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        SelectionModel<T> selectionModel = this.selectedMap.get(parent);
        return selectionModel != null && selectionModel.isSelected(t);
    }

    public final void setComparator(@Nullable Comparator<T> comparator) {
        this.comparator = comparator;
    }

    public final void setSelectedMap(@NotNull Map<String, SelectionModel<T>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.selectedMap = map;
    }

    @NotNull
    public final SelectionModel<T> toggleSelectData(@NotNull String parent, T t) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        SelectionModel<T> ensureSelectedModel = getEnsureSelectedModel(parent);
        ensureSelectedModel.toggleSelectData(t);
        return ensureSelectedModel;
    }

    public SelectionHelper(T t) {
        this(DEFAULT_PARENT, t);
    }

    public SelectionHelper(@NotNull String parent, T t) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.selectedMap = new LinkedHashMap();
        getEnsureSelectedModel(parent).toggleSelectData(t);
    }

    public /* synthetic */ SelectionHelper(String str, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DEFAULT_PARENT : str, obj);
    }

    public SelectionHelper(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.selectedMap = new LinkedHashMap();
        getEnsureSelectedModel(DEFAULT_PARENT).setSelectedList(list);
    }

    public SelectionHelper(@NotNull SelectionHelper<T> selectionHelper) {
        Intrinsics.checkNotNullParameter(selectionHelper, "selectionHelper");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.selectedMap = linkedHashMap;
        linkedHashMap.clear();
        linkedHashMap.putAll(selectionHelper.selectedMap);
        this.comparator = selectionHelper.comparator;
    }

    public SelectionHelper(@NotNull Map<String, SelectionModel<T>> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.selectedMap = linkedHashMap;
        linkedHashMap.putAll(map);
    }
}
