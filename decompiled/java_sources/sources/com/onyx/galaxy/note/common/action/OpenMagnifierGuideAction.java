package com.onyx.galaxy.note.common.action;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.FragmentActivity;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.constant.GuideInfoConst;
import com.onyx.galaxy.note.member.dialog.MagnifierFeatureDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002R\u001b\u0010\u0011\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/app/Activity;", ActivityChooserModel.f1429r, "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "guideInfoList", "", "m", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", C6998g.f39679a, "Lkotlin/Lazy;", "l", "()Lcom/onyx/android/sdk/data/utils/BooleanOption;", "option", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class OpenMagnifierGuideAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h */
    public static boolean f55915h;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy option;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;", "", "()V", "shown", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$a */
    /* loaded from: classes9.dex */
    public static final class C11579a<T> implements Predicate {

        /* renamed from: e */
        public static final C11579a<T> f55917e = new C11579a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull OpenMagnifierGuideAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !OpenMagnifierGuideAction.f55915h;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$b */
    /* loaded from: classes9.dex */
    public static final class C11580b<T> implements Consumer {
        public C11580b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenMagnifierGuideAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Companion companion = OpenMagnifierGuideAction.INSTANCE;
            OpenMagnifierGuideAction.f55915h = !Debug.INSTANCE.getDebug() && OpenMagnifierGuideAction.this.m44907l().get();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$c */
    /* loaded from: classes9.dex */
    public static final class C11581c<T> implements Predicate {

        /* renamed from: e */
        public static final C11581c<T> f55919e = new C11581c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull OpenMagnifierGuideAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !OpenMagnifierGuideAction.f55915h;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$d */
    /* loaded from: classes9.dex */
    public static final class C11582d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<TimeGuard> f55920e;

        public C11582d(Ref.ObjectRef<TimeGuard> objectRef) {
            this.f55920e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenMagnifierGuideAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f55920e.element = (T) new TimeGuard(3000L, 0L, 2, null);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$e */
    /* loaded from: classes9.dex */
    public static final class C11583e<T, R> implements Function {
        public C11583e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<GuideInfo>> apply(@NotNull OpenMagnifierGuideAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadGuideInfoAction(OpenMagnifierGuideAction.this.m44907l().getKey(), 0L, 2, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$f */
    /* loaded from: classes9.dex */
    public static final class C11584f<T> implements Predicate {

        /* renamed from: e */
        public static final C11584f<T> f55922e = new C11584f<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<GuideInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$g */
    /* loaded from: classes9.dex */
    public static final class C11585g<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<TimeGuard> f55923e;

        public C11585g(Ref.ObjectRef<TimeGuard> objectRef) {
            this.f55923e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull List<GuideInfo> it2) {
            TimeGuard timeGuard;
            Intrinsics.checkNotNullParameter(it2, "it");
            TimeGuard timeGuard2 = this.f55923e.element;
            if (timeGuard2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("timeGuard");
                timeGuard = null;
            } else {
                timeGuard = timeGuard2;
            }
            return !timeGuard.check();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$h */
    /* loaded from: classes9.dex */
    public static final class C11586h<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Activity f55925f;

        public C11586h(Activity activity) {
            this.f55925f = activity;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<GuideInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OpenMagnifierGuideAction.this.m44908m(this.f55925f, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$i */
    /* loaded from: classes9.dex */
    public static final class C11587i<T, R> implements Function {

        /* renamed from: e */
        public static final C11587i<T, R> f55926e = new C11587i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<GuideInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(!it2.isEmpty());
        }
    }

    public OpenMagnifierGuideAction() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BooleanOption>() { // from class: com.onyx.galaxy.note.common.action.OpenMagnifierGuideAction$option$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BooleanOption invoke() {
                return MMKVUtils.INSTANCE.booleanOption(GuideInfoConst.GUIDE_FUN_MAGNIFIER, false);
            }
        });
        this.option = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Activity activity = getActivity();
        if (activity == null) {
            Observable<Boolean> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Observable<Boolean> map = Observable.just(this).filter(C11579a.f55917e).doOnNext(new C11580b()).filter(C11581c.f55919e).doOnNext(new C11582d(objectRef)).flatMap(new C11583e()).filter(C11584f.f55922e).filter(new C11585g(objectRef)).observeOn(getMainUIScheduler()).doOnNext(new C11586h(activity)).map(C11587i.f55926e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final BooleanOption m44907l() {
        return (BooleanOption) this.option.getValue();
    }

    /* renamed from: m */
    public final void m44908m(Activity activity, List<GuideInfo> guideInfoList) {
        try {
            FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
            if (fragmentActivity == null) {
                return;
            }
            MagnifierFeatureDialog.INSTANCE.create(guideInfoList).show(fragmentActivity.getSupportFragmentManager(), AnyKt.toSimpleNameString(this));
            f55915h = true;
            m44907l().put(f55915h);
        } catch (Exception unused) {
        }
    }
}
