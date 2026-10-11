package com.onyx.android.sdk.universal.editor.action.selection;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/StartSelectionAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/geometry/data/TouchData;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "getDownData", "()Lcom/onyx/android/sdk/geometry/data/TouchData;", "downData", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/TouchData;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartSelectionAction extends RxBaseAppAction<StartSelectionAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final TouchData downData;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.StartSelectionAction$a */
    /* loaded from: classes8.dex */
    public static final class C9959a<T, R> implements Function {
        public C9959a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartSelectionAction apply(@NotNull StartSelectionAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartSelectionAction.this.m40012l();
        }
    }

    public /* synthetic */ StartSelectionAction(EditorBundle editorBundle, TouchData touchData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? null : touchData);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartSelectionAction> create() {
        Observable<StartSelectionAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9959a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final TouchData getDownData() {
        return this.downData;
    }

    /* renamed from: l */
    public final StartSelectionAction m40012l() {
        BaseShapeHandler activeHandler;
        EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().activeUserProvider(ShapeHandlerManager.SELECTION_PROVIDER, true);
        TouchData touchData = this.downData;
        if (touchData != null && touchData.isTouchDown() && (activeHandler = EditorBundleKt.shapeHandlerManager(getEditorBundle()).getActiveHandler()) != null) {
            activeHandler.performTouchDown(touchData);
        }
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartSelectionAction(@NotNull EditorBundle editorBundle, @Nullable TouchData touchData) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.downData = touchData;
    }
}
