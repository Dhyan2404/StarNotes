package com.onyx.android.sdk.textbox.widget;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002R=\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00020\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/TextBoxThemeUtils;", "", "", "color", "getTintColor", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "a", "Lkotlin/jvm/functions/Function1;", "getTextBoxSwitchCallback", "()Lkotlin/jvm/functions/Function1;", "setTextBoxSwitchCallback", "(Lkotlin/jvm/functions/Function1;)V", "textBoxSwitchCallback", Constants.CONSTRUCTOR_NAME, "()V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxThemeUtils {

    @NotNull
    public static final TextBoxThemeUtils INSTANCE = new TextBoxThemeUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static Function1<? super Integer, Integer> textBoxSwitchCallback = new Function1<Integer, Integer>() { // from class: com.onyx.android.sdk.textbox.widget.TextBoxThemeUtils$textBoxSwitchCallback$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
            return invoke(num.intValue());
        }

        @NotNull
        public final Integer invoke(int i) {
            return Integer.valueOf(i);
        }
    };

    @NotNull
    public final Function1<Integer, Integer> getTextBoxSwitchCallback() {
        return textBoxSwitchCallback;
    }

    public final int getTintColor(int color) {
        return textBoxSwitchCallback.invoke(Integer.valueOf(color)).intValue();
    }

    public final void setTextBoxSwitchCallback(@NotNull Function1<? super Integer, Integer> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        textBoxSwitchCallback = function1;
    }
}
