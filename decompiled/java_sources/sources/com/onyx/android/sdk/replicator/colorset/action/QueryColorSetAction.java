package com.onyx.android.sdk.replicator.colorset.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/action/QueryColorSetAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", "e", "Ljava/util/List;", CouchFieldKey.KEY_COLORS, Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQueryColorSetAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/QueryColorSetAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,32:1\n288#2,2:33\n288#2,2:35\n1#3:37\n*S KotlinDebug\n*F\n+ 1 QueryColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/QueryColorSetAction\n*L\n16#1:33,2\n28#1:35,2\n*E\n"})
/* loaded from: classes8.dex */
public final class QueryColorSetAction extends ColorSetBaseAction<List<? extends ColorSetModel>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> colors;

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.QueryColorSetAction$a */
    /* loaded from: classes8.dex */
    public static final class C7647a<T, R> implements Function {
        public C7647a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ColorSetModel> apply(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QueryColorSetAction.this.m34975l(it2);
        }
    }

    public QueryColorSetAction(@NotNull List<Integer> colors) {
        Intrinsics.checkNotNullParameter(colors, "colors");
        this.colors = colors;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<ColorSetModel>> create() {
        ColorSetModel colorSetModel;
        List listOf;
        List emptyList;
        if (this.colors.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<ColorSetModel>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Iterator<ColorSetModel> it2 = ColorPickerValues.INSTANCE.getDEFAULT_COLOR_SETS().iterator();
        while (true) {
            if (!it2.hasNext()) {
                colorSetModel = null;
                break;
            }
            colorSetModel = it2.next();
            if (Intrinsics.areEqual(colorSetModel.getColors(), this.colors)) {
                break;
            }
        }
        ColorSetModel colorSetModel2 = colorSetModel;
        if (colorSetModel2 == null) {
            Observable map = ensureColorProviderObservable().map(new C7647a());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(colorSetModel2);
        Observable<List<ColorSetModel>> just2 = Observable.just(listOf);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* renamed from: l */
    public final List<ColorSetModel> m34975l(ColorSetProvider provider) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = provider.loadColorSetList(new CBQueryArgs()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((ColorSetModel) obj).getColors(), this.colors)) {
                break;
            }
        }
        ColorSetModel colorSetModel = (ColorSetModel) obj;
        if (colorSetModel != null) {
            arrayList.add(colorSetModel);
        }
        return arrayList;
    }
}
