package com.onyx.android.sdk.universal.editor.action.universalshape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/universalshape/StartUniversalShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "userProvider", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartUniversalShapeAction extends RxBaseAppAction<StartUniversalShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean userProvider;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.universalshape.StartUniversalShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10293a<T, R> implements Function {
        public C10293a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartUniversalShapeAction apply(@NotNull StartUniversalShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartUniversalShapeAction.this.m40559l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartUniversalShapeAction(@NotNull EditorBundle editorBundle, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.userProvider = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartUniversalShapeAction> create() {
        Observable<StartUniversalShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C10293a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final StartUniversalShapeAction m40559l() {
        if (this.userProvider) {
            EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().activeUserProvider(ShapeHandlerManager.UNIVERSAL_SHAPE_PROVIDER, true);
        } else {
            EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().activeShapeProvider(ShapeHandlerManager.UNIVERSAL_SHAPE_PROVIDER);
        }
        return this;
    }
}
