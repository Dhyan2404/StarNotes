package com.onyx.android.sdk.base.extension;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0000\u001a\u0012\u0010\u0006\u001a\u00020\u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0000\u001a\u0012\u0010\t\u001a\u00020\b*\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0000\u001a\u0012\u0010\f\u001a\u00020\u000b*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0000\u001a\u0012\u0010\u000f\u001a\u00020\u000e*\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0000\u001a\u0012\u0010\u0012\u001a\u00020\u0011*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0000\u001a\f\u0010\u0003\u001a\u00020\u0002*\u0004\u0018\u00010\u0013\u001a\u0010\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u0000*\u00020\u0013\u001a\u0018\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00000\u0000*\u00020\u0013H\u0002\u001a\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u00002\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00000\u0000H\u0002\")\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u00188\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"/\u0010#\u001a\u001a\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001a0\u001f8\u0006¢\u0006\f\n\u0004\b\u0015\u0010 \u001a\u0004\b!\u0010\"*:\u0010&\u001a\u0004\b\u0000\u0010$\u001a\u0004\b\u0001\u0010%\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u001a0\u00182\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u001a0\u0018*\u009a\u0001\u0010,\u001a\u0004\b\u0000\u0010$\"G\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b()\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\r¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\u001a0\u001f2G\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b()\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\r¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\u001a0\u001f*\u0016\u0010.\"\b\u0012\u0004\u0012\u00020\u001a0-2\b\u0012\u0004\u0012\u00020\u001a0-*(\u00100\u001a\u0004\b\u0000\u0010$\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001a0/2\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001a0/*L\u00102\u001a\u0004\b\u0000\u0010$\u001a\u0004\b\u0001\u0010%\u001a\u0004\b\u0002\u00101\"\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u001a0\u001f2\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u001a0\u001f¨\u00063"}, m61528d2 = {"", "", "Lcom/onyx/android/sdk/base/extension/IntList;", "toIntList", "", "Lcom/onyx/android/sdk/base/extension/LongList;", "toLongList", "", "Lcom/onyx/android/sdk/base/extension/FloatList;", "toFloatList", "", "Lcom/onyx/android/sdk/base/extension/DoubleList;", "toDoubleList", "", "Lcom/onyx/android/sdk/base/extension/BooleanList;", "toBooleanList", "", "Lcom/onyx/android/sdk/base/extension/StringList;", "toStringList", "", "mergeConsecutiveIntegers", "b", "groups", "a", "Lkotlin/Function2;", "", "", "Lkotlin/jvm/functions/Function2;", "getEmptyBiFunction", "()Lkotlin/jvm/functions/Function2;", "EmptyBiFunction", "Lkotlin/Function3;", "Lkotlin/jvm/functions/Function3;", "getEmptyIntItemSelectedListener", "()Lkotlin/jvm/functions/Function3;", "EmptyIntItemSelectedListener", "T", "R", "DoubleArgCallbackFunc", "Lkotlin/ParameterName;", "name", "item", FirebaseAnalytics.Param.INDEX, "isSameItemSelected", "ItemSelectedListener", "Lkotlin/Function0;", "NoArgCallbackFunc", "Lkotlin/Function1;", "SingleArgCallbackFunc", "S", "ThreeArgCallbackFunc", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTypeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeExt.kt\ncom/onyx/android/sdk/base/extension/TypeExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1549#2:117\n1620#2,3:118\n*S KotlinDebug\n*F\n+ 1 TypeExt.kt\ncom/onyx/android/sdk/base/extension/TypeExtKt\n*L\n110#1:117\n110#1:118,3\n*E\n"})
/* loaded from: classes7.dex */
public final class TypeExtKt {

    /* renamed from: a */
    @NotNull
    public static final Function2<Object, Object, Unit> f40772a = new Function2<Object, Object, Unit>() { // from class: com.onyx.android.sdk.base.extension.TypeExtKt$EmptyBiFunction$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull Object o1, @NotNull Object o2) {
            Intrinsics.checkNotNullParameter(o1, "o1");
            Intrinsics.checkNotNullParameter(o2, "o2");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) {
            invoke2(obj, obj2);
            return Unit.INSTANCE;
        }
    };

    /* renamed from: b */
    @NotNull
    public static final Function3<Integer, Integer, Boolean, Unit> f40773b = new Function3<Integer, Integer, Boolean, Unit>() { // from class: com.onyx.android.sdk.base.extension.TypeExtKt$EmptyIntItemSelectedListener$1
        public final void invoke(int i, int i2, boolean z) {
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, Boolean bool) {
            invoke(num.intValue(), num2.intValue(), bool.booleanValue());
            return Unit.INSTANCE;
        }
    };

    /* renamed from: a */
    public static final List<String> m31943a(List<? extends List<Integer>> list) {
        int collectionSizeOrDefault;
        Object first;
        Object last;
        String sb;
        List<? extends List<Integer>> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            List list3 = (List) it2.next();
            if (list3.size() == 1) {
                sb = String.valueOf(((Number) list3.get(0)).intValue());
            } else {
                StringBuilder sb2 = new StringBuilder();
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list3);
                sb2.append(((Number) first).intValue());
                sb2.append('-');
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list3);
                sb2.append(((Number) last).intValue());
                sb = sb2.toString();
            }
            arrayList.add(sb);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static final List<List<Integer>> m31944b(int[] iArr) {
        List sorted;
        List mutableListOf;
        List<List<Integer>> emptyList;
        if (iArr.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        sorted = ArraysKt___ArraysKt.sorted(iArr);
        ArrayList arrayList = new ArrayList();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(sorted.get(0));
        int size = sorted.size();
        for (int i = 1; i < size; i++) {
            if (((Number) sorted.get(i)).intValue() == ((Number) sorted.get(i - 1)).intValue() + 1) {
                mutableListOf.add(sorted.get(i));
            } else {
                arrayList.add(mutableListOf);
                mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(sorted.get(i));
            }
        }
        arrayList.add(mutableListOf);
        return arrayList;
    }

    @NotNull
    public static final Function2<Object, Object, Unit> getEmptyBiFunction() {
        return f40772a;
    }

    @NotNull
    public static final Function3<Integer, Integer, Boolean, Unit> getEmptyIntItemSelectedListener() {
        return f40773b;
    }

    @NotNull
    public static final List<String> mergeConsecutiveIntegers(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return m31943a(m31944b(iArr));
    }

    @NotNull
    public static final BooleanList toBooleanList(@Nullable List<Boolean> list) {
        BooleanList booleanList = new BooleanList();
        if (list != null) {
            booleanList.addAll(list);
        }
        return booleanList;
    }

    @NotNull
    public static final DoubleList toDoubleList(@Nullable List<Double> list) {
        DoubleList doubleList = new DoubleList();
        if (list != null) {
            doubleList.addAll(list);
        }
        return doubleList;
    }

    @NotNull
    public static final FloatList toFloatList(@Nullable List<Float> list) {
        FloatList floatList = new FloatList();
        if (list != null) {
            floatList.addAll(list);
        }
        return floatList;
    }

    @NotNull
    public static final IntList toIntList(@Nullable List<Integer> list) {
        IntList intList = new IntList();
        if (list != null) {
            intList.addAll(list);
        }
        return intList;
    }

    @NotNull
    public static final LongList toLongList(@Nullable List<Long> list) {
        LongList longList = new LongList();
        if (list != null) {
            longList.addAll(list);
        }
        return longList;
    }

    @NotNull
    public static final StringList toStringList(@Nullable List<String> list) {
        StringList stringList = new StringList();
        if (list != null) {
            stringList.addAll(list);
        }
        return stringList;
    }

    @NotNull
    public static final IntList toIntList(@Nullable int[] iArr) {
        List list;
        IntList intList = new IntList();
        if (iArr != null) {
            list = ArraysKt___ArraysKt.toList(iArr);
            intList.addAll(list);
        }
        return intList;
    }
}
