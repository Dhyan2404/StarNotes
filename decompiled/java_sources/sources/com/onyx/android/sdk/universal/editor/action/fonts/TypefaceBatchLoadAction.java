package com.onyx.android.sdk.universal.editor.action.fonts;

import android.graphics.Typeface;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0005H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/TypefaceBatchLoadAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "", "Landroid/graphics/Typeface;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "e", "Ljava/util/List;", "files", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTypefaceBatchLoadAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypefaceBatchLoadAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/TypefaceBatchLoadAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,21:1\n1549#2:22\n1620#2,3:23\n37#3,2:26\n*S KotlinDebug\n*F\n+ 1 TypefaceBatchLoadAction.kt\ncom/onyx/android/sdk/universal/editor/action/fonts/TypefaceBatchLoadAction\n*L\n18#1:22\n18#1:23,3\n19#1:26,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TypefaceBatchLoadAction extends RxBaseAction<Map<String, ? extends Typeface>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<String> files;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.TypefaceBatchLoadAction$a */
    /* loaded from: classes8.dex */
    public static final class C9122a<T, R> implements Function {
        public C9122a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, Typeface> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TypefaceBatchLoadAction.this.m38370l();
        }
    }

    public TypefaceBatchLoadAction(@NotNull List<String> files) {
        Intrinsics.checkNotNullParameter(files, "files");
        this.files = files;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Map<String, ? extends Typeface>> create() {
        Observable<Map<String, ? extends Typeface>> map = Observable.just(this.files).observeOn(Schedulers.m61350io()).map(new C9122a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Map<String, Typeface> m38370l() {
        int collectionSizeOrDefault;
        Map<String, Typeface> mapOf;
        List<String> list = this.files;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : list) {
            arrayList.add(TuplesKt.m61535to(str, FontUtils.INSTANCE.loadTypefaceFromFile(str)));
        }
        Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        mapOf = MapsKt__MapsKt.mapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        return mapOf;
    }
}
