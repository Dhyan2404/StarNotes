package com.onyx.android.sdk.base.extension;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.TextView;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.TextViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sunia.commonv2.global.HWREngineConstant;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u001a\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u001a.\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00040\n\u001a\u0014\u0010\f\u001a\u00020\r*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a9\u0010\u000e\u001a\u00020\r*\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00102\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u0012\"\u00020\u0013¢\u0006\u0002\u0010\u0014\u001a \u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u0018\u001a\u0018\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u0018\u001a\u0018\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u0018\u001a\u0014\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a,\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004¨\u0006!"}, m61528d2 = {"addCharTextChangedListener", "", "Landroid/widget/TextView;", HWREngineConstant.Constant.RES_ID, "", "maxLength", "addFileNameTextChangedListener", "maxFileNameLength", "addTextChangedListener", "predicateMap", "Lkotlin/Function1;", "", "checkInputEmpty", "", "checkInputValid", "predicate", "Lio/reactivex/rxjava3/functions/Predicate;", "formatArgs", "", "", "(Landroid/widget/TextView;Lio/reactivex/rxjava3/functions/Predicate;I[Ljava/lang/Object;)Z", "onEditorActionListener", "actionId", "call", "Lkotlin/Function0;", "onEditorDoneActionListener", "onEditorSearchListener", "setNameExitErrorTip", "setTextWithPlaceholder", "content", "placeholderTextRes", "color", "placeholderColor", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextViewKt {
    public static final void addCharTextChangedListener(@NotNull TextView textView, int i, int i2) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        addTextChangedListener(textView, i, i2, new Function1<String, Integer>() { // from class: com.onyx.android.sdk.base.extension.TextViewKt$addCharTextChangedListener$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Integer.valueOf(it2.length());
            }
        });
    }

    public static /* synthetic */ void addCharTextChangedListener$default(TextView textView, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = C7106R.string.no_more_than_character_placeholder;
        }
        if ((i3 & 2) != 0) {
            i2 = 254;
        }
        addCharTextChangedListener(textView, i, i2);
    }

    public static final void addFileNameTextChangedListener(@NotNull TextView textView, int i, int i2) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        addTextChangedListener(textView, i, i2, new Function1<String, Integer>() { // from class: com.onyx.android.sdk.base.extension.TextViewKt$addFileNameTextChangedListener$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                byte[] bytes = it2.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                return Integer.valueOf(bytes.length);
            }
        });
    }

    public static /* synthetic */ void addFileNameTextChangedListener$default(TextView textView, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = C7106R.string.no_more_than_bytes_placeholder;
        }
        if ((i3 & 2) != 0) {
            i2 = 254;
        }
        addFileNameTextChangedListener(textView, i, i2);
    }

    public static final void addTextChangedListener(@NotNull final TextView textView, final int i, final int i2, @NotNull final Function1<? super String, Integer> predicateMap) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(predicateMap, "predicateMap");
        textView.addTextChangedListener(new TextWatcher() { // from class: com.onyx.android.sdk.base.extension.TextViewKt$addTextChangedListener$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@NotNull Editable s) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@NotNull CharSequence s, int start, int count, int after) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@NotNull CharSequence s, int start, int before, int count) {
                Intrinsics.checkNotNullParameter(s, "s");
                if (!(predicateMap.invoke(s.toString()).intValue() > i2)) {
                    textView.setError(null);
                } else {
                    TextView textView2 = textView;
                    textView2.setError(textView2.getContext().getString(i, Integer.valueOf(i2)));
                }
            }
        });
    }

    /* renamed from: c */
    public static final boolean m31941c(String t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return StringKt.isNotEmpty(t);
    }

    public static final boolean checkInputEmpty(@NotNull TextView textView, int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (checkInputValid(textView, new Predicate() { // from class: com.sunia.HTREnginev2.rgn
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Object obj) {
                boolean m31941c;
                m31941c = TextViewKt.m31941c((String) obj);
                return m31941c;
            }
        }, i, new Object[0])) {
            return false;
        }
        textView.setError(textView.getContext().getString(i));
        return true;
    }

    public static /* synthetic */ boolean checkInputEmpty$default(TextView textView, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = C7106R.string.input_empty;
        }
        return checkInputEmpty(textView, i);
    }

    public static final boolean checkInputValid(@NotNull TextView textView, @NotNull Predicate<String> predicate, int i, @NotNull Object... formatArgs) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        if (RxjavaKt.testSafety(predicate, textView.getText().toString())) {
            return true;
        }
        textView.setError(textView.getContext().getString(i, formatArgs));
        return false;
    }

    /* renamed from: d */
    public static final boolean m31942d(int i, Function0 call, TextView textView, int i2, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(call, "$call");
        if (i2 == i) {
            return ((Boolean) call.invoke()).booleanValue();
        }
        return false;
    }

    public static final void onEditorActionListener(@NotNull TextView textView, final int i, @NotNull final Function0<Boolean> call) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(call, "call");
        textView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.sunia.HTREnginev2.qgn
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i2, KeyEvent keyEvent) {
                boolean m31942d;
                m31942d = TextViewKt.m31942d(i, call, textView2, i2, keyEvent);
                return m31942d;
            }
        });
    }

    public static final void onEditorDoneActionListener(@NotNull TextView textView, @NotNull Function0<Boolean> call) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(call, "call");
        onEditorActionListener(textView, 6, call);
    }

    public static final void onEditorSearchListener(@NotNull TextView textView, @NotNull Function0<Boolean> call) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(call, "call");
        onEditorActionListener(textView, 3, call);
    }

    public static final void setNameExitErrorTip(@NotNull TextView textView, int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setError(textView.getContext().getString(i));
    }

    public static /* synthetic */ void setNameExitErrorTip$default(TextView textView, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = C7106R.string.name_exist;
        }
        setNameExitErrorTip(textView, i);
    }

    public static final void setTextWithPlaceholder(@NotNull TextView textView, @Nullable String str, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (str == null || str.length() == 0) {
            textView.setText(ResManager.INSTANCE.getStringSafely(i));
            textView.setTextColor(i3);
        } else {
            textView.setText(str);
            textView.setTextColor(i2);
        }
    }
}
