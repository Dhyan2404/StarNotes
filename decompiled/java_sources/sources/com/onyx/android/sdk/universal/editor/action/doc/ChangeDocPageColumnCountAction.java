package com.onyx.android.sdk.universal.editor.action.doc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.ReloadBoxManagerWithSettingsAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocPageColumnCountAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", C6999h.f39688c, "I", "pageColumnCount", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeDocPageColumnCountAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    public final int pageColumnCount;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ChangeDocPageColumnCountAction$a */
    /* loaded from: classes8.dex */
    public static final class C8635a<T> implements Consumer {
        public C8635a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeDocPageColumnCountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeDocPageColumnCountAction.this.m37582l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ChangeDocPageColumnCountAction$b */
    /* loaded from: classes8.dex */
    public static final class C8636b<T, R> implements Function {

        /* renamed from: e */
        public static final C8636b<T, R> f48263e = new C8636b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ChangeDocPageColumnCountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeDocPageColumnCountAction(@NotNull EditorBundle editorBundle, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.pageColumnCount = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).doOnNext(new C8635a()).map(C8636b.f48263e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37582l() {
        if (DocOptionsActionsKt.isEnabledDocConfig(getEditorBundle())) {
            DocOptionsActionsKt.setPageColumnCount(getEditorBundle(), this.pageColumnCount);
        } else {
            GlobalDocSettings.INSTANCE.setPageColumnCount(this.pageColumnCount);
        }
        RenderManager.resizeCache$default(EditorBundleKt.renderManager(getEditorBundle()), null, 1, null);
        RxBaseAction.execute$default(new ReloadBoxManagerWithSettingsAction(getEditorBundle()), null, null, null, 7, null);
    }
}
