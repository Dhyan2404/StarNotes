package com.onyx.android.sdk.base.data;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0015J\u0010\u0010\u001b\u001a\u00020\u001c2\b\u0010\n\u001a\u0004\u0018\u00010\u0005R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;", "", "()V", "regions", "", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "getRegions", "()Ljava/util/List;", "setRegions", "(Ljava/util/List;)V", "selectedRegion", "getSelectedRegion", "()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;", "setSelectedRegion", "(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V", "findNextRegion", "findPrevRegion", "getIndicatorText", "", "getNearestRegion", "pageIndex", "", "getPageFirstRegion", "getSelectionIndex", "isEmpty", "", "size", "updateSelectedRegion", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSearchHighlightRegion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegionData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1#2:85\n32#3,5:86\n32#3,5:91\n41#3,5:98\n41#3,5:120\n41#3,5:131\n41#3,5:138\n288#4,2:96\n766#4:103\n857#4,2:104\n2333#4,14:106\n533#4,6:125\n288#4,2:136\n*S KotlinDebug\n*F\n+ 1 SearchHighlightRegion.kt\ncom/onyx/android/sdk/base/data/SearchHighlightRegionData\n*L\n39#1:86,5\n50#1:91,5\n64#1:98,5\n69#1:120,5\n70#1:131,5\n71#1:138,5\n60#1:96,2\n66#1:103\n66#1:104,2\n67#1:106,14\n70#1:125,6\n71#1:136,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchHighlightRegionData {

    @NotNull
    private List<SearchHighlightRegion> regions = new ArrayList();

    @Nullable
    private SearchHighlightRegion selectedRegion;

    @Nullable
    public final SearchHighlightRegion findNextRegion() {
        int indexOf;
        Object orNull;
        Object first;
        List<SearchHighlightRegion> list = this.regions;
        if (!list.isEmpty()) {
            list = null;
        }
        if (list != null) {
            return null;
        }
        SearchHighlightRegion searchHighlightRegion = this.selectedRegion;
        if ((searchHighlightRegion == null ? searchHighlightRegion : null) != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.regions);
            return (SearchHighlightRegion) first;
        }
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends SearchHighlightRegion>) ((List<? extends Object>) this.regions), searchHighlightRegion);
        int intValue = ((Number) MathUtils.INSTANCE.atLeast(Integer.valueOf(indexOf + 1), 0)).intValue();
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.regions, intValue < this.regions.size() ? intValue : 0);
        return (SearchHighlightRegion) orNull;
    }

    @Nullable
    public final SearchHighlightRegion findPrevRegion() {
        int indexOf;
        Object orNull;
        Object first;
        List<SearchHighlightRegion> list = this.regions;
        if (!list.isEmpty()) {
            list = null;
        }
        if (list != null) {
            return null;
        }
        SearchHighlightRegion searchHighlightRegion = this.selectedRegion;
        if ((searchHighlightRegion == null ? searchHighlightRegion : null) != null) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.regions);
            return (SearchHighlightRegion) first;
        }
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends SearchHighlightRegion>) ((List<? extends Object>) this.regions), searchHighlightRegion);
        int intValue = ((Number) MathUtils.INSTANCE.atMost(Integer.valueOf(indexOf - 1), Integer.valueOf(this.regions.size() - 1))).intValue();
        if (intValue < 0) {
            intValue = this.regions.size() - 1;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.regions, intValue);
        return (SearchHighlightRegion) orNull;
    }

    @NotNull
    public final String getIndicatorText() {
        int indexOf;
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends SearchHighlightRegion>) ((List<? extends Object>) this.regions), this.selectedRegion);
        StringBuilder sb = new StringBuilder();
        sb.append(indexOf + 1);
        sb.append('/');
        sb.append(this.regions.size());
        return sb.toString();
    }

    @Nullable
    public final SearchHighlightRegion getNearestRegion(int pageIndex) {
        Object next;
        SearchHighlightRegion searchHighlightRegion;
        Object obj;
        SearchHighlightRegion searchHighlightRegion2 = this.selectedRegion;
        if (!((searchHighlightRegion2 != null) && searchHighlightRegion2.getPageIndex() == pageIndex)) {
            searchHighlightRegion2 = null;
        }
        if (searchHighlightRegion2 != null) {
            return searchHighlightRegion2;
        }
        List<SearchHighlightRegion> list = this.regions;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((SearchHighlightRegion) obj2).getPageIndex() == pageIndex) {
                arrayList.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                double absolute = MathUtils.INSTANCE.absolute(Integer.valueOf(CollectionKt.deltaIndex(this.regions, (SearchHighlightRegion) next, this.selectedRegion)));
                do {
                    Object next2 = it2.next();
                    double absolute2 = MathUtils.INSTANCE.absolute(Integer.valueOf(CollectionKt.deltaIndex(this.regions, (SearchHighlightRegion) next2, this.selectedRegion)));
                    if (Double.compare(absolute, absolute2) > 0) {
                        next = next2;
                        absolute = absolute2;
                    }
                } while (it2.hasNext());
            }
        } else {
            next = null;
        }
        SearchHighlightRegion searchHighlightRegion3 = (SearchHighlightRegion) next;
        if (searchHighlightRegion3 != null) {
            return searchHighlightRegion3;
        }
        SearchHighlightRegion pageFirstRegion = getPageFirstRegion(pageIndex);
        if (!(pageFirstRegion != null)) {
            pageFirstRegion = null;
        }
        if (pageFirstRegion != null) {
            return pageFirstRegion;
        }
        List<SearchHighlightRegion> list2 = this.regions;
        ListIterator<SearchHighlightRegion> listIterator = list2.listIterator(list2.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                searchHighlightRegion = null;
                break;
            }
            searchHighlightRegion = listIterator.previous();
            if (searchHighlightRegion.getPageIndex() < pageIndex) {
                break;
            }
        }
        if (!(searchHighlightRegion != null)) {
            searchHighlightRegion = null;
        }
        SearchHighlightRegion searchHighlightRegion4 = searchHighlightRegion;
        if (searchHighlightRegion4 != null) {
            return searchHighlightRegion4;
        }
        Iterator<T> it3 = this.regions.iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            }
            obj = it3.next();
            if (((SearchHighlightRegion) obj).getPageIndex() > pageIndex) {
                break;
            }
        }
        if (!(((SearchHighlightRegion) obj) != null)) {
            obj = null;
        }
        SearchHighlightRegion searchHighlightRegion5 = (SearchHighlightRegion) obj;
        if (searchHighlightRegion5 != null) {
            return searchHighlightRegion5;
        }
        return null;
    }

    @Nullable
    public final SearchHighlightRegion getPageFirstRegion(int pageIndex) {
        Object obj;
        Iterator<T> it2 = this.regions.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((SearchHighlightRegion) obj).getPageIndex() == pageIndex) {
                break;
            }
        }
        return (SearchHighlightRegion) obj;
    }

    @NotNull
    public final List<SearchHighlightRegion> getRegions() {
        return this.regions;
    }

    @Nullable
    public final SearchHighlightRegion getSelectedRegion() {
        return this.selectedRegion;
    }

    public final int getSelectionIndex() {
        int indexOf;
        indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends SearchHighlightRegion>) ((List<? extends Object>) this.regions), this.selectedRegion);
        return indexOf;
    }

    public final boolean isEmpty() {
        return this.regions.isEmpty();
    }

    public final void setRegions(@NotNull List<SearchHighlightRegion> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.regions = list;
    }

    public final void setSelectedRegion(@Nullable SearchHighlightRegion searchHighlightRegion) {
        this.selectedRegion = searchHighlightRegion;
    }

    public final int size() {
        return this.regions.size();
    }

    public final void updateSelectedRegion(@Nullable SearchHighlightRegion selectedRegion) {
        if (selectedRegion == null) {
            return;
        }
        this.selectedRegion = selectedRegion;
    }
}
