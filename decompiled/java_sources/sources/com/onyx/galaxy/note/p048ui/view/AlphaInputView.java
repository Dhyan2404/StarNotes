package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012B\u001b\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0011\u0010\u0015B#\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0011\u0010\u0018J$\u0010\u0007\u001a\u00020\u00002\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0005J\b\u0010\b\u001a\u00020\u0004H\u0014J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002R0\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/AlphaInputView;", "Lcom/onyx/android/sdk/theme/widgets/TintEditText;", "Lkotlin/Function1;", "", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "callback", "setCallback", "onDetachedFromWindow", "b", "Landroid/text/Editable;", "editable", "a", C6999h.f39688c, "Lkotlin/jvm/functions/Function1;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAlphaInputView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlphaInputView.kt\ncom/onyx/galaxy/note/ui/view/AlphaInputView\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,56:1\n65#2,16:57\n93#2,3:73\n*S KotlinDebug\n*F\n+ 1 AlphaInputView.kt\ncom/onyx/galaxy/note/ui/view/AlphaInputView\n*L\n23#1:57,16\n23#1:73,3\n*E\n"})
/* loaded from: classes9.dex */
public final class AlphaInputView extends TintEditText {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Float, Unit> callback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlphaInputView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        m51417b();
    }

    /* renamed from: a */
    public final void m51416a(Editable editable) {
        int i;
        int coerceIn;
        String replace$default;
        if (editable != null && hasFocus()) {
            String obj = getText().toString();
            try {
                replace$default = StringsKt__StringsJVMKt.replace$default(obj, "%", "", false, 4, (Object) null);
                i = Integer.parseInt(replace$default);
            } catch (Throwable unused) {
                i = 0;
            }
            coerceIn = RangesKt___RangesKt.coerceIn(i, 0, 100);
            StringBuilder sb = new StringBuilder();
            sb.append(coerceIn);
            sb.append('%');
            String sb2 = sb.toString();
            Function1<? super Float, Unit> function1 = this.callback;
            if (function1 != null) {
                function1.invoke(Float.valueOf(coerceIn / 100.0f));
            }
            if (Intrinsics.areEqual(sb2, obj)) {
                return;
            }
            setText(sb2);
        }
    }

    /* renamed from: b */
    public final void m51417b() {
        addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.ui.view.AlphaInputView$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                AlphaInputView.this.m51416a(s);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.callback = null;
        super.onDetachedFromWindow();
    }

    @NotNull
    public final AlphaInputView setCallback(@NotNull Function1<? super Float, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlphaInputView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        m51417b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlphaInputView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m51417b();
    }
}
