package com.onyx.android.sdk.hwr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, HwrRecognizerConstant.RECOGNIZER_MS_ON_SCREEN, HwrRecognizerConstant.RECOGNIZER_MS_OFF_SCREEN, HwrRecognizerConstant.RECOGNIZER_MS_CONTEXT_LESS, HwrRecognizerConstant.RECOGNIZER_ML, HwrRecognizerConstant.RECOGNIZER_ML_MIXED, HwrRecognizerConstant.RECOGNIZER_SUNIA, HwrRecognizerConstant.RECOGNIZER_SUNIA_NAI_NBI, "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRRecognizerType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRRecognizerType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private final String type;
    public static final HWRRecognizerType UNKNOWN = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_UNKNOWN, 0, HwrRecognizerConstant.RECOGNIZER_UNKNOWN);
    public static final HWRRecognizerType MS_ON_SCREEN = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_MS_ON_SCREEN, 1, HwrRecognizerConstant.RECOGNIZER_MS_ON_SCREEN);
    public static final HWRRecognizerType MS_OFF_SCREEN = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_MS_OFF_SCREEN, 2, HwrRecognizerConstant.RECOGNIZER_MS_OFF_SCREEN);
    public static final HWRRecognizerType MS_CONTEXT_LESS = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_MS_CONTEXT_LESS, 3, HwrRecognizerConstant.RECOGNIZER_MS_CONTEXT_LESS);

    /* renamed from: ML */
    public static final HWRRecognizerType f42543ML = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_ML, 4, HwrRecognizerConstant.RECOGNIZER_ML);
    public static final HWRRecognizerType ML_MIXED = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_ML_MIXED, 5, HwrRecognizerConstant.RECOGNIZER_ML_MIXED);
    public static final HWRRecognizerType SUNIA = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_SUNIA, 6, HwrRecognizerConstant.RECOGNIZER_SUNIA);
    public static final HWRRecognizerType SUNIA_NAI_NBI = new HWRRecognizerType(HwrRecognizerConstant.RECOGNIZER_SUNIA_NAI_NBI, 7, HwrRecognizerConstant.RECOGNIZER_SUNIA_NAI_NBI);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;", "", "()V", "getHwrRecognizerByName", "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;", "recognizerName", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HWRRecognizerType getHwrRecognizerByName(@Nullable String recognizerName) {
            if (recognizerName != null) {
                switch (recognizerName.hashCode()) {
                    case -1829244862:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_MS_CONTEXT_LESS)) {
                            return HWRRecognizerType.MS_CONTEXT_LESS;
                        }
                        break;
                    case -1718612677:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_ML_MIXED)) {
                            return HWRRecognizerType.ML_MIXED;
                        }
                        break;
                    case -1404522159:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_SUNIA_NAI_NBI)) {
                            return HWRRecognizerType.SUNIA_NAI_NBI;
                        }
                        break;
                    case -663205005:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_MS_ON_SCREEN)) {
                            return HWRRecognizerType.MS_ON_SCREEN;
                        }
                        break;
                    case 2463:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_ML)) {
                            return HWRRecognizerType.f42543ML;
                        }
                        break;
                    case 79261764:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_SUNIA)) {
                            return HWRRecognizerType.SUNIA;
                        }
                        break;
                    case 79372693:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_MS_OFF_SCREEN)) {
                            return HWRRecognizerType.MS_OFF_SCREEN;
                        }
                        break;
                    case 433141802:
                        if (recognizerName.equals(HwrRecognizerConstant.RECOGNIZER_UNKNOWN)) {
                            return HWRRecognizerType.UNKNOWN;
                        }
                        break;
                }
            }
            return HWRRecognizerType.f42543ML;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ HWRRecognizerType[] $values() {
        return new HWRRecognizerType[]{UNKNOWN, MS_ON_SCREEN, MS_OFF_SCREEN, MS_CONTEXT_LESS, f42543ML, ML_MIXED, SUNIA, SUNIA_NAI_NBI};
    }

    static {
        HWRRecognizerType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private HWRRecognizerType(String str, int i, String str2) {
        this.type = str2;
    }

    @NotNull
    public static EnumEntries<HWRRecognizerType> getEntries() {
        return $ENTRIES;
    }

    public static HWRRecognizerType valueOf(String str) {
        return (HWRRecognizerType) Enum.valueOf(HWRRecognizerType.class, str);
    }

    public static HWRRecognizerType[] values() {
        return (HWRRecognizerType[]) $VALUES.clone();
    }

    @NotNull
    public final String getType() {
        return this.type;
    }
}
