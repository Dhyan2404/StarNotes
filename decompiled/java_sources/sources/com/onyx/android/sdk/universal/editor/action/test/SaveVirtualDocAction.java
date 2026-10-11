package com.onyx.android.sdk.universal.editor.action.test;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.request.SaveDocRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/test/SaveVirtualDocAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveVirtualDocAction extends RxBaseAppAction<SaveVirtualDocAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.test.SaveVirtualDocAction$a */
    /* loaded from: classes8.dex */
    public static final class C10216a<T, R> implements Function {
        public C10216a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveVirtualDocAction> apply(@NotNull SaveVirtualDocAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveVirtualDocAction.this.m40432l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.test.SaveVirtualDocAction$b */
    /* loaded from: classes8.dex */
    public static final class C10217b<T, R> implements Function {
        public C10217b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveVirtualDocAction apply(@NotNull SaveVirtualDocAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveVirtualDocAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.test.SaveVirtualDocAction$c */
    /* loaded from: classes8.dex */
    public static final class C10218c<T, R> implements Function {
        public C10218c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveVirtualDocAction apply(@NotNull SaveDocRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveVirtualDocAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveVirtualDocAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveVirtualDocAction> create() {
        Observable<SaveVirtualDocAction> map = Observable.just(this).flatMap(new C10216a()).map(new C10217b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<SaveVirtualDocAction> m40432l() {
        Observable<SaveVirtualDocAction> map = RxBaseAppActionKt.submitRequestToCore(this, new SaveDocRequest(getEditorBundle().getWorkBundle())).map(new C10218c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
