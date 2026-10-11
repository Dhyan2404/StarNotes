package com.onyx.galaxy.note.utils.lifecycler;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.extension.ClipBoard;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.account.p043ui.RecentLoginActivity;
import com.onyx.galaxy.note.datarepository.action.HandleShareResourceAction;
import com.onyx.galaxy.note.datarepository.p045ui.ShareResourceActivity;
import com.onyx.galaxy.note.p048ui.activity.SplashActivity;
import com.onyx.galaxy.note.utils.lifecycler.ShareResourceMonitor;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010 \u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u000b0\u000b0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001b\u0010+\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010#\u001a\u0004\b)\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/lifecycler/ShareResourceMonitor;", "Lcom/onyx/galaxy/note/utils/lifecycler/ActivityLifecycleHandler;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "", "onActivityStarted", "onActivityResumed", "onActivityStopped", "Landroid/content/Context;", "context", "e", "", "code", "", C6998g.f39679a, "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "", C6997f.f39671c, "I", "activeActivityCount", Constants.HASIDCALL_INDEX_SIG, "needHandleClipboard", "Landroid/content/ClipData;", C6999h.f39688c, "Landroid/content/ClipData;", "lastClip", "", "kotlin.jvm.PlatformType", "i", "Ljava/util/Set;", "IGNORED_ACTIVITIES", "Landroid/os/Handler;", "j", "Lkotlin/Lazy;", "d", "()Landroid/os/Handler;", Constants.TRANSLET_OUTPUT_PNAME, "Landroid/content/ClipboardManager;", C4921e.f26537n, "c", "()Landroid/content/ClipboardManager;", "clipboardManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShareResourceMonitor extends ActivityLifecycleHandler {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    public int activeActivityCount;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean needHandleClipboard;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ClipData lastClip;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Set<String> IGNORED_ACTIVITIES;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy handler;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy clipboardManager;

    public ShareResourceMonitor(@NotNull Context context) {
        Set<String> of;
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.needHandleClipboard = true;
        of = SetsKt__SetsKt.setOf((Object[]) new String[]{SplashActivity.class.getName(), LoginActivity.class.getName(), RecentLoginActivity.class.getName(), ShareResourceActivity.class.getName()});
        this.IGNORED_ACTIVITIES = of;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Handler>() { // from class: com.onyx.galaxy.note.utils.lifecycler.ShareResourceMonitor$handler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Handler invoke() {
                return new Handler(Looper.getMainLooper());
            }
        });
        this.handler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ClipboardManager>() { // from class: com.onyx.galaxy.note.utils.lifecycler.ShareResourceMonitor$clipboardManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ClipboardManager invoke() {
                Object systemService = ShareResourceMonitor.this.getContext().getSystemService("clipboard");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                return (ClipboardManager) systemService;
            }
        });
        this.clipboardManager = lazy2;
    }

    /* renamed from: f */
    public static final void m52018f(ShareResourceMonitor this$0, ClipData clip, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(clip, "$clip");
        this$0.lastClip = clip;
        this$0.m52020c().clearPrimaryClip();
    }

    /* renamed from: h */
    public static final void m52019h(ShareResourceMonitor this$0, Activity activity) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.m52022e(activity);
    }

    /* renamed from: c */
    public final ClipboardManager m52020c() {
        return (ClipboardManager) this.clipboardManager.getValue();
    }

    /* renamed from: d */
    public final Handler m52021d() {
        return (Handler) this.handler.getValue();
    }

    /* renamed from: e */
    public final void m52022e(Context context) {
        final ClipData primaryClip;
        CharSequence trim;
        if (!m52020c().hasPrimaryClip() || (primaryClip = m52020c().getPrimaryClip()) == null || Intrinsics.areEqual(primaryClip.toString(), String.valueOf(this.lastClip))) {
            return;
        }
        trim = StringsKt__StringsKt.trim((CharSequence) ClipBoard.INSTANCE.findFirstTextContent(primaryClip));
        String obj = trim.toString();
        if (m52023g(obj)) {
            RxjavaKt.subscribeWithDefault$default(RxjavaKt.doOnNextIf(new HandleShareResourceAction(context, obj).build(), new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.utils.lifecycler.ShareResourceMonitor$handleClipboard$1
                @NotNull
                public final Boolean invoke(boolean z) {
                    return Boolean.valueOf(z);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                    return invoke(bool.booleanValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.onm
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj2) {
                    ShareResourceMonitor.m52018f(ShareResourceMonitor.this, primaryClip, ((Boolean) obj2).booleanValue());
                }
            }), null, null, null, 7, null);
        } else {
            this.lastClip = primaryClip;
        }
    }

    /* renamed from: g */
    public final boolean m52023g(String code) {
        IntRange until;
        int[] sliceArray;
        IntRange until2;
        int[] sliceArray2;
        int[] plus;
        if (code == null) {
            return false;
        }
        int[] array = code.codePoints().toArray();
        if (array.length < 6) {
            return false;
        }
        Intrinsics.checkNotNull(array);
        until = RangesKt___RangesKt.until(0, 3);
        sliceArray = ArraysKt___ArraysKt.sliceArray(array, until);
        until2 = RangesKt___RangesKt.until(array.length - 3, array.length);
        sliceArray2 = ArraysKt___ArraysKt.sliceArray(array, until2);
        plus = ArraysKt___ArraysJvmKt.plus(sliceArray, sliceArray2);
        int length = plus.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i5 = plus[i];
            if (128512 <= i5 && i5 < 128592) {
                i2++;
            } else {
                if (20570 <= i5 && i5 < 20827) {
                    i3++;
                } else {
                    if (19968 <= i5 && i5 < 20315) {
                        i4++;
                    }
                }
            }
            i++;
        }
        return i2 == 2 && i3 == 2 && i4 == 2;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.onyx.galaxy.note.utils.lifecycler.ActivityLifecycleHandler, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!this.IGNORED_ACTIVITIES.contains(activity.getClass().getName()) && GlobalConfig.INSTANCE.isShareResourceEnable() && this.needHandleClipboard) {
            this.needHandleClipboard = false;
            m52021d().post(new Runnable() { // from class: com.sunia.HTREnginev2.nnm
                @Override // java.lang.Runnable
                public final void run() {
                    ShareResourceMonitor.m52019h(ShareResourceMonitor.this, activity);
                }
            });
        }
    }

    @Override // com.onyx.galaxy.note.utils.lifecycler.ActivityLifecycleHandler, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        int i = this.activeActivityCount;
        if (i == 0) {
            this.needHandleClipboard = true;
        }
        this.activeActivityCount = i + 1;
    }

    @Override // com.onyx.galaxy.note.utils.lifecycler.ActivityLifecycleHandler, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activeActivityCount = Math.max(0, this.activeActivityCount - 1);
    }
}
