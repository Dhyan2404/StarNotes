package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestLinkShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleHitTestLinkShapeAction extends RxBaseAppAction<HandleHitTestLinkShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestLinkShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10086a<T> implements Consumer {
        public C10086a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HandleHitTestLinkShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HandleHitTestLinkShapeAction.this.m40224l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestLinkShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10087b<T, R> implements Function {
        public C10087b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestLinkShapeAction apply(@NotNull HandleHitTestLinkShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestLinkShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleHitTestLinkShapeAction(@NotNull EditorBundle editorBundle, @NotNull Shape hitTestShape, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.hitTestShape = hitTestShape;
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleHitTestLinkShapeAction> create() {
        Observable<HandleHitTestLinkShapeAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10086a()).map(new C10087b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40224l() {
        String key;
        Debug.INSTANCE.m32035d(HandleHitTestLinkShapeAction.class, "link shape.text:" + this.hitTestShape.getText(), new Object[0]);
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(this.hitTestShape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null || (key = shapeLinkBean.getKey()) == null) {
            return;
        }
        switch (key.hashCode()) {
            case 84303:
                if (!key.equals(ShapeLinkType.LINK_URL)) {
                    return;
                }
                break;
            case 2402290:
                if (!key.equals("NOTE")) {
                    return;
                }
                break;
            case 62628790:
                if (!key.equals("AUDIO")) {
                    return;
                }
                break;
            case 1644347675:
                if (!key.equals(ShapeLinkType.LINK_DOCUMENT)) {
                    return;
                }
                break;
            default:
                return;
        }
        RxBaseAction.execute$default(new HandleHitTestShapeAndStartTransformAction(getEditorBundle(), this.hitTestShape, this.touchPoint), null, null, null, 7, null);
    }
}
