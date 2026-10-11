package com.onyx.galaxy.note.category.view;

import android.view.ViewGroup;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.transition.AutoTransition;
import androidx.transition.Transition;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J0\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tR'\u0010\u0013\u001a\u0015\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\t0\t0\u000e¢\u0006\u0002\b\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/TransitionController;", "", "Landroid/view/ViewGroup;", "transitionView", "Landroidx/transition/Transition;", AnimatedStateListDrawableCompat.f876Z, "", "time", "Lkotlin/Function0;", "", "transitionCallback", "subscribeTransitionDebounce", "onNext", "dispose", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "a", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "updateSubject", "Lio/reactivex/rxjava3/disposables/Disposable;", "b", "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TransitionController {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long TRANSITION_CONTROLLER_DEBOUNCE_TIME = 100;

    /* renamed from: c */
    @NotNull
    public static final Lazy<AutoTransition> f55102c;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PublishSubject<Unit> updateSubject;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/TransitionController$Companion;", "", "()V", "TRANSITION_CONTROLLER_DEBOUNCE_TIME", "", "TRANSITION_CONTROLLER_TRANSITION", "Landroidx/transition/AutoTransition;", "getTRANSITION_CONTROLLER_TRANSITION", "()Landroidx/transition/AutoTransition;", "TRANSITION_CONTROLLER_TRANSITION$delegate", "Lkotlin/Lazy;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AutoTransition getTRANSITION_CONTROLLER_TRANSITION() {
            return (AutoTransition) TransitionController.f55102c.getValue();
        }

        public Companion() {
        }
    }

    static {
        Lazy<AutoTransition> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AutoTransition>() { // from class: com.onyx.galaxy.note.category.view.TransitionController$Companion$TRANSITION_CONTROLLER_TRANSITION$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AutoTransition invoke() {
                return new AutoTransition();
            }
        });
        f55102c = lazy;
    }

    public TransitionController() {
        PublishSubject<Unit> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.updateSubject = create;
    }

    public static /* synthetic */ void subscribeTransitionDebounce$default(TransitionController transitionController, ViewGroup viewGroup, Transition transition, long j, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            transition = INSTANCE.getTRANSITION_CONTROLLER_TRANSITION();
        }
        Transition transition2 = transition;
        if ((i & 4) != 0) {
            j = 100;
        }
        transitionController.subscribeTransitionDebounce(viewGroup, transition2, j, function0);
    }

    public final void dispose() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            if (disposable != null) {
                disposable.dispose();
            }
            this.disposable = null;
        }
    }

    public final void onNext() {
        this.updateSubject.onNext(Unit.INSTANCE);
    }

    public final void subscribeTransitionDebounce(@NotNull ViewGroup transitionView, @NotNull Transition transition, long time, @NotNull Function0<Unit> transitionCallback) {
        Intrinsics.checkNotNullParameter(transitionView, "transitionView");
        Intrinsics.checkNotNullParameter(transition, "transition");
        Intrinsics.checkNotNullParameter(transitionCallback, "transitionCallback");
        this.disposable = this.updateSubject.debounce(time, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).concatMap(new TransitionController$subscribeTransitionDebounce$1(transition, transitionView, transitionCallback)).subscribe();
    }
}
