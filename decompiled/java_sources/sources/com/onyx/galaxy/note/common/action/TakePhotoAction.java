package com.onyx.galaxy.note.common.action;

import android.net.Uri;
import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.FileKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.extension.ActivityKt;
import com.onyx.galaxy.note.common.action.TakePhotoAction;
import com.onyx.galaxy.note.editor.api.ContentApiSubscriber;
import com.permissionx.guolindev.PermissionX;
import com.permissionx.guolindev.callback.RequestCallback;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB-\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\f\u001a\u00020\u0000H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/TakePhotoAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Ljava/io/File;", "file", "", "setFile", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "isGranted", "", "getPermission", "r", C4921e.f26528e, "Landroid/net/Uri;", "getUri", "q", "Landroidx/fragment/app/Fragment;", "e", "Landroidx/fragment/app/Fragment;", "fragment", "Landroidx/activity/result/ActivityResultLauncher;", C6997f.f39671c, "Landroidx/activity/result/ActivityResultLauncher;", "launcher", C6998g.f39679a, "Ljava/io/File;", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/io/File;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TakePhotoAction extends RxBaseAction<TakePhotoAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public final Fragment fragment;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ActivityResultLauncher<Uri> launcher;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public File file;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/TakePhotoAction$Companion;", "", "()V", "generateTakePictureFile", "Ljava/io/File;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final File generateTakePictureFile() {
            FileUtils fileUtils = FileUtils.INSTANCE;
            File file = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), fileUtils.combine(ContentApiSubscriber.KEY_TAKE_PICTURE, "png"));
            if (file.exists()) {
                fileUtils.deleteFile(file);
            }
            return file;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.TakePhotoAction$a */
    /* loaded from: classes9.dex */
    public static final class C11605a<T, R> implements Function {
        public C11605a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull TakePhotoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TakePhotoAction.this.m44964o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.TakePhotoAction$b */
    /* loaded from: classes9.dex */
    public static final class C11606b<T> implements Predicate {

        /* renamed from: e */
        public static final C11606b<T> f55966e = new C11606b<>();

        /* renamed from: a */
        public final boolean m44968a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m44968a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.TakePhotoAction$c */
    /* loaded from: classes9.dex */
    public static final class C11607c<T, R> implements Function {
        public C11607c() {
        }

        @NotNull
        /* renamed from: a */
        public final TakePhotoAction m44969a(boolean z) {
            return TakePhotoAction.this.m44966r();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44969a(((Boolean) obj).booleanValue());
        }
    }

    public /* synthetic */ TakePhotoAction(Fragment fragment, ActivityResultLauncher activityResultLauncher, File file, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : fragment, activityResultLauncher, (i & 4) != 0 ? null : file);
    }

    /* renamed from: n */
    public static final void m44962n(TakePhotoAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m44965q();
    }

    /* renamed from: p */
    public static final void m44963p(ReplaySubject subject, boolean z, List list, List deniedList) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(list, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter(deniedList, "deniedList");
        if (!z) {
            Debug.INSTANCE.m32037d("These permissions are denied: " + deniedList);
        }
        RxjavaKt.done(subject, Boolean.valueOf(z));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TakePhotoAction> create() {
        Observable flatMap = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C11605a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.doOnNextIfFalse(flatMap, new Consumer() { // from class: com.sunia.HTREnginev2.g9n
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                TakePhotoAction.m44962n(TakePhotoAction.this, ((Boolean) obj).booleanValue());
            }
        }).filter(C11606b.f55966e).map(new C11607c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getPermission() {
        return "android.permission.CAMERA";
    }

    public final Uri getUri() {
        if (this.file == null) {
            this.file = INSTANCE.generateTakePictureFile();
        }
        File file = this.file;
        Intrinsics.checkNotNull(file);
        return FileKt.toProviderUri(file, getAppContext());
    }

    public final boolean isGranted() {
        return PermissionX.isGranted(getAppContext(), getPermission());
    }

    /* renamed from: o */
    public final Observable<Boolean> m44964o() {
        if (this.fragment == null) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(isGranted()));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        PermissionX.init(this.fragment).permissions(getPermission()).request(new RequestCallback() { // from class: com.sunia.HTREnginev2.f9n
            @Override // com.permissionx.guolindev.callback.RequestCallback
            public final void onResult(boolean z, List list, List list2) {
                TakePhotoAction.m44963p(ReplaySubject.this, z, list, list2);
            }
        });
        return create;
    }

    /* renamed from: q */
    public final void m44965q() {
        FragmentActivity requireActivity;
        Fragment fragment = this.fragment;
        if (fragment == null || (requireActivity = fragment.requireActivity()) == null) {
            return;
        }
        ActivityKt.shouldShowGuideToPermissionSettings(requireActivity, getPermission());
    }

    /* renamed from: r */
    public final TakePhotoAction m44966r() {
        this.launcher.launch(getUri());
        return this;
    }

    public final void setFile(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
    }

    public TakePhotoAction(@Nullable Fragment fragment, @NotNull ActivityResultLauncher<Uri> launcher, @Nullable File file) {
        Intrinsics.checkNotNullParameter(launcher, "launcher");
        this.fragment = fragment;
        this.launcher = launcher;
        this.file = file;
    }
}
