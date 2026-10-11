package com.onyx.android.sdk.universal.editor.action;

import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.GetContentViewSizeAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002R\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/Size;", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/Size;", "getViewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setViewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "viewSize", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GetContentViewSizeAction extends RxBaseAppAction<GetContentViewSizeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Size viewSize;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.GetContentViewSizeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8189a<T, R> implements Function {
        public C8189a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetContentViewSizeAction apply(@NotNull Size it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GetContentViewSizeAction.this.setViewSize(Size.copy$default(it2, 0, 0, 3, null));
            return GetContentViewSizeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetContentViewSizeAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.viewSize = AppConfig.INSTANCE.getDEFAULT_SIZE();
    }

    /* renamed from: o */
    public static final void m36772o(final View contentView, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(contentView, "$contentView");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        contentView.post(new Runnable() { // from class: com.sunia.HTREnginev2.k2h
            @Override // java.lang.Runnable
            public final void run() {
                GetContentViewSizeAction.m36773p(ObservableEmitter.this, contentView);
            }
        });
    }

    /* renamed from: p */
    public static final void m36773p(ObservableEmitter emitter, View contentView) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(contentView, "$contentView");
        emitter.onNext(new Size(contentView.getWidth(), contentView.getHeight()));
        emitter.onComplete();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GetContentViewSizeAction> create() {
        Observable map = m36774n().map(new C8189a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    /* renamed from: n */
    public final Observable<Size> m36774n() {
        final View editorView = EditorBundleKt.editorView(getEditorBundle());
        if (editorView == null) {
            Observable<Size> just = Observable.just(this.viewSize);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Size> map = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.j2h
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                GetContentViewSizeAction.m36772o(editorView, observableEmitter);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.GetContentViewSizeAction$createGetViewSizeObservable$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Size apply(@NotNull Size it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getOrElse(new Function0<Size>() { // from class: com.onyx.android.sdk.universal.editor.action.GetContentViewSizeAction$createGetViewSizeObservable$2.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Size invoke() {
                        return AppConfig.INSTANCE.getDEFAULT_SIZE();
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.viewSize = size;
    }
}
