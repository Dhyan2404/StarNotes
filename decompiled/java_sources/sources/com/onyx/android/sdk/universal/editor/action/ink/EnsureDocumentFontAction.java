package com.onyx.android.sdk.universal.editor.action.ink;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureDocumentFontAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", GoogleApiAvailabilityLight.f29016b, "m", FontUtils.FONTS, "l", "", "", "e", "Ljava/util/Collection;", "requiredFontNames", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Collection;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEnsureDocumentFontAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnsureDocumentFontAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/EnsureDocumentFontAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n766#2:51\n857#2,2:52\n*S KotlinDebug\n*F\n+ 1 EnsureDocumentFontAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/EnsureDocumentFontAction\n*L\n36#1:51\n36#1:52,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EnsureDocumentFontAction extends RxBaseAction<EnsureDocumentFontAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> requiredFontNames;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction$a */
    /* loaded from: classes8.dex */
    public static final class C9549a<T, R> implements Function {
        public C9549a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<FontModel>> apply(@NotNull EnsureDocumentFontAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureDocumentFontAction.this.m39239n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction$b */
    /* loaded from: classes8.dex */
    public static final class C9550b<T, R> implements Function {
        public C9550b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<FontModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureDocumentFontAction.this.m39237l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction$c */
    /* loaded from: classes8.dex */
    public static final class C9551c<T, R> implements Function {
        public C9551c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EnsureDocumentFontAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureDocumentFontAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction$d */
    /* loaded from: classes8.dex */
    public static final class C9552d<T, R> implements Function {
        public C9552d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<FontModel> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureDocumentFontAction.this.m39238m();
        }
    }

    public EnsureDocumentFontAction(@NotNull Collection<String> requiredFontNames) {
        Intrinsics.checkNotNullParameter(requiredFontNames, "requiredFontNames");
        this.requiredFontNames = requiredFontNames;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<EnsureDocumentFontAction> create() {
        Observable<EnsureDocumentFontAction> map = Observable.just(this).flatMap(new C9549a()).flatMap(new C9550b()).map(new C9551c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m39237l(List<FontModel> fonts) {
        if (fonts.isEmpty()) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable fromIterable = Observable.fromIterable(fonts);
        Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
        return RxjavaKt.takeLastOne(RxjavaKt.flatMapIf(fromIterable, new Function1<FontModel, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction$downloadAbsentFont$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull FontModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!FontModelExt.INSTANCE.isDownloaded(it2));
            }
        }, new Function1<FontModel, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureDocumentFontAction$downloadAbsentFont$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull FontModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new DownloadFontAction(it2).build();
            }
        }));
    }

    /* renamed from: m */
    public final List<FontModel> m39238m() {
        List<FontModel> loadList = KSyncBundle.INSTANCE.getAppFontProvider().loadList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : loadList) {
            Collection<String> collection = this.requiredFontNames;
            String displayName = FontModelExt.INSTANCE.getDisplayName((FontModel) obj);
            Intrinsics.checkNotNullExpressionValue(displayName, "getDisplayName(...)");
            if (CollectionKt.containIgnoreCase(collection, displayName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public final Observable<List<FontModel>> m39239n() {
        Observable map = new FetchFontListAction().build().observeOn(ClusterManager.INSTANCE.getDataObserveOn()).map(new C9552d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
