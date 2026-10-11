package com.onyx.galaxy.note.common.action;

import android.view.View;
import android.widget.TextView;
import com.jakewharton.rxbinding4.widget.RxTextView;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/TextChangeDebounceAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Landroid/widget/TextView;", C6998g.f39679a, "Landroid/widget/TextView;", "textView", "", C6999h.f39688c, "J", "timeOutMils", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/TextView;J)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TextChangeDebounceAction extends RxBaseNoteAppAction<String> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final TextView textView;

    /* renamed from: h, reason: from kotlin metadata */
    public final long timeOutMils;

    /* renamed from: com.onyx.galaxy.note.common.action.TextChangeDebounceAction$a */
    /* loaded from: classes9.dex */
    public static final class C11608a<T> implements Consumer {
        public C11608a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            TextChangeDebounceAction.this.m44970l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.TextChangeDebounceAction$b */
    /* loaded from: classes9.dex */
    public static final class C11609b<T, R> implements Function {

        /* renamed from: e */
        public static final C11609b<T, R> f55971e = new C11609b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull CharSequence it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.toString();
        }
    }

    public /* synthetic */ TextChangeDebounceAction(TextView textView, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(textView, (i & 2) != 0 ? 500L : j);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> observeOn = RxTextView.textChanges(this.textView).skipInitialValue().doOnSubscribe(new C11608a()).debounce(this.timeOutMils, TimeUnit.MILLISECONDS).map(C11609b.f55971e).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final void m44970l() {
        this.textView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.common.action.TextChangeDebounceAction$disposeOnDetach$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                TextChangeDebounceAction.this.dispose();
            }
        });
    }

    public TextChangeDebounceAction(@NotNull TextView textView, long j) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        this.textView = textView;
        this.timeOutMils = j;
    }
}
