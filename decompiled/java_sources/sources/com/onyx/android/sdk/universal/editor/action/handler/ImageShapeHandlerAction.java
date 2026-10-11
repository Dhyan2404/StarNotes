package com.onyx.android.sdk.universal.editor.action.handler;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/ImageShapeHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "touchData", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "onTouchContentOutside", "data", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "touchReader", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ImageShapeHandlerAction extends BaseShapeHandlerAction<TouchData> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ImageShapeHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9182a<T> implements Predicate {

        /* renamed from: e */
        public static final C9182a<T> f49185e = new C9182a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.isTouchUp();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.ImageShapeHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9183b<T> implements Consumer {
        public C9183b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ImageShapeHandlerAction.this.m38468l(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageShapeHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TouchData> create() {
        Observable<TouchData> doOnNext = subscribeTouchData().filter(C9182a.f49185e).doOnNext(new C9183b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m38468l(TouchData data) {
        singleTapUp(getDown(), data);
    }

    @Override // com.onyx.android.sdk.universal.editor.action.handler.BaseShapeHandlerAction
    public void onTouchContentOutside(@NotNull TouchData touchData, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        super.onTouchContentOutside(touchData, virtualBoxInfo);
        m38468l(touchData);
    }
}
