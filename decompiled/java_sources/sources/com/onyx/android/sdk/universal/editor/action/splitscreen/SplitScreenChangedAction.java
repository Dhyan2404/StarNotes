package com.onyx.android.sdk.universal.editor.action.splitscreen;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.ReloadBoxManagerWithSettingsRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/splitscreen/SplitScreenChangedAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SplitScreenChangedAction extends RxBaseAppAction<SplitScreenChangedAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.splitscreen.SplitScreenChangedAction$a */
    /* loaded from: classes8.dex */
    public static final class C10165a<T, R> implements Function {
        public C10165a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SplitScreenChangedAction> apply(@NotNull SplitScreenChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SplitScreenChangedAction.this.m40352l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.splitscreen.SplitScreenChangedAction$b */
    /* loaded from: classes8.dex */
    public static final class C10166b<T, R> implements Function {
        public C10166b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SplitScreenChangedAction apply(@NotNull SplitScreenChangedAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SplitScreenChangedAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.splitscreen.SplitScreenChangedAction$c */
    /* loaded from: classes8.dex */
    public static final class C10167c<T, R> implements Function {
        public C10167c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SplitScreenChangedAction apply(@NotNull ReloadBoxManagerWithSettingsRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SplitScreenChangedAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitScreenChangedAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SplitScreenChangedAction> create() {
        Observable<SplitScreenChangedAction> map = Observable.just(this).flatMap(new C10165a()).map(new C10166b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<SplitScreenChangedAction> m40352l() {
        if (DocOptionsActionsKt.isEnabledPageMultiColumn(getEditorBundle())) {
            Observable<SplitScreenChangedAction> map = RxBaseAppActionKt.submitRequestToCore(this, new ReloadBoxManagerWithSettingsRequest(getEditorBundle().getWorkBundle())).map(new C10167c());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Observable<SplitScreenChangedAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
