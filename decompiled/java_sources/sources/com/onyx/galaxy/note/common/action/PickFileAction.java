package com.onyx.galaxy.note.common.action;

import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.galaxy.note.common.action.PickFileAction;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/PickFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "p", "", "q", "", C4921e.f26528e, "", "s", "Landroidx/fragment/app/Fragment;", "e", "Landroidx/fragment/app/Fragment;", "fragment", "Landroidx/activity/result/ActivityResultLauncher;", C6997f.f39671c, "Landroidx/activity/result/ActivityResultLauncher;", "launcher", C6998g.f39679a, Constants.STRING_SIG, "mimetype", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PickFileAction extends RxBaseAction<PickFileAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Fragment fragment;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<String> launcher;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String mimetype;

    /* renamed from: com.onyx.galaxy.note.common.action.PickFileAction$a */
    /* loaded from: classes9.dex */
    public static final class C11591a<T, R> implements Function {
        public C11591a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull PickFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PickFileAction.this.m44928q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.PickFileAction$b */
    /* loaded from: classes9.dex */
    public static final class C11592b<T> implements Predicate {

        /* renamed from: e */
        public static final C11592b<T> f55937e = new C11592b<>();

        /* renamed from: a */
        public final boolean m44931a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m44931a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.PickFileAction$c */
    /* loaded from: classes9.dex */
    public static final class C11593c<T, R> implements Function {
        public C11593c() {
        }

        @NotNull
        /* renamed from: a */
        public final PickFileAction m44932a(boolean z) {
            return PickFileAction.this.m44927p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44932a(((Boolean) obj).booleanValue());
        }
    }

    public PickFileAction(@NotNull Fragment fragment, @NotNull ActivityResultLauncher<String> launcher, @NotNull String mimetype) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(launcher, "launcher");
        Intrinsics.checkNotNullParameter(mimetype, "mimetype");
        this.fragment = fragment;
        this.launcher = launcher;
        this.mimetype = mimetype;
    }

    /* renamed from: n */
    public static final void m44924n(PickFileAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44929s();
    }

    /* renamed from: r */
    public static final void m44925r(ReplaySubject subject, boolean z, List grantedList, List deniedList) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(grantedList, "grantedList");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (!z) {
            Debug.INSTANCE.m32037d("These permissions are denied: " + deniedList);
        }
        RxjavaKt.done(subject, Boolean.valueOf(z));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PickFileAction> create() {
        Observable flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11591a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.doOnNextIfFalse(flatMap, new Consumer() { // from class: com.sunia.HTREnginev2.z3l
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PickFileAction.m44924n(PickFileAction.this, ((Boolean) obj).booleanValue());
            }
        }).filter(C11592b.f55937e).map(new C11593c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final String m44926o() {
        return "android.permission.READ_EXTERNAL_STORAGE";
    }

    /* renamed from: p */
    public final PickFileAction m44927p() {
        this.launcher.launch(this.mimetype);
        return this;
    }

    /* renamed from: q */
    public final Observable<Boolean> m44928q() {
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        PermissionX.init(this.fragment).permissions(m44926o()).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.y3l
            @Override // com.permissionx.guolindev.callback.RequestCallback
            public final void onResult(boolean z, List list, List list2) {
                PickFileAction.m44925r(ReplaySubject.this, z, list, list2);
            }
        });
        return create;
    }

    /* renamed from: s */
    public final void m44929s() {
        FragmentActivity requireActivity = this.fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        ActivityKt.shouldShowGuideToPermissionSettings(requireActivity, m44926o());
    }
}
