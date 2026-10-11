package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.Toolbar;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(21)
@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/ToolbarNavigationClickObservable;", "Lio/reactivex/rxjava3/core/Observable;", "", "Lio/reactivex/rxjava3/core/Observer;", EventHandlerManager.OBSERVER, "subscribeActual", "Landroid/widget/Toolbar;", "e", "Landroid/widget/Toolbar;", "view", Constants.CONSTRUCTOR_NAME, "(Landroid/widget/Toolbar;)V", "a", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class ToolbarNavigationClickObservable extends Observable<Unit> {

    /* renamed from: e, reason: from kotlin metadata */
    public final Toolbar view;

    /* renamed from: com.jakewharton.rxbinding4.widget.ToolbarNavigationClickObservable$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnClickListenerC6952a extends MainThreadDisposable implements View.OnClickListener {

        /* renamed from: f */
        public final Toolbar f39135f;

        /* renamed from: g */
        public final Observer<? super Unit> f39136g;

        public ViewOnClickListenerC6952a(@NotNull Toolbar view, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f39135f = view;
            this.f39136g = observer;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f39136g.onNext(Unit.INSTANCE);
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f39135f.setNavigationOnClickListener(null);
        }
    }

    public ToolbarNavigationClickObservable(@NotNull Toolbar view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnClickListenerC6952a viewOnClickListenerC6952a = new ViewOnClickListenerC6952a(this.view, observer);
            observer.onSubscribe(viewOnClickListenerC6952a);
            this.view.setNavigationOnClickListener(viewOnClickListenerC6952a);
        }
    }
}
