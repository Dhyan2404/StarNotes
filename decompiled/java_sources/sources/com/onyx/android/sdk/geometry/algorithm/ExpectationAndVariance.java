package com.onyx.android.sdk.geometry.algorithm;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u00040\tJ.\u0010\n\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u00040\tJ.\u0010\u000b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u00040\t¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;", "", "()V", "getExpectation", "", "T", "dataSource", "", "expression", "Lkotlin/Function1;", "getStandardDeviation", "getVariance", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nExpectationAndVariance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpectationAndVariance.kt\ncom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1549#2:44\n1620#2,3:45\n1549#2:48\n1620#2,3:49\n*S KotlinDebug\n*F\n+ 1 ExpectationAndVariance.kt\ncom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance\n*L\n16#1:44\n16#1:45,3\n28#1:48\n28#1:49,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ExpectationAndVariance {

    @NotNull
    public static final ExpectationAndVariance INSTANCE = new ExpectationAndVariance();

    public final <T> float getExpectation(@NotNull List<? extends T> dataSource, @NotNull Function1<? super T, Float> expression) {
        int collectionSizeOrDefault;
        double averageOfFloat;
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(expression, "expression");
        if (dataSource.isEmpty()) {
            return 0.0f;
        }
        List<? extends T> list = dataSource;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(expression.invoke(it2.next()).floatValue()));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        return (float) averageOfFloat;
    }

    public final <T> float getStandardDeviation(@NotNull List<? extends T> dataSource, @NotNull Function1<? super T, Float> expression) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(expression, "expression");
        return (float) Math.sqrt(getVariance(dataSource, expression));
    }

    public final <T> float getVariance(@NotNull List<? extends T> dataSource, @NotNull Function1<? super T, Float> expression) {
        int collectionSizeOrDefault;
        double averageOfFloat;
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(expression, "expression");
        if (dataSource.isEmpty()) {
            return 0.0f;
        }
        float expectation = getExpectation(dataSource, expression);
        List<? extends T> list = dataSource;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            float floatValue = expression.invoke(it2.next()).floatValue() - expectation;
            arrayList.add(Float.valueOf(floatValue * floatValue));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        return (float) averageOfFloat;
    }
}
