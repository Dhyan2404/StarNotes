package com.onyx.android.sdk.replicator.colorset.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetList;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;", "l", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadColorSetAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n766#2:35\n857#2,2:36\n1054#2:38\n*S KotlinDebug\n*F\n+ 1 LoadColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction\n*L\n19#1:32\n19#1:33,2\n20#1:35\n20#1:36,2\n21#1:38\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadColorSetAction extends ColorSetBaseAction<List<? extends ColorSetModel>> {

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.LoadColorSetAction$a */
    /* loaded from: classes8.dex */
    public static final class C7646a<T, R> implements Function {
        public C7646a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ColorSetModel> apply(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadColorSetAction.this.m34973l(it2);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<ColorSetModel>> create() {
        Observable map = ensureColorProviderObservable().map(new C7646a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ColorSetList m34973l(ColorSetProvider provider) {
        List sortedWith;
        List<ColorSetModel> loadColorSetList = provider.loadColorSetList(ColorSetProvider.INSTANCE.generateCommonColorSetArgs());
        ArrayList arrayList = new ArrayList();
        for (Object obj : loadColorSetList) {
            if (((ColorSetModel) obj).getPreset()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : loadColorSetList) {
            if (!((ColorSetModel) obj2).getPreset()) {
                arrayList2.add(obj2);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.onyx.android.sdk.replicator.colorset.action.LoadColorSetAction$loadColorSet$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ColorSetModel) t2).getOrderIndex()), Long.valueOf(((ColorSetModel) t).getOrderIndex()));
                return compareValues;
            }
        });
        ColorSetList colorSetList = new ColorSetList();
        colorSetList.addAll(sortedWith);
        colorSetList.addAll(arrayList);
        if (arrayList.isEmpty()) {
            colorSetList.addAll(ColorPickerValues.INSTANCE.getDEFAULT_COLOR_SETS());
        }
        return colorSetList;
    }
}
