package com.onyx.android.sdk.replicator.note.bean;

import android.util.Size;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.C7594R;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0018B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "", "size", "Landroid/util/Size;", "(Ljava/lang/String;ILandroid/util/Size;)V", "getSize", "()Landroid/util/Size;", "setSize", "(Landroid/util/Size;)V", "getSizeFormatName", "", "isCustom", "", "A1", "A2", "A3", "A4", "A5", "B3", "B4", "B5", "LETTER", "CUSTOM", "BOUNDLESS", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SizeFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SizeFormat[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private Size size;

    /* renamed from: A1 */
    public static final SizeFormat f45500A1 = new SizeFormat("A1", 0, new Size(5940, 8410));

    /* renamed from: A2 */
    public static final SizeFormat f45501A2 = new SizeFormat("A2", 1, new Size(4200, 5940));

    /* renamed from: A3 */
    public static final SizeFormat f45502A3 = new SizeFormat("A3", 2, new Size(2970, 4200));

    /* renamed from: A4 */
    public static final SizeFormat f45503A4 = new SizeFormat("A4", 3, new Size(2100, 2970));

    /* renamed from: A5 */
    public static final SizeFormat f45504A5 = new SizeFormat("A5", 4, new Size(1480, 2100));

    /* renamed from: B3 */
    public static final SizeFormat f45505B3 = new SizeFormat("B3", 5, new Size(3530, 5000));

    /* renamed from: B4 */
    public static final SizeFormat f45506B4 = new SizeFormat("B4", 6, new Size(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 3530));

    /* renamed from: B5 */
    public static final SizeFormat f45507B5 = new SizeFormat("B5", 7, new Size(1760, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS));
    public static final SizeFormat LETTER = new SizeFormat("LETTER", 8, new Size(2159, 2793));
    public static final SizeFormat CUSTOM = new SizeFormat("CUSTOM", 9, new Size(0, 0));
    public static final SizeFormat BOUNDLESS = new SizeFormat("BOUNDLESS", 10, new Size(2100, 2100));

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bJ\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;", "", "()V", "fromSize", "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;", "size", "Landroid/util/Size;", "candidateList", "", "getMaxSize", "isCustom", "", "name", "", "safetyValueOf", "value", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nSizeFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SizeFormat.kt\ncom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 SizeFormat.kt\ncom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion\n*L\n68#1:77,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SizeFormat fromSize(@NotNull Size size, @NotNull List<? extends SizeFormat> candidateList) {
            Intrinsics.checkNotNullParameter(size, "size");
            Intrinsics.checkNotNullParameter(candidateList, "candidateList");
            if (size.getWidth() > size.getHeight()) {
                size = new Size(size.getHeight(), size.getWidth());
            }
            for (SizeFormat sizeFormat : candidateList) {
                if (SizeKt.areApproximatelyEqual(size, sizeFormat.getSize())) {
                    return sizeFormat;
                }
            }
            return SizeFormat.CUSTOM;
        }

        @NotNull
        public final Size getMaxSize() {
            return SizeFormat.f45505B3.getSize();
        }

        public final boolean isCustom(@NotNull String name) {
            boolean equals;
            Intrinsics.checkNotNullParameter(name, "name");
            equals = StringsKt__StringsJVMKt.equals("CUSTOM", name, false);
            return equals;
        }

        @NotNull
        public final SizeFormat safetyValueOf(@Nullable String value) {
            SizeFormat sizeFormat = SizeFormat.f45503A4;
            if (value == null) {
                return sizeFormat;
            }
            try {
                return SizeFormat.valueOf(value);
            } catch (Exception e) {
                e.printStackTrace();
                return sizeFormat;
            }
        }

        private Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SizeFormat.values().length];
            try {
                iArr[SizeFormat.f45500A1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SizeFormat.f45501A2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SizeFormat.f45502A3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SizeFormat.f45503A4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SizeFormat.f45504A5.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SizeFormat.f45505B3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SizeFormat.f45506B4.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[SizeFormat.f45507B5.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[SizeFormat.LETTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[SizeFormat.CUSTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[SizeFormat.BOUNDLESS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ SizeFormat[] $values() {
        return new SizeFormat[]{f45500A1, f45501A2, f45502A3, f45503A4, f45504A5, f45505B3, f45506B4, f45507B5, LETTER, CUSTOM, BOUNDLESS};
    }

    static {
        SizeFormat[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private SizeFormat(String str, int i, Size size) {
        this.size = size;
    }

    @NotNull
    public static EnumEntries<SizeFormat> getEntries() {
        return $ENTRIES;
    }

    public static SizeFormat valueOf(String str) {
        return (SizeFormat) Enum.valueOf(SizeFormat.class, str);
    }

    public static SizeFormat[] values() {
        return (SizeFormat[]) $VALUES.clone();
    }

    @NotNull
    public final Size getSize() {
        return this.size;
    }

    @NotNull
    public final String getSizeFormatName() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String string = ResManager.INSTANCE.getString(C7594R.string.f45144a1);
                Intrinsics.checkNotNull(string);
                return string;
            case 2:
                String string2 = ResManager.INSTANCE.getString(C7594R.string.f45145a2);
                Intrinsics.checkNotNull(string2);
                return string2;
            case 3:
                String string3 = ResManager.INSTANCE.getString(C7594R.string.f45146a3);
                Intrinsics.checkNotNull(string3);
                return string3;
            case 4:
                String string4 = ResManager.INSTANCE.getString(C7594R.string.f45147a4);
                Intrinsics.checkNotNull(string4);
                return string4;
            case 5:
                String string5 = ResManager.INSTANCE.getString(C7594R.string.f45148a5);
                Intrinsics.checkNotNull(string5);
                return string5;
            case 6:
                String string6 = ResManager.INSTANCE.getString(C7594R.string.f45149b3);
                Intrinsics.checkNotNull(string6);
                return string6;
            case 7:
                String string7 = ResManager.INSTANCE.getString(C7594R.string.f45150b4);
                Intrinsics.checkNotNull(string7);
                return string7;
            case 8:
                String string8 = ResManager.INSTANCE.getString(C7594R.string.f45151b5);
                Intrinsics.checkNotNull(string8);
                return string8;
            case 9:
                String string9 = ResManager.INSTANCE.getString(C7594R.string.letter);
                Intrinsics.checkNotNull(string9);
                return string9;
            case 10:
                String string10 = ResManager.INSTANCE.getString(C7594R.string.custom);
                Intrinsics.checkNotNull(string10);
                return string10;
            case 11:
                String string11 = ResManager.INSTANCE.getString(C7594R.string.boundless);
                Intrinsics.checkNotNull(string11);
                return string11;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final boolean isCustom() {
        return this == CUSTOM;
    }

    public final void setSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.size = size;
    }
}
