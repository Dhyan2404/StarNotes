package com.onyx.galaxy.note.settings.utils;

import android.graphics.Color;
import android.graphics.ColorMatrix;
import androidx.annotation.ColorInt;
import androidx.annotation.StringRes;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u000bJ\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory;", "", "()V", "DEFAULT_INTENSITY", "", "getColorMatrix", "Landroid/graphics/ColorMatrix;", "setting", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "getDefaultSetting", "getIntensityMap", "", "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;", "getSettings", "", "ColorMatrixStrategy", "DefaultColorMatrixStrategy", "EyesComforterSetting", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEyesComforterFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EyesComforterFactory.kt\ncom/onyx/galaxy/note/settings/utils/EyesComforterFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1253#2,4:101\n*S KotlinDebug\n*F\n+ 1 EyesComforterFactory.kt\ncom/onyx/galaxy/note/settings/utils/EyesComforterFactory\n*L\n98#1:101,4\n*E\n"})
/* loaded from: classes9.dex */
public final class EyesComforterFactory {
    public static final float DEFAULT_INTENSITY = 50.0f;

    @NotNull
    public static final EyesComforterFactory INSTANCE = new EyesComforterFactory();

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;", "", "createMatrix", "Landroid/graphics/ColorMatrix;", "intensity", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface ColorMatrixStrategy {
        @NotNull
        ColorMatrix createMatrix(float intensity);
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J(\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0002R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$DefaultColorMatrixStrategy;", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;", "", "intensity", "Landroid/graphics/ColorMatrix;", "createMatrix", "redBoost", "greenBoost", "blueReduce", "alphaReduce", "a", "F", "redBoostFactor", "b", "greenBoostFactor", Constants.CONSTRUCTOR_NAME, "(FF)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class DefaultColorMatrixStrategy implements ColorMatrixStrategy {

        /* renamed from: a, reason: from kotlin metadata */
        public final float redBoostFactor;

        /* renamed from: b, reason: from kotlin metadata */
        public final float greenBoostFactor;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DefaultColorMatrixStrategy() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.settings.utils.EyesComforterFactory.DefaultColorMatrixStrategy.<init>():void");
        }

        /* renamed from: a */
        public final ColorMatrix m51180a(float redBoost, float greenBoost, float blueReduce, float alphaReduce) {
            float f = 1;
            return new ColorMatrix(new float[]{redBoost + f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, greenBoost + 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f - blueReduce, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f - alphaReduce, 0.0f});
        }

        @Override // com.onyx.galaxy.note.settings.utils.EyesComforterFactory.ColorMatrixStrategy
        @NotNull
        public ColorMatrix createMatrix(float intensity) {
            return m51180a((this.redBoostFactor * intensity) / 100.0f, (this.greenBoostFactor * intensity) / 100.0f, intensity / 100.0f, (100 - intensity) / 100.0f);
        }

        public DefaultColorMatrixStrategy(float f, float f2) {
            this.redBoostFactor = f;
            this.greenBoostFactor = f2;
        }

        public /* synthetic */ DefaultColorMatrixStrategy(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? 0.4f : f, (i & 2) != 0 ? 0.0f : f2);
        }
    }

    @NotNull
    public final ColorMatrix getColorMatrix(@NotNull EyesComforterSetting setting) {
        Intrinsics.checkNotNullParameter(setting, "setting");
        return setting.getColorMatrixStrategy().createMatrix(setting.getIntensity());
    }

    @NotNull
    public final EyesComforterSetting getDefaultSetting() {
        Object first;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) getSettings());
        return (EyesComforterSetting) first;
    }

    @NotNull
    public final Map<EyesComfortType, Float> getIntensityMap() {
        List<EyesComforterSetting> settings = getSettings();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (EyesComforterSetting eyesComforterSetting : settings) {
            Pair m61535to = TuplesKt.m61535to(eyesComforterSetting.getType(), Float.valueOf(eyesComforterSetting.getIntensity()));
            linkedHashMap.put(m61535to.getFirst(), m61535to.getSecond());
        }
        return linkedHashMap;
    }

    @NotNull
    public final List<EyesComforterSetting> getSettings() {
        return EyesComforterSetting.getEntries();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001BA\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$EyesComforterSetting;", "", "type", "Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;", "titleResId", "", "indicatorColor", "comforterColor", "colorMatrixStrategy", "Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;", "intensity", "", "(Ljava/lang/String;ILcom/onyx/galaxy/note/settings/utils/EyesComfortType;IIILcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;F)V", "getColorMatrixStrategy", "()Lcom/onyx/galaxy/note/settings/utils/EyesComforterFactory$ColorMatrixStrategy;", "getComforterColor", "()I", "getIndicatorColor", "getIntensity", "()F", "setIntensity", "(F)V", "getTitleResId", "getType", "()Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;", "RECOMMEND", "READING", "OUTDOOR", "DARK", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class EyesComforterSetting {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ EyesComforterSetting[] $VALUES;
        public static final EyesComforterSetting DARK;
        public static final EyesComforterSetting READING;

        @NotNull
        private final ColorMatrixStrategy colorMatrixStrategy;
        private final int comforterColor;
        private final int indicatorColor;
        private float intensity;
        private final int titleResId;

        @NotNull
        private final EyesComfortType type;
        public static final EyesComforterSetting RECOMMEND = new EyesComforterSetting("RECOMMEND", 0, EyesComfortType.RECOMMEND, C10651R.string.eyes_comfort_recommend, Color.rgb(255, 244, 231), Color.argb(60, 235, 208, 132), null, 0.0f, 48, null);
        public static final EyesComforterSetting OUTDOOR = new EyesComforterSetting("OUTDOOR", 2, EyesComfortType.OUTDOOR, C10651R.string.eyes_comfort_outdoor, Color.rgb(234, 241, 234), Color.argb(60, 129, 200, 38), new DefaultColorMatrixStrategy(0.3f, 0.15f), 0.0f, 32, null);

        private static final /* synthetic */ EyesComforterSetting[] $values() {
            return new EyesComforterSetting[]{RECOMMEND, READING, OUTDOOR, DARK};
        }

        static {
            ColorMatrixStrategy colorMatrixStrategy = null;
            float f = 0.0f;
            int i = 48;
            DefaultConstructorMarker defaultConstructorMarker = null;
            READING = new EyesComforterSetting("READING", 1, EyesComfortType.READING, C10651R.string.eyes_comfort_reading, Color.rgb(251, 248, 233), Color.argb(60, 233, 226, 93), colorMatrixStrategy, f, i, defaultConstructorMarker);
            DARK = new EyesComforterSetting("DARK", 3, EyesComfortType.DARK, C10651R.string.eyes_comfort_dark, Color.rgb(170, 170, 170), Color.argb(60, 89, 89, 89), colorMatrixStrategy, f, i, defaultConstructorMarker);
            EyesComforterSetting[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private EyesComforterSetting(String str, @StringRes int i, @ColorInt EyesComfortType eyesComfortType, @ColorInt int i2, int i3, int i4, ColorMatrixStrategy colorMatrixStrategy, float f) {
            this.type = eyesComfortType;
            this.titleResId = i2;
            this.indicatorColor = i3;
            this.comforterColor = i4;
            this.colorMatrixStrategy = colorMatrixStrategy;
            this.intensity = f;
        }

        @NotNull
        public static EnumEntries<EyesComforterSetting> getEntries() {
            return $ENTRIES;
        }

        public static EyesComforterSetting valueOf(String str) {
            return (EyesComforterSetting) Enum.valueOf(EyesComforterSetting.class, str);
        }

        public static EyesComforterSetting[] values() {
            return (EyesComforterSetting[]) $VALUES.clone();
        }

        @NotNull
        public final ColorMatrixStrategy getColorMatrixStrategy() {
            return this.colorMatrixStrategy;
        }

        public final int getComforterColor() {
            return this.comforterColor;
        }

        public final int getIndicatorColor() {
            return this.indicatorColor;
        }

        public final float getIntensity() {
            return this.intensity;
        }

        public final int getTitleResId() {
            return this.titleResId;
        }

        @NotNull
        public final EyesComfortType getType() {
            return this.type;
        }

        public final void setIntensity(float f) {
            this.intensity = f;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ EyesComforterSetting(java.lang.String r14, int r15, com.onyx.galaxy.note.settings.utils.EyesComfortType r16, int r17, int r18, int r19, com.onyx.galaxy.note.settings.utils.EyesComforterFactory.ColorMatrixStrategy r20, float r21, int r22, kotlin.jvm.internal.DefaultConstructorMarker r23) {
            /*
                r13 = this;
                r0 = r22 & 16
                if (r0 == 0) goto Le
                com.onyx.galaxy.note.settings.utils.EyesComforterFactory$DefaultColorMatrixStrategy r0 = new com.onyx.galaxy.note.settings.utils.EyesComforterFactory$DefaultColorMatrixStrategy
                r1 = 3
                r2 = 0
                r3 = 0
                r0.<init>(r3, r3, r1, r2)
                r11 = r0
                goto L10
            Le:
                r11 = r20
            L10:
                r0 = r22 & 32
                if (r0 == 0) goto L18
                r0 = 1112014848(0x42480000, float:50.0)
                r12 = r0
                goto L1a
            L18:
                r12 = r21
            L1a:
                r4 = r13
                r5 = r14
                r6 = r15
                r7 = r16
                r8 = r17
                r9 = r18
                r10 = r19
                r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.settings.utils.EyesComforterFactory.EyesComforterSetting.<init>(java.lang.String, int, com.onyx.galaxy.note.settings.utils.EyesComfortType, int, int, int, com.onyx.galaxy.note.settings.utils.EyesComforterFactory$ColorMatrixStrategy, float, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }
}
