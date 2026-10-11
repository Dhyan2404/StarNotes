package com.onyx.galaxy.note.settings.utils;

import android.content.Context;
import android.view.WindowManager;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.alibaba.fastjson2.TypeReference;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.galaxy.note.p048ui.view.EyesComfortOverlayView;
import com.onyx.galaxy.note.settings.data.SettingsConfigConst;
import com.onyx.galaxy.note.settings.utils.EyesComfortManager;
import com.onyx.galaxy.note.settings.utils.EyesComforterFactory;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\b*\u00014\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\b\u0002¢\u0006\u0004\b9\u0010:J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0002J\b\u0010\u0016\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0013H\u0002J\b\u0010\u001b\u001a\u00020\u0002H\u0002R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R%\u0010+\u001a\u0010\u0012\f\u0012\n '*\u0004\u0018\u00010\u00130\u00130&8\u0006¢\u0006\f\n\u0004\b\u0011\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010,R\u0016\u0010.\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010,R!\u00103\u001a\b\u0012\u0004\u0012\u0002000/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u00101\u001a\u0004\b#\u00102R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u00105R\u0016\u00108\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;", "", "", "init", "onResume", "onPause", "", "intensity", "setIntensity", "toggle", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "getCurrentSetting", "comforterConfig", "switchSetting", "Landroid/content/Context;", "context", C6997f.f39671c, "d", "e", "", C6998g.f39679a, C6999h.f39688c, "b", "i", "a", "newState", "j", C4921e.f26537n, "Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;", "Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;", "overlayView", "Landroid/view/WindowManager;", "Landroid/view/WindowManager;", "windowManager", "Landroid/view/WindowManager$LayoutParams;", "c", "Landroid/view/WindowManager$LayoutParams;", "params", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "Landroidx/lifecycle/MutableLiveData;", "getOpened", "()Landroidx/lifecycle/MutableLiveData;", "opened", Constants.HASIDCALL_INDEX_SIG, "isActive", "initializeView", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$a;", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "option", "com/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1", "Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager$appLifecycleObserver$1;", "appLifecycleObserver", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "currentComforterSetting", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEyesComfortManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EyesComfortManager.kt\ncom/onyx/galaxy/note/settings/utils/EyesComfortManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,195:1\n2634#2:196\n1#3:197\n1#3:198\n41#4,5:199\n41#4,5:204\n*S KotlinDebug\n*F\n+ 1 EyesComfortManager.kt\ncom/onyx/galaxy/note/settings/utils/EyesComfortManager\n*L\n66#1:196\n66#1:197\n88#1:199,5\n116#1:204,5\n*E\n"})
/* loaded from: classes9.dex */
public final class EyesComfortManager {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public static EyesComfortOverlayView overlayView;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public static WindowManager windowManager;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public static WindowManager.LayoutParams params;

    /* renamed from: f, reason: from kotlin metadata */
    public static boolean initializeView;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final Lazy option;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final EyesComfortManager$appLifecycleObserver$1 appLifecycleObserver;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static EyesComforterFactory.EyesComforterSetting currentComforterSetting;

    @NotNull
    public static final EyesComfortManager INSTANCE = new EyesComfortManager();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final MutableLiveData<Boolean> opened = new MutableLiveData<>(Boolean.FALSE);

    /* renamed from: e, reason: from kotlin metadata */
    public static boolean isActive = true;

    /* renamed from: com.onyx.galaxy.note.settings.utils.EyesComfortManager$a */
    /* loaded from: classes9.dex */
    public static final class C12737a {

        /* renamed from: a */
        public boolean f61772a;

        /* renamed from: b */
        @NotNull
        public EyesComfortType f61773b = EyesComfortType.RECOMMEND;

        /* renamed from: c */
        @NotNull
        public Map<EyesComfortType, Float> f61774c = EyesComforterFactory.INSTANCE.getIntensityMap();

        @NotNull
        /* renamed from: a */
        public final Map<EyesComfortType, Float> m51173a() {
            return this.f61774c;
        }

        /* renamed from: b */
        public final boolean m51174b() {
            return this.f61772a;
        }

        /* renamed from: c */
        public final float m51175c(@NotNull EyesComfortType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            Float f = this.f61774c.get(type);
            if (f != null) {
                return f.floatValue();
            }
            return 50.0f;
        }

        @NotNull
        /* renamed from: d */
        public final EyesComfortType m51176d() {
            return this.f61773b;
        }

        /* renamed from: e */
        public final void m51177e(@NotNull Map<EyesComfortType, Float> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.f61774c = map;
        }

        /* renamed from: f */
        public final void m51178f(boolean z) {
            this.f61772a = z;
        }

        /* renamed from: g */
        public final void m51179g(@NotNull EyesComfortType eyesComfortType) {
            Intrinsics.checkNotNullParameter(eyesComfortType, "<set-?>");
            this.f61773b = eyesComfortType;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.onyx.galaxy.note.settings.utils.EyesComfortManager$appLifecycleObserver$1] */
    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<C12737a>>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$option$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<EyesComfortManager.C12737a> invoke() {
                return new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), SettingsConfigConst.KEY_EYES_COMFORT_CONFIG, new TypeReference<EyesComfortManager.C12737a>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$option$2.1
                }, new Function0<EyesComfortManager.C12737a>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$option$2.2
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final EyesComfortManager.C12737a invoke() {
                        return new EyesComfortManager.C12737a();
                    }
                });
            }
        });
        option = lazy;
        appLifecycleObserver = new DefaultLifecycleObserver() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$appLifecycleObserver$1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onPause(@NotNull LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                EyesComfortManager.INSTANCE.onPause();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NotNull LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                EyesComfortManager.INSTANCE.onResume();
            }
        };
        currentComforterSetting = EyesComforterFactory.INSTANCE.getDefaultSetting();
    }

    /* renamed from: a */
    public final void m51162a() {
        if (PermissionUtils.isGrantedDrawOverlays()) {
            return;
        }
        m51163b();
    }

    /* renamed from: b */
    public final void m51163b() {
        if (m51168g()) {
            m51170i();
            opened.setValue(Boolean.FALSE);
            m51164c().getAndPut(new Function1<C12737a, Unit>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$close$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(EyesComfortManager.C12737a c12737a) {
                    invoke2(c12737a);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable EyesComfortManager.C12737a c12737a) {
                    if (c12737a == null) {
                        return;
                    }
                    c12737a.m51178f(false);
                }
            });
        }
    }

    /* renamed from: c */
    public final JSONObjectOption<C12737a> m51164c() {
        return (JSONObjectOption) option.getValue();
    }

    /* renamed from: d */
    public final void m51165d() {
        Object obj;
        C12737a c12737a = m51164c().get();
        List<EyesComforterFactory.EyesComforterSetting> settings = EyesComforterFactory.INSTANCE.getSettings();
        for (EyesComforterFactory.EyesComforterSetting eyesComforterSetting : settings) {
            eyesComforterSetting.setIntensity(c12737a.m51175c(eyesComforterSetting.getType()));
        }
        Iterator<T> it2 = settings.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj = it2.next();
                if (((EyesComforterFactory.EyesComforterSetting) obj).getType() == c12737a.m51176d()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        EyesComforterFactory.EyesComforterSetting eyesComforterSetting2 = (EyesComforterFactory.EyesComforterSetting) obj;
        if (eyesComforterSetting2 != null) {
            EyesComfortManager eyesComfortManager = INSTANCE;
            eyesComfortManager.switchSetting(eyesComforterSetting2);
            if (c12737a.m51174b()) {
                eyesComfortManager.m51169h();
            }
        }
    }

    /* renamed from: e */
    public final void m51166e() {
        ProcessLifecycleOwner.INSTANCE.get().getLifecycle().addObserver(appLifecycleObserver);
    }

    /* renamed from: f */
    public final void m51167f(Context context) {
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        windowManager = (WindowManager) systemService;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2038;
        layoutParams.flags = 792;
        layoutParams.format = -3;
        layoutParams.alpha = 0.7f;
        layoutParams.width = ScreenUtils.getScreenWidth();
        layoutParams.height = ScreenUtils.getScreenHeight();
        params = layoutParams;
        overlayView = new EyesComfortOverlayView(context);
    }

    /* renamed from: g */
    public final boolean m51168g() {
        return Intrinsics.areEqual(opened.getValue(), Boolean.TRUE);
    }

    @NotNull
    public final EyesComforterFactory.EyesComforterSetting getCurrentSetting() {
        return currentComforterSetting;
    }

    @NotNull
    public final MutableLiveData<Boolean> getOpened() {
        return opened;
    }

    /* renamed from: h */
    public final void m51169h() {
        if (m51168g()) {
            return;
        }
        EyesComfortOverlayView eyesComfortOverlayView = overlayView;
        if ((eyesComfortOverlayView != null ? eyesComfortOverlayView.getParent() : null) != null) {
            return;
        }
        if (!PermissionUtils.isGrantedDrawOverlays()) {
            m51163b();
            return;
        }
        if (!initializeView) {
            m51167f(ResManager.INSTANCE.getAppContext());
            m51166e();
            m51172k();
            WindowManager windowManager2 = windowManager;
            if (windowManager2 != null) {
                windowManager2.addView(overlayView, params);
            }
            initializeView = true;
        }
        opened.setValue(Boolean.TRUE);
        m51164c().getAndPut(new Function1<C12737a, Unit>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$open$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(EyesComfortManager.C12737a c12737a) {
                invoke2(c12737a);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable EyesComfortManager.C12737a c12737a) {
                if (c12737a == null) {
                    return;
                }
                c12737a.m51178f(true);
            }
        });
    }

    /* renamed from: i */
    public final void m51170i() {
        WindowManager windowManager2;
        EyesComfortOverlayView eyesComfortOverlayView = overlayView;
        if (((eyesComfortOverlayView != null ? eyesComfortOverlayView.getParent() : null) != null) && (windowManager2 = windowManager) != null) {
            windowManager2.removeView(overlayView);
        }
        ProcessLifecycleOwner.INSTANCE.get().getLifecycle().removeObserver(appLifecycleObserver);
        overlayView = null;
        params = null;
        windowManager = null;
        initializeView = false;
    }

    public final void init() {
        m51165d();
    }

    /* renamed from: j */
    public final void m51171j(boolean newState) {
        isActive = newState;
        ViewKt.setViewVisibleOrGone(overlayView, newState);
    }

    /* renamed from: k */
    public final void m51172k() {
        EyesComfortOverlayView eyesComfortOverlayView = overlayView;
        if (eyesComfortOverlayView != null) {
            eyesComfortOverlayView.updatePaintColor(currentComforterSetting.getComforterColor());
        }
        EyesComfortOverlayView eyesComfortOverlayView2 = overlayView;
        if (eyesComfortOverlayView2 != null) {
            eyesComfortOverlayView2.updateColorMatrix(EyesComforterFactory.INSTANCE.getColorMatrix(currentComforterSetting));
        }
    }

    public final void onPause() {
        if (m51168g()) {
            m51171j(false);
        }
    }

    public final void onResume() {
        if (m51168g()) {
            m51162a();
            m51171j(true);
        }
    }

    public final void setIntensity(final float intensity) {
        currentComforterSetting.setIntensity(intensity);
        m51164c().getAndPut(new Function1<C12737a, Unit>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$setIntensity$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(EyesComfortManager.C12737a c12737a) {
                invoke2(c12737a);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable EyesComfortManager.C12737a c12737a) {
                Map<EyesComfortType, Float> m51173a;
                EyesComforterFactory.EyesComforterSetting eyesComforterSetting;
                if (c12737a == null || (m51173a = c12737a.m51173a()) == null) {
                    return;
                }
                eyesComforterSetting = EyesComfortManager.currentComforterSetting;
                m51173a.put(eyesComforterSetting.getType(), Float.valueOf(intensity));
            }
        });
        if (m51168g()) {
            m51172k();
        }
    }

    public final void switchSetting(@NotNull final EyesComforterFactory.EyesComforterSetting comforterConfig) {
        Intrinsics.checkNotNullParameter(comforterConfig, "comforterConfig");
        currentComforterSetting = comforterConfig;
        setIntensity(comforterConfig.getIntensity());
        m51164c().getAndPut(new Function1<C12737a, Unit>() { // from class: com.onyx.galaxy.note.settings.utils.EyesComfortManager$switchSetting$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(EyesComfortManager.C12737a c12737a) {
                invoke2(c12737a);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable EyesComfortManager.C12737a c12737a) {
                if (c12737a == null) {
                    return;
                }
                c12737a.m51179g(EyesComforterFactory.EyesComforterSetting.this.getType());
            }
        });
    }

    public final void toggle() {
        if (m51168g()) {
            m51163b();
        } else {
            m51169h();
        }
    }
}
