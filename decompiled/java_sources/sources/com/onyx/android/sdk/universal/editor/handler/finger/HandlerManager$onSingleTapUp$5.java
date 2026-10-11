package com.onyx.android.sdk.universal.editor.handler.finger;

import android.view.MotionEvent;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.universal.editor.action.link.HitTestDocLinkAction;
import com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "Lio/reactivex/rxjava3/core/Observable;", "", OcrValues.LANG_ITALIAN, "Lcom/onyx/android/sdk/universal/editor/action/shape/HitTestShapeAction;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class HandlerManager$onSingleTapUp$5 extends Lambda implements Function1<HitTestShapeAction, Observable<? extends Object>> {
    final /* synthetic */ MotionEvent $motionEvent;
    final /* synthetic */ TouchPoint $touchPoint;
    final /* synthetic */ HandlerManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerManager$onSingleTapUp$5(HandlerManager handlerManager, TouchPoint touchPoint, MotionEvent motionEvent) {
        super(1);
        this.this$0 = handlerManager;
        this.$touchPoint = touchPoint;
        this.$motionEvent = motionEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(HandlerManager this$0, MotionEvent motionEvent, HitTestDocLinkAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(motionEvent, "$motionEvent");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.onNoGestures(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(HandlerManager this$0, MotionEvent motionEvent, HitTestDocLinkAction it2) {
        BaseHandler m41001i;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(motionEvent, "$motionEvent");
        Intrinsics.checkNotNullParameter(it2, "it");
        m41001i = this$0.m41001i();
        m41001i.onSingleTapUp(motionEvent);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final Observable<? extends Object> invoke(@NotNull HitTestShapeAction it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Observable<HitTestDocLinkAction> build = new HitTestDocLinkAction(this.this$0.getEditorBundle(), this.$touchPoint).build();
        C104331 c104331 = new Function1<HitTestDocLinkAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager$onSingleTapUp$5.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HitTestDocLinkAction it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(!it3.getSuccess());
            }
        };
        final HandlerManager handlerManager = this.this$0;
        final MotionEvent motionEvent = this.$motionEvent;
        Observable doOnNextIf = RxjavaKt.doOnNextIf(build, c104331, new Consumer() { // from class: com.onyx.android.sdk.universal.editor.handler.finger.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                HandlerManager$onSingleTapUp$5.invoke$lambda$0(HandlerManager.this, motionEvent, (HitTestDocLinkAction) obj);
            }
        });
        C104343 c104343 = new Function1<HitTestDocLinkAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager$onSingleTapUp$5.3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HitTestDocLinkAction it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Boolean.valueOf(it3.getSuccess());
            }
        };
        final HandlerManager handlerManager2 = this.this$0;
        final MotionEvent motionEvent2 = this.$motionEvent;
        return RxjavaKt.doOnNextIf(doOnNextIf, c104343, new Consumer() { // from class: com.onyx.android.sdk.universal.editor.handler.finger.b
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                HandlerManager$onSingleTapUp$5.invoke$lambda$1(HandlerManager.this, motionEvent2, (HitTestDocLinkAction) obj);
            }
        });
    }
}
