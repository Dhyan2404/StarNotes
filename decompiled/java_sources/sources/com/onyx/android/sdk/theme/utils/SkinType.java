package com.onyx.android.sdk.theme.utils;

import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.SkinBean;
import com.onyx.android.sdk.theme.config.ThemeConfig;
import com.onyx.android.sdk.theme.utils.ThemeStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001)B?\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/SkinType;", "", "themeType", "", "title", "themeThumbnailRes", "themeStyle", "Lcom/onyx/android/sdk/theme/utils/ThemeStyle;", "isFree", "", "display", "(Ljava/lang/String;IIIILcom/onyx/android/sdk/theme/utils/ThemeStyle;ZZ)V", "getDisplay", Constants.BOOLEAN_VALUE_SIG, "getThemeStyle", "()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;", "getThemeThumbnailRes", "()I", "getThemeType", "getTitle", "toSkinBean", "Lcom/onyx/android/sdk/theme/SkinBean;", "DARK_LIGHT_TITLE", "DEFAULT", "DARK", "AUTO_SYSTEM", "SPECIAL_TITLE", "STAR_BLUE", "GREEN_GLOW", "MIST_BLUE", "VIP_TITLE", "THE_NEAR_SHORE", "PLUCK_THE_STARS", "CARD_ORCHID_NEBULA_VEIL", "SUMMER", "SUMMER_DARK", "ONE_YEAR_ANNIVERSARY_CELEBRATION", "AUTUMN_DARK", "CHRISTMAS_DARK", "PAYMENT_TITLE", "LINGER", "Companion", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SkinType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SkinType[] $VALUES;
    public static final SkinType AUTO_SYSTEM;
    public static final SkinType AUTUMN_DARK;
    public static final SkinType CARD_ORCHID_NEBULA_VEIL;
    public static final SkinType CHRISTMAS_DARK;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final SkinType DARK;
    public static final SkinType DARK_LIGHT_TITLE;
    public static final SkinType DEFAULT;
    public static final SkinType GREEN_GLOW;
    public static final SkinType LINGER;
    public static final SkinType MIST_BLUE;
    public static final SkinType ONE_YEAR_ANNIVERSARY_CELEBRATION;
    public static final SkinType PAYMENT_TITLE;
    public static final SkinType PLUCK_THE_STARS;
    public static final SkinType SPECIAL_TITLE;
    public static final SkinType STAR_BLUE;
    public static final SkinType SUMMER;
    public static final SkinType SUMMER_DARK;
    public static final SkinType THE_NEAR_SHORE;
    public static final SkinType VIP_TITLE;
    private final boolean display;
    private final boolean isFree;

    @NotNull
    private final ThemeStyle themeStyle;
    private final int themeThumbnailRes;
    private final int themeType;
    private final int title;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;", "", "()V", "defaultThemeList", "", "Lcom/onyx/android/sdk/theme/SkinBean;", "getDisplayList", "themeList", "getThemeByType", "Lcom/onyx/android/sdk/theme/utils/SkinType;", "themeType", "", "isLightTheme", "", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nSkinType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkinType.kt\ncom/onyx/android/sdk/theme/utils/SkinType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n3792#2:187\n4307#2,2:188\n1549#3:190\n1620#3,3:191\n766#3:194\n857#3,2:195\n*S KotlinDebug\n*F\n+ 1 SkinType.kt\ncom/onyx/android/sdk/theme/utils/SkinType$Companion\n*L\n151#1:187\n151#1:188,2\n153#1:190\n153#1:191,3\n159#1:194\n159#1:195,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ List getDisplayList$default(Companion companion, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = SkinType.INSTANCE.defaultThemeList();
            }
            return companion.getDisplayList(list);
        }

        @NotNull
        public final List<SkinBean> defaultThemeList() {
            List mutableList;
            int collectionSizeOrDefault;
            List<SkinBean> emptyList;
            ThemeConfig themeConfig = ThemeHelper.getThemeConfig();
            if (themeConfig == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            SkinType[] values = SkinType.values();
            ArrayList arrayList = new ArrayList();
            for (SkinType skinType : values) {
                if ((themeConfig.getUnSupportStyleList().contains(Integer.valueOf(skinType.getThemeStyle().getStyle())) || themeConfig.getUnSupportThemeList().contains(Integer.valueOf(skinType.getThemeType()))) ? false : true) {
                    arrayList.add(skinType);
                }
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            List<SkinType> list = mutableList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (SkinType skinType2 : list) {
                arrayList2.add(new SkinBean(skinType2.getThemeType(), skinType2.getTitle(), skinType2.getThemeThumbnailRes(), skinType2.getThemeStyle(), skinType2.getIsFree(), skinType2.getDisplay()));
            }
            return arrayList2;
        }

        @NotNull
        public final List<SkinBean> getDisplayList(@NotNull List<SkinBean> themeList) {
            Intrinsics.checkNotNullParameter(themeList, "themeList");
            ArrayList arrayList = new ArrayList();
            for (Object obj : themeList) {
                if (((SkinBean) obj).getDisplay()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }

        @Nullable
        public final SkinType getThemeByType(int themeType) {
            for (SkinType skinType : SkinType.values()) {
                if (skinType.getThemeType() == themeType) {
                    return skinType;
                }
            }
            return null;
        }

        public final boolean isLightTheme(int themeType) {
            return (((((((themeType == SkinType.DEFAULT.getThemeType() || themeType == SkinType.GREEN_GLOW.getThemeType()) || themeType == SkinType.MIST_BLUE.getThemeType()) || themeType == SkinType.THE_NEAR_SHORE.getThemeType()) || themeType == SkinType.CARD_ORCHID_NEBULA_VEIL.getThemeType()) || themeType == SkinType.SUMMER.getThemeType()) || themeType == SkinType.ONE_YEAR_ANNIVERSARY_CELEBRATION.getThemeType()) || themeType == SkinType.LINGER.getThemeType()) || (themeType == SkinType.AUTO_SYSTEM.getThemeType() && !ThemeUtils.isSystemNightMode(ResManager.INSTANCE.getAppContext()));
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ SkinType[] $values() {
        return new SkinType[]{DARK_LIGHT_TITLE, DEFAULT, DARK, AUTO_SYSTEM, SPECIAL_TITLE, STAR_BLUE, GREEN_GLOW, MIST_BLUE, VIP_TITLE, THE_NEAR_SHORE, PLUCK_THE_STARS, CARD_ORCHID_NEBULA_VEIL, SUMMER, SUMMER_DARK, ONE_YEAR_ANNIVERSARY_CELEBRATION, AUTUMN_DARK, CHRISTMAS_DARK, PAYMENT_TITLE, LINGER};
    }

    static {
        ThemeStyle.Companion companion = ThemeStyle.INSTANCE;
        boolean z = false;
        DARK_LIGHT_TITLE = new SkinType("DARK_LIGHT_TITLE", 0, -1, -1, -1, companion.getDarkLightStyle(), false, z, 48, null);
        boolean z2 = false;
        boolean z3 = false;
        int i = 48;
        DefaultConstructorMarker defaultConstructorMarker = null;
        DEFAULT = new SkinType("DEFAULT", 1, 1, C7996R.string.light, C7996R.drawable.ic_theme_thumbnail_light, companion.getDarkLightStyle(), z2, z3, i, defaultConstructorMarker);
        boolean z4 = false;
        int i2 = 48;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        DARK = new SkinType("DARK", 2, 2, C7996R.string.dark, C7996R.drawable.ic_theme_thumbnail_dark, companion.getDarkLightStyle(), z, z4, i2, defaultConstructorMarker2);
        AUTO_SYSTEM = new SkinType("AUTO_SYSTEM", 3, 8, C7996R.string.change_flow_system, C7996R.drawable.ic_theme_thumbnail_system, companion.getDarkLightStyle(), z2, z3, i, defaultConstructorMarker);
        SPECIAL_TITLE = new SkinType("SPECIAL_TITLE", 4, -1, -1, -1, companion.getSpecialStyle(), z, z4, i2, defaultConstructorMarker2);
        STAR_BLUE = new SkinType("STAR_BLUE", 5, 5, C7996R.string.star_blue, C7996R.drawable.ic_theme_star_blue_thumbnail, companion.getSpecialStyle(), z2, z3, i, defaultConstructorMarker);
        GREEN_GLOW = new SkinType("GREEN_GLOW", 6, 6, C7996R.string.green_glow, C7996R.drawable.ic_theme_star_green_glow_thumbnail, companion.getSpecialStyle(), z, z4, i2, defaultConstructorMarker2);
        MIST_BLUE = new SkinType("MIST_BLUE", 7, 7, C7996R.string.mist_blue, C7996R.drawable.ic_theme_mist_blue_thumbnail, companion.getSpecialStyle(), z2, z3, i, defaultConstructorMarker);
        int i3 = 32;
        VIP_TITLE = new SkinType("VIP_TITLE", 8, -1, -1, -1, companion.getVipStyle(), z, z4, i3, defaultConstructorMarker2);
        int i4 = 32;
        THE_NEAR_SHORE = new SkinType("THE_NEAR_SHORE", 9, 16, C7996R.string.the_near_shore, C7996R.drawable.ic_theme_the_near_shore_thumbnail, companion.getVipStyle(), z2, z3, i4, defaultConstructorMarker);
        PLUCK_THE_STARS = new SkinType("PLUCK_THE_STARS", 10, 17, C7996R.string.pluck_the_stars, C7996R.drawable.ic_theme_pluck_the_stars_thumbnail, companion.getVipStyle(), z, z4, i3, defaultConstructorMarker2);
        CARD_ORCHID_NEBULA_VEIL = new SkinType("CARD_ORCHID_NEBULA_VEIL", 11, 18, C7996R.string.orchid_nebula_veil, C7996R.drawable.ic_theme_orchid_nebula_veil_thumbnail, companion.getVipStyle(), z2, z3, i4, defaultConstructorMarker);
        SUMMER = new SkinType("SUMMER", 12, 19, C7996R.string.summer, C7996R.drawable.ic_theme_summer_thumbnail, companion.getVipStyle(), z, z4, i3, defaultConstructorMarker2);
        SUMMER_DARK = new SkinType("SUMMER_DARK", 13, 20, C7996R.string.summer_dark, C7996R.drawable.ic_theme_summer_thumbnail_dark, companion.getVipStyle(), z2, z3, i4, defaultConstructorMarker);
        ONE_YEAR_ANNIVERSARY_CELEBRATION = new SkinType("ONE_YEAR_ANNIVERSARY_CELEBRATION", 14, 4097, C7996R.string.one_year_anniversary_celebration, C7996R.drawable.ic_theme_summer_thumbnail_one_year_anniversary, companion.getVipStyle(), false, false);
        AUTUMN_DARK = new SkinType("AUTUMN_DARK", 15, 21, C7996R.string.autumn_dark, C7996R.drawable.ic_theme_thumbnail_autumn_dark, companion.getVipStyle(), z2, z3, i4, defaultConstructorMarker);
        CHRISTMAS_DARK = new SkinType("CHRISTMAS_DARK", 16, 22, C7996R.string.theme_christmas, C7996R.drawable.ic_theme_thumbnail_christmas, companion.getVipStyle(), z, z4, i3, defaultConstructorMarker2);
        PAYMENT_TITLE = new SkinType("PAYMENT_TITLE", 17, -1, -1, -1, companion.getPaymentStyle(), false, false);
        LINGER = new SkinType("LINGER", 18, 9, C7996R.string.linger, C7996R.drawable.ic_theme_linger_thumbnail, companion.getPaymentStyle(), false, false);
        SkinType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private SkinType(String str, @StringRes int i, @DrawableRes int i2, int i3, int i4, ThemeStyle themeStyle, boolean z, boolean z2) {
        this.themeType = i2;
        this.title = i3;
        this.themeThumbnailRes = i4;
        this.themeStyle = themeStyle;
        this.isFree = z;
        this.display = z2;
    }

    @NotNull
    public static EnumEntries<SkinType> getEntries() {
        return $ENTRIES;
    }

    public static SkinType valueOf(String str) {
        return (SkinType) Enum.valueOf(SkinType.class, str);
    }

    public static SkinType[] values() {
        return (SkinType[]) $VALUES.clone();
    }

    public final boolean getDisplay() {
        return this.display;
    }

    @NotNull
    public final ThemeStyle getThemeStyle() {
        return this.themeStyle;
    }

    public final int getThemeThumbnailRes() {
        return this.themeThumbnailRes;
    }

    public final int getThemeType() {
        return this.themeType;
    }

    public final int getTitle() {
        return this.title;
    }

    /* renamed from: isFree, reason: from getter */
    public final boolean getIsFree() {
        return this.isFree;
    }

    @NotNull
    public final SkinBean toSkinBean() {
        return new SkinBean(this.themeType, this.title, this.themeThumbnailRes, this.themeStyle, this.isFree, this.display);
    }

    public /* synthetic */ SkinType(String str, int i, int i2, int i3, int i4, ThemeStyle themeStyle, boolean z, boolean z2, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, i3, i4, themeStyle, (i5 & 16) != 0 ? true : z, (i5 & 32) != 0 ? true : z2);
    }
}
