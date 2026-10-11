package com.onyx.android.sdk.universal.editor.action.handler;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.RealtimeBeautifyHandlerAction;
import com.onyx.android.sdk.universal.editor.events.app.StartRealtimeBeautifyEvent;
import com.onyx.android.sdk.universal.editor.events.app.StopRealtimeBeautifyEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScribbleTouchReader;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0014¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/handler/RealtimeBeautifyHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "touchReader", "Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RealtimeBeautifyHandlerAction extends BaseShapeHandlerAction<RealtimeBeautifyHandlerAction> {

    /* renamed from: k */
    public static final long f49257k = 1000;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RealtimeBeautifyHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C9214a<T> implements Consumer {
        public C9214a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(RealtimeBeautifyHandlerAction.this.getEditorBundle(), new StartRealtimeBeautifyEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.handler.RealtimeBeautifyHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C9215b<T, R> implements Function {
        public C9215b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RealtimeBeautifyHandlerAction apply(@NotNull TouchData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RealtimeBeautifyHandlerAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealtimeBeautifyHandlerAction(@NotNull EditorBundle editorBundle, @NotNull ScribbleTouchReader touchReader) {
        super(editorBundle, touchReader);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(touchReader, "touchReader");
    }

    /* renamed from: m */
    public static final void m38532m(RealtimeBeautifyHandlerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new StopRealtimeBeautifyEvent());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RealtimeBeautifyHandlerAction> create() {
        Observable map = subscribeTouchData().debounce(1000L, TimeUnit.MILLISECONDS).doOnNext(new C9214a()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.zdl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RealtimeBeautifyHandlerAction.m38532m(RealtimeBeautifyHandlerAction.this);
            }
        }).map(new C9215b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
