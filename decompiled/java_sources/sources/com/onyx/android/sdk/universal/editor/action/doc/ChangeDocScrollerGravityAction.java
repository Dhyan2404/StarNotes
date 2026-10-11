package com.onyx.android.sdk.universal.editor.action.doc;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
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

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", NotificationCompat.WearableExtender.f5060z, "isHorizontal", "m", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "i", "I", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZI)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeDocScrollerGravityAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean isHorizontal;

    /* renamed from: i, reason: from kotlin metadata */
    public final int gravity;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ChangeDocScrollerGravityAction$a */
    /* loaded from: classes8.dex */
    public static final class C8637a<T> implements Consumer {
        public C8637a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ChangeDocScrollerGravityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeDocScrollerGravityAction.this.m37585l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.doc.ChangeDocScrollerGravityAction$b */
    /* loaded from: classes8.dex */
    public static final class C8638b<T, R> implements Function {

        /* renamed from: e */
        public static final C8638b<T, R> f48267e = new C8638b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ChangeDocScrollerGravityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangeDocScrollerGravityAction(@NotNull EditorBundle editorBundle, boolean z, int i) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.isHorizontal = z;
        this.gravity = i;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).doOnNext(new C8637a()).map(C8638b.f48267e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m37585l() {
        if (DocOptionsActionsKt.isEnabledDocConfig(getEditorBundle())) {
            m37586m(this.gravity, this.isHorizontal);
        } else {
            GlobalDocSettings.INSTANCE.setGlobalDocScrollerGravity(this.gravity, this.isHorizontal);
        }
    }

    /* renamed from: m */
    public final void m37586m(int gravity, boolean isHorizontal) {
        if (isHorizontal) {
            DocOptionsActionsKt.setScrollerHorizontalGravity(getEditorBundle(), gravity);
        } else {
            DocOptionsActionsKt.setScrollerVerticalGravity(getEditorBundle(), gravity);
        }
    }
}
