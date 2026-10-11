package com.onyx.android.sdk.textbox.action;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.textbox.utils.TextBoxUtils;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;", "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "setMotionEvent", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", C6997f.f39671c, "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBoxView", C6998g.f39679a, "Landroid/view/MotionEvent;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxTranslateAction extends TextBoxBaseAction<TextBoxTranslateAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBoxView;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public MotionEvent event;

    /* renamed from: com.onyx.android.sdk.textbox.action.TextBoxTranslateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8020a<T, R> implements Function {
        public C8020a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TextBoxTranslateAction apply(@NotNull TextBoxTranslateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TextBoxTranslateAction.this.m36112m();
        }
    }

    public TextBoxTranslateAction(@NotNull TextBoxView textBoxView) {
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        this.textBoxView = textBoxView;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TextBoxTranslateAction> create() {
        Observable<TextBoxTranslateAction> map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C8020a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final TextBoxTranslateAction m36112m() {
        TouchPoint lastPoint = this.textBoxView.getLastPoint();
        if (lastPoint == null) {
            return this;
        }
        TextBoxUtils textBoxUtils = TextBoxUtils.INSTANCE;
        TextBoxView textBoxView = this.textBoxView;
        MotionEvent motionEvent = this.event;
        Intrinsics.checkNotNull(motionEvent);
        float rawX = motionEvent.getRawX();
        MotionEvent motionEvent2 = this.event;
        Intrinsics.checkNotNull(motionEvent2);
        textBoxUtils.updateTextBoxPosition(textBoxView, lastPoint, new TouchPoint(rawX, motionEvent2.getRawY()));
        TextBoxView textBoxView2 = this.textBoxView;
        MotionEvent motionEvent3 = this.event;
        Intrinsics.checkNotNull(motionEvent3);
        float rawX2 = motionEvent3.getRawX();
        MotionEvent motionEvent4 = this.event;
        Intrinsics.checkNotNull(motionEvent4);
        textBoxView2.updateLastPoint(new TouchPoint(rawX2, motionEvent4.getRawY()));
        MotionEvent motionEvent5 = this.event;
        Intrinsics.checkNotNull(motionEvent5);
        motionEvent5.recycle();
        return this;
    }

    @NotNull
    public final TextBoxTranslateAction setMotionEvent(@Nullable MotionEvent event) {
        this.event = event;
        return this;
    }
}
