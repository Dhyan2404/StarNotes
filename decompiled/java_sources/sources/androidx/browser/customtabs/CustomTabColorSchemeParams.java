package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public final class CustomTabColorSchemeParams {

    @Nullable
    @ColorInt
    public final Integer navigationBarColor;

    @Nullable
    @ColorInt
    public final Integer navigationBarDividerColor;

    @Nullable
    @ColorInt
    public final Integer secondaryToolbarColor;

    @Nullable
    @ColorInt
    public final Integer toolbarColor;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        @ColorInt
        public Integer f2359a;

        /* renamed from: b */
        @Nullable
        @ColorInt
        public Integer f2360b;

        /* renamed from: c */
        @Nullable
        @ColorInt
        public Integer f2361c;

        /* renamed from: d */
        @Nullable
        @ColorInt
        public Integer f2362d;

        @NonNull
        public CustomTabColorSchemeParams build() {
            return new CustomTabColorSchemeParams(this.f2359a, this.f2360b, this.f2361c, this.f2362d);
        }

        @NonNull
        public Builder setNavigationBarColor(@ColorInt int i) {
            this.f2361c = Integer.valueOf(i | (-16777216));
            return this;
        }

        @NonNull
        public Builder setNavigationBarDividerColor(@ColorInt int i) {
            this.f2362d = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder setSecondaryToolbarColor(@ColorInt int i) {
            this.f2360b = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder setToolbarColor(@ColorInt int i) {
            this.f2359a = Integer.valueOf(i | (-16777216));
            return this;
        }
    }

    public CustomTabColorSchemeParams(@Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, @Nullable @ColorInt Integer num3, @Nullable @ColorInt Integer num4) {
        this.toolbarColor = num;
        this.secondaryToolbarColor = num2;
        this.navigationBarColor = num3;
        this.navigationBarDividerColor = num4;
    }

    @NonNull
    /* renamed from: a */
    public static CustomTabColorSchemeParams m1241a(@Nullable Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle(0);
        }
        return new CustomTabColorSchemeParams((Integer) bundle.get(CustomTabsIntent.EXTRA_TOOLBAR_COLOR), (Integer) bundle.get(CustomTabsIntent.EXTRA_SECONDARY_TOOLBAR_COLOR), (Integer) bundle.get(CustomTabsIntent.EXTRA_NAVIGATION_BAR_COLOR), (Integer) bundle.get(CustomTabsIntent.EXTRA_NAVIGATION_BAR_DIVIDER_COLOR));
    }

    @NonNull
    /* renamed from: b */
    public Bundle m1242b() {
        Bundle bundle = new Bundle();
        Integer num = this.toolbarColor;
        if (num != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_TOOLBAR_COLOR, num.intValue());
        }
        Integer num2 = this.secondaryToolbarColor;
        if (num2 != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_SECONDARY_TOOLBAR_COLOR, num2.intValue());
        }
        Integer num3 = this.navigationBarColor;
        if (num3 != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_NAVIGATION_BAR_COLOR, num3.intValue());
        }
        Integer num4 = this.navigationBarDividerColor;
        if (num4 != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_NAVIGATION_BAR_DIVIDER_COLOR, num4.intValue());
        }
        return bundle;
    }

    @NonNull
    /* renamed from: c */
    public CustomTabColorSchemeParams m1243c(@NonNull CustomTabColorSchemeParams customTabColorSchemeParams) {
        Integer num = this.toolbarColor;
        if (num == null) {
            num = customTabColorSchemeParams.toolbarColor;
        }
        Integer num2 = this.secondaryToolbarColor;
        if (num2 == null) {
            num2 = customTabColorSchemeParams.secondaryToolbarColor;
        }
        Integer num3 = this.navigationBarColor;
        if (num3 == null) {
            num3 = customTabColorSchemeParams.navigationBarColor;
        }
        Integer num4 = this.navigationBarDividerColor;
        if (num4 == null) {
            num4 = customTabColorSchemeParams.navigationBarDividerColor;
        }
        return new CustomTabColorSchemeParams(num, num2, num3, num4);
    }
}
