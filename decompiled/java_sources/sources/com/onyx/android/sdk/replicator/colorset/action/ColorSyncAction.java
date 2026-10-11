package com.onyx.android.sdk.replicator.colorset.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.timepicker.TimeModel;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.colorset.core.ColorServiceExecutor;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.sun.org.apache.bcel.internal.Constants;
import defpackage.toColorSets;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\f\u001a\u00020\nH\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/action/ColorSyncAction;", "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "l", "colorSets", C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, "m", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ColorSyncAction extends ColorSetBaseAction<Object> {

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.ColorSyncAction$a */
    /* loaded from: classes8.dex */
    public static final class C7642a<T, R> implements Function {
        public C7642a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ColorSetModel> apply(@NotNull ClusterManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ColorSyncAction.this.m34965l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.ColorSyncAction$b */
    /* loaded from: classes8.dex */
    public static final class C7643b<T, R> implements Function {
        public C7643b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<ColorSetModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ColorSyncAction.this.m34968o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.ColorSyncAction$c */
    /* loaded from: classes8.dex */
    public static final class C7644c<T, R> implements Function {
        public C7644c() {
        }

        /* renamed from: a */
        public final void m34971a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ColorSyncAction.this.m34966m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m34971a(obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.ColorSyncAction$d */
    /* loaded from: classes8.dex */
    public static final class C7645d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<ColorSetModel> f45297e;

        public C7645d(List<ColorSetModel> list) {
            this.f45297e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ColorSetProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.syncPresetColorSets(this.f45297e);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        if (SyncStateOptions.INSTANCE.hasSynced("color")) {
            Observable<Object> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Object> map = ClusterManager.INSTANCE.createCloudObservable().map(new C7642a()).flatMap(new C7643b()).map(new C7644c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<ColorSetModel> m34965l() {
        return toColorSets.toColorSets$default(ColorServiceExecutor.INSTANCE.loadColorSet(), false, 1, null);
    }

    /* renamed from: m */
    public final void m34966m() {
        SyncStateOptions.INSTANCE.markAsSynced("color");
    }

    /* renamed from: n */
    public final void m34967n(List<ColorSetModel> colorSets) {
        ArrayList arrayList = new ArrayList();
        int size = colorSets.size();
        int i = 0;
        while (i < size) {
            ColorSetModel colorSetModel = colorSets.get(i);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            i++;
            linkedHashMap.put("id", Integer.valueOf(i));
            linkedHashMap.put("name", colorSetModel.getName());
            StringBuilder sb = new StringBuilder();
            sb.append("color_set_name_default_");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            sb.append(format);
            linkedHashMap.put("nameRes", sb.toString());
            linkedHashMap.put(CouchFieldKey.KEY_COLORS, colorSetModel.getColors());
            linkedHashMap.put(CouchFieldKey.KEY_PRESET, Boolean.valueOf(colorSetModel.getPreset()));
            arrayList.add(linkedHashMap);
        }
        Debug.INSTANCE.m32037d(JSONUtils.INSTANCE.asPrettyJson(arrayList));
    }

    /* renamed from: o */
    public final Observable<?> m34968o(List<ColorSetModel> colorSets) {
        Observable<ColorSetProvider> doOnNext = ensureColorProviderObservable().doOnNext(new C7645d(colorSets));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
