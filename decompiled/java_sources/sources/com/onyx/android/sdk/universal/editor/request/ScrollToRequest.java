package com.onyx.android.sdk.universal.editor.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.histogram.TimeHistogram;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u000bR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;", "boxManager", C6998g.f39679a, C6997f.f39671c, "", "F", "newX", "newY", "", C6999h.f39688c, "I", "source", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "i", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "getVirtualDocViewInfo", "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "setVirtualDocViewInfo", "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V", "virtualDocViewInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFI)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nScrollToRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrollToRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ScrollToRequest\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,62:1\n17#2,6:63\n*S KotlinDebug\n*F\n+ 1 ScrollToRequest.kt\ncom/onyx/android/sdk/universal/editor/request/ScrollToRequest\n*L\n32#1:63,6\n*E\n"})
/* loaded from: classes8.dex */
public final class ScrollToRequest extends RxBaseAppRequest {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: j */
    @NotNull
    public static final Lazy<TimeHistogram> f52609j;

    /* renamed from: f, reason: from kotlin metadata */
    public final float newX;

    /* renamed from: g, reason: from kotlin metadata */
    public final float newY;

    /* renamed from: h, reason: from kotlin metadata */
    public final int source;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public VirtualDocViewInfo virtualDocViewInfo;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest$Companion;", "", "", "getScrollTimeHistogram", "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "scrollTimeHistogram$delegate", "Lkotlin/Lazy;", "a", "()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "scrollTimeHistogram", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final TimeHistogram m41418a() {
            return (TimeHistogram) ScrollToRequest.f52609j.getValue();
        }

        @NotNull
        public final String getScrollTimeHistogram() {
            return m41418a().getTimeHistogramIf();
        }

        public Companion() {
        }
    }

    static {
        Lazy<TimeHistogram> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TimeHistogram>() { // from class: com.onyx.android.sdk.universal.editor.request.ScrollToRequest$Companion$scrollTimeHistogram$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TimeHistogram invoke() {
                return new TimeHistogram("scrollToRequest", false);
            }
        });
        f52609j = lazy;
    }

    public /* synthetic */ ScrollToRequest(WorkBundle workBundle, float f, float f2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(workBundle, f, f2, (i2 & 8) != 0 ? 0 : i);
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        BoxManager boxManager = workBundle.getBoxManager();
        if (boxManager == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        m41417g(boxManager);
        INSTANCE.m41418a().addTimeIf(System.currentTimeMillis() - currentTimeMillis);
    }

    /* renamed from: f */
    public final void m41416f(BoxManager boxManager) {
        if (boxManager.isEnabledContinuousScroll() || this.source != 1) {
            return;
        }
        boxManager.visibleBoxes();
        BoxManager.scrollTo$default(boxManager, boxManager.getCurrentBoxId(), 0.0f, 0.0f, 6, null);
    }

    /* renamed from: g */
    public final void m41417g(BoxManager boxManager) {
        boxManager.scrollTo(this.newX, this.newY);
        m41416f(boxManager);
        Debug.INSTANCE.m32035d(ScrollToRequest.class, "newX = " + this.newX + ", newY = " + this.newY, new Object[0]);
        this.virtualDocViewInfo = WorkBundleKt.collectVirtualDocViewInfo(getWorkBundle());
    }

    @NotNull
    public final VirtualDocViewInfo getVirtualDocViewInfo() {
        return this.virtualDocViewInfo;
    }

    public final void setVirtualDocViewInfo(@NotNull VirtualDocViewInfo virtualDocViewInfo) {
        Intrinsics.checkNotNullParameter(virtualDocViewInfo, "<set-?>");
        this.virtualDocViewInfo = virtualDocViewInfo;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollToRequest(@NotNull WorkBundle workBundle, float f, float f2, int i) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.newX = f;
        this.newY = f2;
        this.source = i;
        this.virtualDocViewInfo = new VirtualDocViewInfo();
    }
}
