package com.onyx.android.sdk.theme.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.transition.Transition;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0017J\u001a\u0010\f\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;", "Lcom/onyx/android/sdk/theme/utils/ThemeUtils$SwitchColor;", "Landroid/content/Context;", "context", "", "init", "reloadResource", "", "themeType", "colorId", "replaceColorById", "color", "replaceColor", "idRes", "", "getColorResNameById", "replaceDrawableRes", "getDrawableNameById", "Lcom/onyx/android/sdk/theme/utils/ThemeResource;", "a", "Lcom/onyx/android/sdk/theme/utils/ThemeResource;", "themeResource", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nThemeSwitchColor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeSwitchColor.kt\ncom/onyx/android/sdk/theme/utils/ThemeSwitchColor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"})
/* loaded from: classes8.dex */
public class ThemeSwitchColor implements ThemeUtils.SwitchColor {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b */
    @NotNull
    public static final ThemeSwitchColor f46847b = new ThemeSwitchColor();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ThemeResource themeResource = new ThemeResource();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor$Companion;", "", "()V", Transition.f10626J0, "Lcom/onyx/android/sdk/theme/utils/ThemeSwitchColor;", "getInstance", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ThemeSwitchColor getInstance() {
            return ThemeSwitchColor.f46847b;
        }

        public Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final ThemeSwitchColor getInstance() {
        return INSTANCE.getInstance();
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    @NotNull
    public String getColorResNameById(int idRes) {
        Object obj;
        ArrayList<ThemeBean> arrayList = this.themeResource.getThemeColorMap().get(Integer.valueOf(SkinType.DEFAULT.getThemeType()));
        if (arrayList == null) {
            return "";
        }
        Iterator<T> it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((ThemeBean) obj).getOriginResId() == idRes) {
                break;
            }
        }
        ThemeBean themeBean = (ThemeBean) obj;
        return themeBean == null ? "" : themeBean.getResName();
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    @NotNull
    public String getDrawableNameById(int idRes) {
        Object obj;
        ArrayList<ThemeBean> arrayList = this.themeResource.getThemeDrawableMap().get(Integer.valueOf(SkinType.DEFAULT.getThemeType()));
        if (arrayList == null) {
            return "";
        }
        Iterator<T> it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((ThemeBean) obj).getOriginResId() == idRes) {
                break;
            }
        }
        ThemeBean themeBean = (ThemeBean) obj;
        return themeBean == null ? "" : themeBean.getResName();
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    public void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.themeResource.loadThemeResource(context);
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    public void reloadResource(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.themeResource.loadThemeResource(context);
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    public int replaceColor(@Nullable Context context, int color) {
        return color;
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    @SuppressLint({"ResourceAsColor"})
    public int replaceColorById(@NotNull Context context, int themeType, int colorId) {
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList<ThemeBean> arrayList = this.themeResource.getThemeColorMap().get(Integer.valueOf(themeType));
        if (arrayList == null) {
            return context.getColor(colorId);
        }
        Iterator<T> it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((ThemeBean) obj).getOriginResId() == colorId) {
                break;
            }
        }
        ThemeBean themeBean = (ThemeBean) obj;
        return themeBean != null ? context.getColor(themeBean.getTargetResId()) : context.getColor(colorId);
    }

    @Override // com.onyx.android.sdk.theme.utils.ThemeUtils.SwitchColor
    public int replaceDrawableRes(int themeType, int idRes) {
        Object obj;
        ArrayList<ThemeBean> arrayList = this.themeResource.getThemeDrawableMap().get(Integer.valueOf(themeType));
        if (arrayList == null) {
            return idRes;
        }
        Iterator<T> it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((ThemeBean) obj).getOriginResId() == idRes) {
                break;
            }
        }
        ThemeBean themeBean = (ThemeBean) obj;
        return themeBean == null ? idRes : themeBean.getTargetResId();
    }
}
