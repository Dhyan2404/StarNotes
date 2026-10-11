package com.onyx.android.sdk.universal.editor.feature.touch;

import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;", "", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;", "getTouchModeFeature", "", "a", "Ljava/util/Map;", "featureMap", "Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;", "b", "Lcom/onyx/android/sdk/universal/editor/feature/touch/StylusTouchModeFeature;", "defaultFeature", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TouchModeFeatureManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final TouchModeFeatureManager f52099c = new TouchModeFeatureManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<EditorTouchMode, TouchModeFeature> featureMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final StylusTouchModeFeature defaultFeature;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;", "", "()V", "INSTANCE", "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;", "getCurrentTouchModeFeature", "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;", "getTouchModeFeature", "touchMode", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "isCurTouchModeSupportEdit", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TouchModeFeature getCurrentTouchModeFeature() {
            return getTouchModeFeature(MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null));
        }

        @NotNull
        public final TouchModeFeature getTouchModeFeature(@NotNull EditorTouchMode touchMode) {
            Intrinsics.checkNotNullParameter(touchMode, "touchMode");
            return TouchModeFeatureManager.f52099c.getTouchModeFeature(touchMode);
        }

        public final boolean isCurTouchModeSupportEdit() {
            return getCurrentTouchModeFeature().supportEdit();
        }

        public Companion() {
        }
    }

    public TouchModeFeatureManager() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.featureMap = linkedHashMap;
        StylusTouchModeFeature stylusTouchModeFeature = new StylusTouchModeFeature();
        this.defaultFeature = stylusTouchModeFeature;
        linkedHashMap.put(EditorTouchMode.STYLUS_SCRIBBLE, stylusTouchModeFeature);
        linkedHashMap.put(EditorTouchMode.FINGER_SCRIBBLE, new FingerTouchModeFeature());
        linkedHashMap.put(EditorTouchMode.READING, new ReadingTouchModeFeature());
    }

    @NotNull
    public final TouchModeFeature getTouchModeFeature(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        TouchModeFeature touchModeFeature = this.featureMap.get(touchMode);
        return touchModeFeature == null ? this.defaultFeature : touchModeFeature;
    }
}
