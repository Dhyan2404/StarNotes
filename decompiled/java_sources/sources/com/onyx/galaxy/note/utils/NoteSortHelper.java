package com.onyx.galaxy.note.utils;

import androidx.lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ComparatorUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.PageModelBean;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.settings.data.SortByOption;
import com.onyx.galaxy.note.settings.data.SortOrderOption;
import com.onyx.galaxy.note.utils.NoteSortHelper;
import com.onyx.galaxy.note.utils.PinYinStringHelper;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\"\u0010\n\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R%\u0010\u001e\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\u00178\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR%\u0010!\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u001f0\u001f0\u00178\u0006¢\u0006\f\n\u0004\b\n\u0010\u001b\u001a\u0004\b \u0010\u001d¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/NoteSortHelper;", "", "", "Lcom/onyx/galaxy/note/category/data/NotePageBean;", "notePageList", "sortNotePageList", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "", "d", "Lcom/onyx/galaxy/note/settings/data/SortByOption;", "a", "Lcom/onyx/galaxy/note/settings/data/SortByOption;", "getSortByOp", "()Lcom/onyx/galaxy/note/settings/data/SortByOption;", "sortByOp", "Lcom/onyx/galaxy/note/settings/data/SortOrderOption;", "b", "Lcom/onyx/galaxy/note/settings/data/SortOrderOption;", "getSortOrderOp", "()Lcom/onyx/galaxy/note/settings/data/SortOrderOption;", "sortOrderOp", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/base/data/SortBy;", "kotlin.jvm.PlatformType", "c", "Landroidx/lifecycle/MutableLiveData;", "getSortType", "()Landroidx/lifecycle/MutableLiveData;", "sortType", "Lcom/onyx/android/sdk/base/data/SortOrder;", "getOrderType", "orderType", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteSortHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSortHelper.kt\ncom/onyx/galaxy/note/utils/NoteSortHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n766#2:136\n857#2,2:137\n766#2:139\n857#2,2:140\n1747#2,3:142\n766#2:145\n857#2,2:146\n766#2:148\n857#2,2:149\n1855#2,2:151\n1549#2:153\n1620#2,3:154\n*S KotlinDebug\n*F\n+ 1 NoteSortHelper.kt\ncom/onyx/galaxy/note/utils/NoteSortHelper\n*L\n35#1:136\n35#1:137,2\n36#1:139\n36#1:140,2\n57#1:142,3\n83#1:145\n83#1:146,2\n84#1:148\n84#1:149,2\n89#1:151,2\n114#1:153\n114#1:154,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteSortHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SortByOption sortByOp;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final SortOrderOption sortOrderOp;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<SortBy> sortType;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<SortOrder> orderType;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SortBy.values().length];
            try {
                iArr[SortBy.Name.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortBy.UpdateAt.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SortBy.Manual.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public NoteSortHelper() {
        SortByOption sortByOption = new SortByOption(null, null, null, 7, null);
        this.sortByOp = sortByOption;
        SortOrderOption sortOrderOption = new SortOrderOption(null, null, null, 7, null);
        this.sortOrderOp = sortOrderOption;
        this.sortType = new MutableLiveData<>(sortByOption.get());
        this.orderType = new MutableLiveData<>(sortOrderOption.get());
    }

    /* renamed from: e */
    public static final int m51994e(boolean z, NotePageBean notePageBean, NotePageBean notePageBean2) {
        return z ? Intrinsics.compare(notePageBean.getSortUpdateAt(), notePageBean2.getSortUpdateAt()) : Intrinsics.compare(notePageBean2.getSortUpdateAt(), notePageBean.getSortUpdateAt());
    }

    /* renamed from: f */
    public static final int m51995f(boolean z, NotePageBean notePageBean, NotePageBean notePageBean2) {
        return z ? Float.compare(notePageBean.getManualOrderIndex(), notePageBean2.getManualOrderIndex()) : Intrinsics.compare(notePageBean2.getSortUpdateAt(), notePageBean.getSortUpdateAt());
    }

    /* renamed from: g */
    public static final int m51996g(boolean z, NotePageBean notePageBean, NotePageBean notePageBean2) {
        return z ? Intrinsics.compare(notePageBean.getSortCreateAt(), notePageBean2.getSortCreateAt()) : Intrinsics.compare(notePageBean2.getSortCreateAt(), notePageBean.getSortCreateAt());
    }

    /* renamed from: d */
    public final void m51997d(Exception e, List<NotePageBean> notePageList) {
        int collectionSizeOrDefault;
        String stackTraceToString;
        List<NotePageBean> list = notePageList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (NotePageBean notePageBean : list) {
            SortBy value = this.sortType.getValue();
            int i = value == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
            arrayList.add((i != 1 ? i != 2 ? i != 3 ? Long.valueOf(notePageBean.getSortCreateAt()) : Float.valueOf(notePageBean.getManualOrderIndex()) : Long.valueOf(notePageBean.getSortUpdateAt()) : notePageBean.getSortName()).toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("sort by:");
        SortBy value2 = this.sortType.getValue();
        sb.append(value2 != null ? value2.name() : null);
        sb.append(";order type:");
        SortOrder value3 = this.orderType.getValue();
        sb.append(value3 != null ? value3.name() : null);
        sb.append(";e:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
        sb.append(stackTraceToString);
        sb.append(";sortList:");
        sb.append(JSONUtils.INSTANCE.toJson(arrayList));
        LogUtils.file(sb.toString());
    }

    @NotNull
    public final MutableLiveData<SortOrder> getOrderType() {
        return this.orderType;
    }

    @NotNull
    public final SortByOption getSortByOp() {
        return this.sortByOp;
    }

    @NotNull
    public final SortOrderOption getSortOrderOp() {
        return this.sortOrderOp;
    }

    @NotNull
    public final MutableLiveData<SortBy> getSortType() {
        return this.sortType;
    }

    @NotNull
    public final List<NotePageBean> sortNotePageList(@NotNull List<NotePageBean> notePageList) {
        List mutableList;
        List mutableList2;
        Comparator comparator;
        Map mutableMap;
        List flatten;
        Intrinsics.checkNotNullParameter(notePageList, "notePageList");
        final boolean z = false;
        final boolean z2 = this.orderType.getValue() == SortOrder.Asc;
        ArrayList arrayList = new ArrayList();
        List<NotePageBean> list = notePageList;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((NotePageBean) obj).isNoteFolder()) {
                arrayList2.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list) {
            if (!((NotePageBean) obj2).isNoteFolder()) {
                arrayList3.add(obj2);
            }
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        SortBy value = this.sortType.getValue();
        int i = value == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i == 1) {
            comparator = new PinYinStringHelper.PinYinSortComparator<NotePageBean>() { // from class: com.onyx.galaxy.note.utils.NoteSortHelper$sortNotePageList$sortComparator$1
                @Override // java.util.Comparator
                public int compare(@NotNull NotePageBean o1, @NotNull NotePageBean o2) {
                    CharSequence trim;
                    CharSequence trim2;
                    Intrinsics.checkNotNullParameter(o1, "o1");
                    Intrinsics.checkNotNullParameter(o2, "o2");
                    ComparatorUtils comparatorUtils = ComparatorUtils.INSTANCE;
                    PinYinStringHelper pinYinStringHelper = PinYinStringHelper.INSTANCE;
                    trim = StringsKt__StringsKt.trim((CharSequence) o1.getSortName());
                    String pinYin = pinYinStringHelper.getPinYin(trim.toString());
                    trim2 = StringsKt__StringsKt.trim((CharSequence) o2.getSortName());
                    String pinYin2 = pinYinStringHelper.getPinYin(trim2.toString());
                    SortOrder value2 = NoteSortHelper.this.getOrderType().getValue();
                    Intrinsics.checkNotNull(value2);
                    return comparatorUtils.stringComparator(pinYin, pinYin2, value2);
                }
            };
        } else if (i == 2) {
            comparator = new Comparator() { // from class: com.sunia.HTREnginev2.a2k
                @Override // java.util.Comparator
                public final int compare(Object obj3, Object obj4) {
                    int m51994e;
                    m51994e = NoteSortHelper.m51994e(z2, (NotePageBean) obj3, (NotePageBean) obj4);
                    return m51994e;
                }
            };
        } else if (i != 3) {
            comparator = new Comparator() { // from class: com.sunia.HTREnginev2.c2k
                @Override // java.util.Comparator
                public final int compare(Object obj3, Object obj4) {
                    int m51996g;
                    m51996g = NoteSortHelper.m51996g(z2, (NotePageBean) obj3, (NotePageBean) obj4);
                    return m51996g;
                }
            };
        } else {
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (!(((NotePageBean) it2.next()).getManualOrderIndex() == -1.0f)) {
                        z = true;
                        break;
                    }
                }
            }
            comparator = new Comparator() { // from class: com.sunia.HTREnginev2.b2k
                @Override // java.util.Comparator
                public final int compare(Object obj3, Object obj4) {
                    int m51995f;
                    m51995f = NoteSortHelper.m51995f(z, (NotePageBean) obj3, (NotePageBean) obj4);
                    return m51995f;
                }
            };
        }
        try {
            if (this.sortType.getValue() != SortBy.Manual) {
                Collections.sort(mutableList, comparator);
                Collections.sort(mutableList2, comparator);
                ArrayList<NotePageBean> arrayList4 = new ArrayList();
                for (Object obj3 : mutableList2) {
                    if (((NotePageBean) obj3).isNoteType()) {
                        arrayList4.add(obj3);
                    }
                }
                ArrayList arrayList5 = new ArrayList();
                for (Object obj4 : mutableList2) {
                    if (((NotePageBean) obj4).isPageType()) {
                        arrayList5.add(obj4);
                    }
                }
                ArrayList arrayList6 = new ArrayList();
                mutableMap = MapsKt__MapsKt.toMutableMap(CollectionKt.toMapList(arrayList5, new Function1<NotePageBean, String>() { // from class: com.onyx.galaxy.note.utils.NoteSortHelper$sortNotePageList$pageMapList$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull NotePageBean it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        PageModelBean pageModelBean = it3.getPageModelBean();
                        Intrinsics.checkNotNull(pageModelBean);
                        return pageModelBean.getDocumentId();
                    }
                }, new Function1<NotePageBean, NotePageBean>() { // from class: com.onyx.galaxy.note.utils.NoteSortHelper$sortNotePageList$pageMapList$2
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final NotePageBean invoke(@NotNull NotePageBean it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return it3;
                    }
                }));
                for (NotePageBean notePageBean : arrayList4) {
                    arrayList6.add(notePageBean);
                    NoteModelBean noteModelBean = notePageBean.getNoteModelBean();
                    Intrinsics.checkNotNull(noteModelBean);
                    CollectionKt.addAll(arrayList6, (Collection) mutableMap.remove(noteModelBean.getUniqueId()));
                }
                arrayList.addAll(mutableList);
                arrayList.addAll(arrayList6);
                flatten = CollectionsKt__IterablesKt.flatten(mutableMap.values());
                arrayList.addAll(flatten);
            } else {
                arrayList.addAll(notePageList);
                Collections.sort(arrayList, comparator);
            }
            return arrayList;
        } catch (Exception e) {
            m51997d(e, notePageList);
            throw e;
        }
    }
}
