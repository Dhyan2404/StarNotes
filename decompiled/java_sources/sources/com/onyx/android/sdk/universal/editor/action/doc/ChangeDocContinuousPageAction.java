package com.onyx.android.sdk.universal.editor.action.doc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.ReloadBoxManagerWithSettingsAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.config.GlobalDocSettings;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocContinuousPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "enable", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeDocContinuousPageAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean enable;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ChangeDocContinuousPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8629a<T> implements Consumer {
        public C8629a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeDocContinuousPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeDocContinuousPageAction.this.m37574l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ChangeDocContinuousPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8630b<T, R> implements Function {

        /* renamed from: e */
        public static final C8630b<T, R> f48254e = new C8630b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ChangeDocContinuousPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeDocContinuousPageAction(@NotNull EditorBundle editorBundle, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.enable = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).doOnNext(new C8629a()).map(C8630b.f48254e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37574l() {
        if (DocOptionsActionsKt.isEnabledDocConfig(getEditorBundle())) {
            DocOptionsActionsKt.setEnabledContinuousPage(getEditorBundle(), this.enable);
        } else {
            GlobalDocSettings.INSTANCE.setEnabledContinuousPage(this.enable);
        }
        RxBaseAction.execute$default(new ReloadBoxManagerWithSettingsAction(getEditorBundle()), null, null, null, 7, null);
    }
}
