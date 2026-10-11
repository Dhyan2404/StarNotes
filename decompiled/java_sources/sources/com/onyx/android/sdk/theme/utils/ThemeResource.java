package com.onyx.android.sdk.theme.utils;

import android.content.Context;
import android.content.res.TypedArray;
import androidx.annotation.ArrayRes;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002R3\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00110\u0010j\b\u0012\u0004\u0012\u00020\u0011`\u00120\u000f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R3\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00110\u0010j\b\u0012\u0004\u0012\u00020\u0011`\u00120\u000f8\u0006¢\u0006\f\n\u0004\b\f\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/ThemeResource;", "", "Landroid/content/Context;", "context", "", "loadThemeResource", "Lcom/onyx/android/sdk/theme/utils/SkinType;", "skinType", "", "getDrawResIdArray", "getColorResIdArray", "c", "b", "", "a", "", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/theme/utils/ThemeBean;", "Lkotlin/collections/ArrayList;", "Ljava/util/Map;", "getThemeColorMap", "()Ljava/util/Map;", "themeColorMap", "getThemeDrawableMap", "themeDrawableMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nThemeResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeResource.kt\ncom/onyx/android/sdk/theme/utils/ThemeResource\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,215:1\n13309#2,2:216\n13309#2,2:218\n*S KotlinDebug\n*F\n+ 1 ThemeResource.kt\ncom/onyx/android/sdk/theme/utils/ThemeResource\n*L\n25#1:216,2\n48#1:218,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ThemeResource {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, ArrayList<ThemeBean>> themeColorMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<Integer, ArrayList<ThemeBean>> themeDrawableMap = new LinkedHashMap();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SkinType.values().length];
            try {
                iArr[SkinType.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SkinType.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SkinType.STAR_BLUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SkinType.GREEN_GLOW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SkinType.MIST_BLUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SkinType.LINGER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SkinType.AUTO_SYSTEM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[SkinType.THE_NEAR_SHORE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[SkinType.PLUCK_THE_STARS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[SkinType.CARD_ORCHID_NEBULA_VEIL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[SkinType.SUMMER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[SkinType.SUMMER_DARK.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[SkinType.ONE_YEAR_ANNIVERSARY_CELEBRATION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[SkinType.AUTUMN_DARK.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[SkinType.CHRISTMAS_DARK.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: a */
    public final boolean m36239a() {
        return (ResManager.INSTANCE.getAppContext().getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* renamed from: b */
    public final void m36240b(Context context) {
        String[] stringArray = context.getResources().getStringArray(C7996R.array.themeColorsName);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        TypedArray obtainTypedArray = context.getResources().obtainTypedArray(C7996R.array.themeColorsDefault);
        Intrinsics.checkNotNullExpressionValue(obtainTypedArray, "obtainTypedArray(...)");
        SkinType[] values = SkinType.values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            SkinType skinType = values[i2];
            TypedArray obtainTypedArray2 = context.getResources().obtainTypedArray(getColorResIdArray(skinType));
            Intrinsics.checkNotNullExpressionValue(obtainTypedArray2, "obtainTypedArray(...)");
            ArrayList<ThemeBean> arrayList = new ArrayList<>();
            int length2 = obtainTypedArray.length();
            int i3 = i;
            while (i3 < length2) {
                int resourceId = obtainTypedArray.getResourceId(i3, i);
                int resourceId2 = obtainTypedArray2.getResourceId(i3, i);
                String str = stringArray[i3];
                Intrinsics.checkNotNull(str);
                arrayList.add(new ThemeBean(resourceId, resourceId2, str));
                i3++;
                i = 0;
            }
            this.themeColorMap.put(Integer.valueOf(skinType.getThemeType()), arrayList);
            obtainTypedArray2.recycle();
            i2++;
            i = 0;
        }
        obtainTypedArray.recycle();
    }

    /* renamed from: c */
    public final void m36241c(Context context) {
        String[] stringArray = context.getResources().getStringArray(C7996R.array.themeDrawablesName);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        TypedArray obtainTypedArray = context.getResources().obtainTypedArray(C7996R.array.themeDrawableDefault);
        Intrinsics.checkNotNullExpressionValue(obtainTypedArray, "obtainTypedArray(...)");
        SkinType[] values = SkinType.values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            SkinType skinType = values[i2];
            TypedArray obtainTypedArray2 = context.getResources().obtainTypedArray(getDrawResIdArray(skinType));
            Intrinsics.checkNotNullExpressionValue(obtainTypedArray2, "obtainTypedArray(...)");
            ArrayList<ThemeBean> arrayList = new ArrayList<>();
            int length2 = obtainTypedArray.length();
            int i3 = i;
            while (i3 < length2) {
                int resourceId = obtainTypedArray.getResourceId(i3, i);
                int resourceId2 = obtainTypedArray2.getResourceId(i3, i);
                String str = stringArray[i3];
                Intrinsics.checkNotNull(str);
                arrayList.add(new ThemeBean(resourceId, resourceId2, str));
                i3++;
                i = 0;
            }
            obtainTypedArray2.recycle();
            this.themeDrawableMap.put(Integer.valueOf(skinType.getThemeType()), arrayList);
            i2++;
            i = 0;
        }
        obtainTypedArray.recycle();
    }

    @ArrayRes
    public final int getColorResIdArray(@NotNull SkinType skinType) {
        Intrinsics.checkNotNullParameter(skinType, "skinType");
        switch (WhenMappings.$EnumSwitchMapping$0[skinType.ordinal()]) {
            case 1:
                return C7996R.array.themeColorsDefault;
            case 2:
                return C7996R.array.themeColorsDark;
            case 3:
                return C7996R.array.themeColorsStarBlue;
            case 4:
                return C7996R.array.themeColorsGreenGlow;
            case 5:
                return C7996R.array.themeColorsMistBlue;
            case 6:
                return C7996R.array.themeColorsLinger;
            case 7:
                return m36239a() ? C7996R.array.themeColorsDark : C7996R.array.themeColorsDefault;
            case 8:
                return C7996R.array.themeColorsTheNearShore;
            case 9:
                return C7996R.array.themeColorsPluckTheStars;
            case 10:
                return C7996R.array.themeColorsOrchidNebulaVeil;
            case 11:
                return C7996R.array.themeColorsSummer;
            case 12:
                return C7996R.array.themeColorsSummerDark;
            case 13:
                return C7996R.array.themeColorsOneYearAnniversary;
            case 14:
                return C7996R.array.themeColorsAutumnDark;
            case 15:
                return C7996R.array.themeColorsChristmas;
            default:
                return C7996R.array.themeColorsDefault;
        }
    }

    @ArrayRes
    public final int getDrawResIdArray(@NotNull SkinType skinType) {
        Intrinsics.checkNotNullParameter(skinType, "skinType");
        switch (WhenMappings.$EnumSwitchMapping$0[skinType.ordinal()]) {
            case 1:
                return C7996R.array.themeDrawableDefault;
            case 2:
                return C7996R.array.themeDrawableDark;
            case 3:
                return C7996R.array.themeDrawableStartBlue;
            case 4:
                return C7996R.array.themeDrawableGreenGlow;
            case 5:
                return C7996R.array.themeDrawableMistBlue;
            case 6:
                return C7996R.array.themeDrawableLinger;
            case 7:
                return m36239a() ? C7996R.array.themeDrawableDark : C7996R.array.themeDrawableDefault;
            case 8:
                return C7996R.array.themeDrawableTheNearShore;
            case 9:
                return C7996R.array.themeDrawablePluckTheStars;
            case 10:
                return C7996R.array.themeDrawableOrchidNebulaVeil;
            case 11:
                return C7996R.array.themeDrawableSummer;
            case 12:
                return C7996R.array.themeDrawableSummerDark;
            case 13:
                return C7996R.array.themeDrawableOneYearAnniversary;
            case 14:
                return C7996R.array.themeDrawableAutumnDark;
            case 15:
                return C7996R.array.themeDrawableChristmas;
            default:
                return C7996R.array.themeDrawableDefault;
        }
    }

    @NotNull
    public final Map<Integer, ArrayList<ThemeBean>> getThemeColorMap() {
        return this.themeColorMap;
    }

    @NotNull
    public final Map<Integer, ArrayList<ThemeBean>> getThemeDrawableMap() {
        return this.themeDrawableMap;
    }

    public final void loadThemeResource(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        m36240b(context);
        m36241c(context);
    }
}
