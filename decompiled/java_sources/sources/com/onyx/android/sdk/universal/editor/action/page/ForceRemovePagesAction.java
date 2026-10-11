package com.onyx.android.sdk.universal.editor.action.page;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.ReopenDocumentAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\f\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/page/ForceRemovePagesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", GoogleApiAvailabilityLight.f29016b, "pageIdList", "m", "l", C6999h.f39688c, "Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ForceRemovePagesAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIdList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ForceRemovePagesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9663a<T, R> implements Function {
        public C9663a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull ForceRemovePagesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRemovePagesAction.this.m39454n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ForceRemovePagesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9664b<T, R> implements Function {
        public C9664b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRemovePagesAction.this.m39453m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ForceRemovePagesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9665c<T, R> implements Function {
        public C9665c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ForceRemovePagesAction.this.m39452l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.page.ForceRemovePagesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9666d<T, R> implements Function {

        /* renamed from: e */
        public static final C9666d<T, R> f50136e = new C9666d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForceRemovePagesAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIdList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        this.pageIdList = pageIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).flatMap(new C9663a()).flatMap(new C9664b()).flatMap(new C9665c()).map(C9666d.f50136e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m39452l() {
        return new ReopenDocumentAction(getEditorBundle()).build();
    }

    /* renamed from: m */
    public final Observable<?> m39453m(List<String> pageIdList) {
        return new ForceRemoveNotePagesAction(getEditorBundle(), pageIdList).build();
    }

    /* renamed from: n */
    public final Observable<List<String>> m39454n() {
        return new ForceRemoveVirtualPagesAction(getEditorBundle(), this.pageIdList).build();
    }
}
