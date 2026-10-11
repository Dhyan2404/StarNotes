package com.onyx.android.sdk.base.utils;

import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJN\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00052\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\bJN\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00052\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\bJ\u001e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H\u0002J\u001e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H\u0002Jb\u0010\u0014\u001a\u00020\t\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\bH\u0002R\u0014\u0010\u0016\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/OrderListUtils;", "", "T", "", "list", "Lkotlin/Function1;", "", "getter", "Lkotlin/Function2;", "", "setter", "reorderIndexChecked", "reorderIndex", "", gon.f71290o0, "orderList", "c", "end", "b", "reOrderList", "a", "F", "ORDER_INDEX_INTERVAL", "I", "REORDER_COUNT", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOrderListUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderListUtils.kt\ncom/onyx/android/sdk/base/utils/OrderListUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1549#2:178\n1620#2,3:179\n1864#2,3:182\n1549#2:185\n1620#2,3:186\n*S KotlinDebug\n*F\n+ 1 OrderListUtils.kt\ncom/onyx/android/sdk/base/utils/OrderListUtils\n*L\n33#1:178\n33#1:179,3\n37#1:182,3\n70#1:185\n70#1:186,3\n*E\n"})
/* loaded from: classes7.dex */
public final class OrderListUtils {

    @NotNull
    public static final OrderListUtils INSTANCE = new OrderListUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float ORDER_INDEX_INTERVAL = 1.0f;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int REORDER_COUNT = 30;

    /* renamed from: a */
    public final <T> void m32108a(int start, int end, List<Float> orderList, List<T> reOrderList, List<T> list, Function2<? super T, ? super Float, Unit> setter) {
        float floatValue = (orderList.get(end).floatValue() - orderList.get(start).floatValue()) / (end - start);
        while (true) {
            start++;
            if (start >= end) {
                return;
            }
            int i = start - 1;
            orderList.set(start, Float.valueOf(orderList.get(i).floatValue() + floatValue));
            setter.invoke(list.get(i), orderList.get(start));
            reOrderList.add(list.get(i));
        }
    }

    /* renamed from: b */
    public final int m32109b(int end, List<Float> orderList) {
        int lastIndex;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(orderList);
        int i = end;
        while (end < lastIndex) {
            i = end + 1;
            if (orderList.get(end).floatValue() < 0.0f && orderList.get(i).floatValue() > 0.0f) {
                break;
            }
            end = i;
        }
        return i;
    }

    /* renamed from: c */
    public final int m32110c(int start, List<Float> orderList) {
        int lastIndex;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(orderList);
        int i = start;
        while (start < lastIndex) {
            if (orderList.get(start).floatValue() >= 0.0f && orderList.get(start + 1).floatValue() < 0.0f) {
                return start;
            }
            i = start;
            start++;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <T> List<T> reorderIndex(@NotNull List<T> list, @NotNull Function1<? super T, Float> getter, @NotNull Function2<? super T, ? super Float, Unit> setter) {
        List<Float> mutableListOf;
        int collectionSizeOrDefault;
        int lastIndex;
        Object last;
        int lastIndex2;
        int lastIndex3;
        int lastIndex4;
        int lastIndex5;
        int lastIndex6;
        int lastIndex7;
        int lastIndex8;
        Object last2;
        int lastIndex9;
        Object first;
        Object first2;
        Object first3;
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(getter, "getter");
        Intrinsics.checkNotNullParameter(setter, "setter");
        ArrayList arrayList = new ArrayList();
        if (list.isEmpty()) {
            return arrayList;
        }
        if (list.size() == 1) {
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            if (getter.invoke((Object) first2).floatValue() < 0.0f) {
                first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
                setter.invoke((Object) first3, Float.valueOf(1.0f));
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
                arrayList.add(first);
            }
            return arrayList;
        }
        int i = 0;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Float.valueOf(0.0f));
        List<T> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        Collection<? extends Float> arrayList2 = new ArrayList<>(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Float.valueOf(getter.invoke(it2.next()).floatValue()));
        }
        mutableListOf.addAll(arrayList2);
        while (true) {
            int m32110c = m32110c(i, mutableListOf);
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
            if (m32110c == lastIndex - 1) {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableListOf);
                if (((Number) last).floatValue() <= 0.0f) {
                    lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
                    lastIndex3 = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
                    mutableListOf.set(lastIndex2, Float.valueOf(mutableListOf.get(lastIndex3 - 1).floatValue() + 1.0f));
                    lastIndex4 = CollectionsKt__CollectionsKt.getLastIndex(list);
                    Object obj = list.get(lastIndex4);
                    lastIndex5 = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
                    setter.invoke(obj, mutableListOf.get(lastIndex5));
                    lastIndex6 = CollectionsKt__CollectionsKt.getLastIndex(list);
                    arrayList.add(list.get(lastIndex6));
                }
                return arrayList;
            }
            int i2 = m32110c + 1;
            int m32109b = m32109b(i2, mutableListOf);
            lastIndex7 = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
            if (m32109b == lastIndex7) {
                last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) mutableListOf);
                if (((Number) last2).floatValue() < 0.0f) {
                    lastIndex9 = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
                    if (i2 <= lastIndex9) {
                        while (true) {
                            mutableListOf.set(i2, Float.valueOf(mutableListOf.get(m32110c).floatValue() + ((i2 - m32110c) * 1.0f)));
                            int i3 = i2 - 1;
                            setter.invoke(list.get(i3), mutableListOf.get(i2));
                            arrayList.add(list.get(i3));
                            if (i2 == lastIndex9) {
                                break;
                            }
                            i2++;
                        }
                    }
                    return arrayList;
                }
            }
            m32108a(m32110c, m32109b, mutableListOf, arrayList, list, setter);
            lastIndex8 = CollectionsKt__CollectionsKt.getLastIndex(mutableListOf);
            if (m32109b >= lastIndex8) {
                return arrayList;
            }
            i = m32109b;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ed, code lost:
    
        continue;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.util.List<T> reorderIndexChecked(@org.jetbrains.annotations.NotNull java.util.List<T> r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super T, java.lang.Float> r19, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super java.lang.Float, kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.OrderListUtils.reorderIndexChecked(java.util.List, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2):java.util.List");
    }
}
