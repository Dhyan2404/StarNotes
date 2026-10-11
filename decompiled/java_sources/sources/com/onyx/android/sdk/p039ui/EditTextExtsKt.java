package com.onyx.android.sdk.p039ui;

import android.graphics.drawable.ColorDrawable;
import android.text.InputFilter;
import android.widget.EditText;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0018\u0010\u0005\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00040\u00040\u0006*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\n\u001a\n\u0010\u000b\u001a\u00020\u0001*\u00020\u0002¨\u0006\f"}, m61528d2 = {"addFilter", "", "Landroid/widget/EditText;", "filter", "Landroid/text/InputFilter;", "getAllFilters", "", "kotlin.jvm.PlatformType", "removeAllFilters", "setCommonEditUiStyle", "Lcom/onyx/android/sdk/theme/widgets/TintEditText;", "showIllegalCharFilteredMessage", "sdk-ui_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEditTextExts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTextExts.kt\ncom/onyx/android/sdk/ui/EditTextExtsKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,42:1\n37#2,2:43\n*S KotlinDebug\n*F\n+ 1 EditTextExts.kt\ncom/onyx/android/sdk/ui/EditTextExtsKt\n*L\n32#1:43,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EditTextExtsKt {
    public static final void addFilter(@NotNull EditText editText, @NotNull InputFilter filter) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(filter, "filter");
        List<InputFilter> allFilters = getAllFilters(editText);
        allFilters.add(filter);
        editText.setFilters((InputFilter[]) allFilters.toArray(new InputFilter[0]));
    }

    @NotNull
    public static final List<InputFilter> getAllFilters(@NotNull EditText editText) {
        List<InputFilter> mutableList;
        Intrinsics.checkNotNullParameter(editText, "<this>");
        InputFilter[] filters = editText.getFilters();
        Intrinsics.checkNotNullExpressionValue(filters, "getFilters(...)");
        mutableList = ArraysKt___ArraysKt.toMutableList(filters);
        return mutableList;
    }

    public static final void removeAllFilters(@NotNull EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.setFilters(new InputFilter[0]);
    }

    public static final void setCommonEditUiStyle(@NotNull TintEditText tintEditText) {
        Intrinsics.checkNotNullParameter(tintEditText, "<this>");
        tintEditText.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        tintEditText.setBackgroundResource(C8037R.drawable.selector_edit_text_search);
        ResManager resManager = ResManager.INSTANCE;
        tintEditText.setWidth(resManager.getDimens(C7384R.dimen.dp_352));
        tintEditText.setHeight(resManager.getDimens(C7384R.dimen.dp_50));
        tintEditText.setPadding(resManager.getDimens(C7384R.dimen.dp_16), 0, resManager.getDimens(C7384R.dimen.dp_16), 0);
    }

    public static final void showIllegalCharFilteredMessage(@NotNull EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(C7106R.string.illegal_char_filter);
        ColorDrawable colorDrawable = new ColorDrawable(0);
        int dimens = resManager.getDimens(C7384R.dimen.dp_16);
        colorDrawable.setBounds(0, 0, dimens, dimens);
        editText.setError(stringSafely, colorDrawable);
    }
}
