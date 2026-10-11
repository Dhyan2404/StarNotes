package com.onyx.galaxy.note.category.view;

import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.galaxy.note.category.view.TransitionController$subscribeTransitionDebounce$1;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes9.dex */
public final class TransitionController$subscribeTransitionDebounce$1<T, R> implements Function {

    /* renamed from: e */
    public final /* synthetic */ Transition f55105e;

    /* renamed from: f */
    public final /* synthetic */ ViewGroup f55106f;

    /* renamed from: g */
    public final /* synthetic */ Function0<Unit> f55107g;

    public TransitionController$subscribeTransitionDebounce$1(Transition transition, ViewGroup viewGroup, Function0<Unit> function0) {
        this.f55105e = transition;
        this.f55106f = viewGroup;
        this.f55107g = function0;
    }

    /* renamed from: c */
    public static final void m43958c(Transition transition, ViewGroup transitionView, Function0 transitionCallback, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(transition, "$transition");
        Intrinsics.checkNotNullParameter(transitionView, "$transitionView");
        Intrinsics.checkNotNullParameter(transitionCallback, "$transitionCallback");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        transition.addListener(new EmptyTransitionListener() { // from class: com.onyx.galaxy.note.category.view.TransitionController$subscribeTransitionDebounce$1$1$1
            @Override // com.onyx.galaxy.note.category.view.EmptyTransitionListener, androidx.transition.Transition.TransitionListener
            public void onTransitionEnd(@NotNull Transition transition2) {
                Intrinsics.checkNotNullParameter(transition2, "transition");
                transition2.removeListener(this);
                RxjavaKt.done(emitter, Unit.INSTANCE);
            }
        });
        TransitionManager.beginDelayedTransition(transitionView, transition);
        transitionCallback.invoke();
    }

    @Override // io.reactivex.rxjava3.functions.Function
    @NotNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ObservableSource<? extends Unit> apply(Unit unit) {
        final Transition transition = this.f55105e;
        final ViewGroup viewGroup = this.f55106f;
        final Function0<Unit> function0 = this.f55107g;
        return Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.enn
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TransitionController$subscribeTransitionDebounce$1.m43958c(Transition.this, viewGroup, function0, observableEmitter);
            }
        });
    }
}
