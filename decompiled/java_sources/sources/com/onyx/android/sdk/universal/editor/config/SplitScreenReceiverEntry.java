package com.onyx.android.sdk.universal.editor.config;

import android.graphics.RectF;
import android.view.View;
import com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\tH\u0002R\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;", "", "Landroid/view/View;", "view", "", "x", "y", "", Keywords.FUNC_CONTAINS_STRING, "Landroid/graphics/RectF;", "hintRegion", "region", "a", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "getPosition", "()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "setPosition", "(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)V", "position", "b", "Landroid/graphics/RectF;", "hitTestRegionPercent", "c", "hintRegionPercent", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SplitScreenReceiverEntry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    @NotNull
    public static final Lazy<List<SplitScreenReceiverEntry>> f51351d;

    /* renamed from: e */
    @NotNull
    public static final Lazy<SplitScreenReceiverEntry> f51352e;

    /* renamed from: f */
    @NotNull
    public static final Lazy<SplitScreenReceiverEntry> f51353f;

    /* renamed from: g */
    @NotNull
    public static final Lazy<SplitScreenReceiverEntry> f51354g;

    /* renamed from: h */
    @NotNull
    public static final Lazy<SplitScreenReceiverEntry> f51355h;

    /* renamed from: i */
    @NotNull
    public static final Lazy<SplitScreenReceiverEntry> f51356i;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public SplitScreenPosition position = SplitScreenPosition.LEFT;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public RectF hitTestRegionPercent = new RectF();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RectF hintRegionPercent = new RectF();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010!\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006R\u001b\u0010\f\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\b\u001a\u0004\b\r\u0010\u0006R\u001b\u0010\u000f\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\b\u001a\u0004\b\u0010\u0010\u0006R!\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\b\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\b\u001a\u0004\b\u0018\u0010\u0006¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry$Companion;", "", "()V", "bottomReceiver", "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;", "getBottomReceiver", "()Lcom/onyx/android/sdk/universal/editor/config/SplitScreenReceiverEntry;", "bottomReceiver$delegate", "Lkotlin/Lazy;", "fullReceiver", "getFullReceiver", "fullReceiver$delegate", "leftReceiver", "getLeftReceiver", "leftReceiver$delegate", "rightReceiver", "getRightReceiver", "rightReceiver$delegate", "splitScreenReceiverEntryList", "", "getSplitScreenReceiverEntryList", "()Ljava/util/List;", "splitScreenReceiverEntryList$delegate", "topReceiver", "getTopReceiver", "topReceiver$delegate", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SplitScreenReceiverEntry getBottomReceiver() {
            return (SplitScreenReceiverEntry) SplitScreenReceiverEntry.f51356i.getValue();
        }

        @NotNull
        public final SplitScreenReceiverEntry getFullReceiver() {
            return (SplitScreenReceiverEntry) SplitScreenReceiverEntry.f51352e.getValue();
        }

        @NotNull
        public final SplitScreenReceiverEntry getLeftReceiver() {
            return (SplitScreenReceiverEntry) SplitScreenReceiverEntry.f51353f.getValue();
        }

        @NotNull
        public final SplitScreenReceiverEntry getRightReceiver() {
            return (SplitScreenReceiverEntry) SplitScreenReceiverEntry.f51354g.getValue();
        }

        @NotNull
        public final List<SplitScreenReceiverEntry> getSplitScreenReceiverEntryList() {
            return (List) SplitScreenReceiverEntry.f51351d.getValue();
        }

        @NotNull
        public final SplitScreenReceiverEntry getTopReceiver() {
            return (SplitScreenReceiverEntry) SplitScreenReceiverEntry.f51355h.getValue();
        }

        public Companion() {
        }
    }

    static {
        Lazy<List<SplitScreenReceiverEntry>> lazy;
        Lazy<SplitScreenReceiverEntry> lazy2;
        Lazy<SplitScreenReceiverEntry> lazy3;
        Lazy<SplitScreenReceiverEntry> lazy4;
        Lazy<SplitScreenReceiverEntry> lazy5;
        Lazy<SplitScreenReceiverEntry> lazy6;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<SplitScreenReceiverEntry>>() { // from class: com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry$Companion$splitScreenReceiverEntryList$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<SplitScreenReceiverEntry> invoke() {
                ArrayList arrayList = new ArrayList();
                SplitScreenReceiverEntry.Companion companion = SplitScreenReceiverEntry.INSTANCE;
                arrayList.add(companion.getLeftReceiver());
                arrayList.add(companion.getTopReceiver());
                arrayList.add(companion.getRightReceiver());
                arrayList.add(companion.getBottomReceiver());
                return arrayList;
            }
        });
        f51351d = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SplitScreenReceiverEntry>() { // from class: com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry$Companion$fullReceiver$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SplitScreenReceiverEntry invoke() {
                SplitScreenReceiverEntry splitScreenReceiverEntry = new SplitScreenReceiverEntry();
                splitScreenReceiverEntry.setPosition(SplitScreenPosition.LEFT);
                splitScreenReceiverEntry.hitTestRegionPercent = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
                splitScreenReceiverEntry.hintRegionPercent = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
                return splitScreenReceiverEntry;
            }
        });
        f51352e = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SplitScreenReceiverEntry>() { // from class: com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry$Companion$leftReceiver$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SplitScreenReceiverEntry invoke() {
                SplitScreenReceiverEntry splitScreenReceiverEntry = new SplitScreenReceiverEntry();
                splitScreenReceiverEntry.setPosition(SplitScreenPosition.LEFT);
                splitScreenReceiverEntry.hitTestRegionPercent = new RectF(0.0f, 0.0f, 0.33333334f, 1.0f);
                splitScreenReceiverEntry.hintRegionPercent = new RectF(0.0f, 0.0f, 0.5f, 1.0f);
                return splitScreenReceiverEntry;
            }
        });
        f51353f = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<SplitScreenReceiverEntry>() { // from class: com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry$Companion$rightReceiver$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SplitScreenReceiverEntry invoke() {
                SplitScreenReceiverEntry splitScreenReceiverEntry = new SplitScreenReceiverEntry();
                splitScreenReceiverEntry.setPosition(SplitScreenPosition.RIGHT);
                splitScreenReceiverEntry.hitTestRegionPercent = new RectF(0.6666667f, 0.0f, 1.0f, 1.0f);
                splitScreenReceiverEntry.hintRegionPercent = new RectF(0.5f, 0.0f, 1.0f, 1.0f);
                return splitScreenReceiverEntry;
            }
        });
        f51354g = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<SplitScreenReceiverEntry>() { // from class: com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry$Companion$topReceiver$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SplitScreenReceiverEntry invoke() {
                SplitScreenReceiverEntry splitScreenReceiverEntry = new SplitScreenReceiverEntry();
                splitScreenReceiverEntry.setPosition(SplitScreenPosition.TOP);
                splitScreenReceiverEntry.hitTestRegionPercent = new RectF(0.33333334f, 0.0f, 0.6666667f, 0.5f);
                splitScreenReceiverEntry.hintRegionPercent = new RectF(0.0f, 0.0f, 1.0f, 0.5f);
                return splitScreenReceiverEntry;
            }
        });
        f51355h = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<SplitScreenReceiverEntry>() { // from class: com.onyx.android.sdk.universal.editor.config.SplitScreenReceiverEntry$Companion$bottomReceiver$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SplitScreenReceiverEntry invoke() {
                SplitScreenReceiverEntry splitScreenReceiverEntry = new SplitScreenReceiverEntry();
                splitScreenReceiverEntry.setPosition(SplitScreenPosition.BOTTOM);
                splitScreenReceiverEntry.hitTestRegionPercent = new RectF(0.33333334f, 0.5f, 0.6666667f, 1.0f);
                splitScreenReceiverEntry.hintRegionPercent = new RectF(0.0f, 0.5f, 1.0f, 1.0f);
                return splitScreenReceiverEntry;
            }
        });
        f51356i = lazy6;
    }

    /* renamed from: a */
    public final RectF m40608a(View view, RectF region) {
        return new RectF(region.left * view.getWidth(), region.top * view.getHeight(), region.right * view.getWidth(), region.bottom * view.getHeight());
    }

    public final boolean contains(@NotNull View view, float x, float y) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.hitTestRegionPercent.isEmpty()) {
            return false;
        }
        return m40608a(view, this.hitTestRegionPercent).contains(x, y);
    }

    @NotNull
    public final SplitScreenPosition getPosition() {
        return this.position;
    }

    @NotNull
    public final RectF hintRegion(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return m40608a(view, this.hintRegionPercent);
    }

    public final void setPosition(@NotNull SplitScreenPosition splitScreenPosition) {
        Intrinsics.checkNotNullParameter(splitScreenPosition, "<set-?>");
        this.position = splitScreenPosition;
    }
}
