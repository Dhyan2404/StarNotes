package com.onyx.android.sdk.universal.editor.action.draw;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/draw/StartDrawingLaserShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartDrawingLaserShapeAction extends RxBaseAppAction<StartDrawingLaserShapeAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.draw.StartDrawingLaserShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8678a<T, R> implements Function {
        public C8678a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartDrawingLaserShapeAction apply(@NotNull StartDrawingLaserShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartDrawingLaserShapeAction.this.m37661l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartDrawingLaserShapeAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartDrawingLaserShapeAction> create() {
        Observable<StartDrawingLaserShapeAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C8678a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final StartDrawingLaserShapeAction m37661l() {
        EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().activeUserProvider(ShapeHandlerManager.LASER_SHAPE_PROVIDER, true);
        return this;
    }
}
