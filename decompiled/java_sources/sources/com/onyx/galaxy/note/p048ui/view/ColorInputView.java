package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.CharFilter;
import com.onyx.android.sdk.p039ui.EditTextExtsKt;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.popup.TextInputSelectionPopup;
import com.onyx.galaxy.note.p048ui.view.ColorInputView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014B\u001b\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0013\u0010\u0017B#\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0003¢\u0006\u0004\b\u0013\u0010\u0019J$\u0010\u0007\u001a\u00020\u00002\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\b\u0012\u0004\u0012\u00020\u0003`\u0005J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\fH\u0002R0\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/ColorInputView;", "Lcom/onyx/android/sdk/theme/widgets/TintEditText;", "Lkotlin/Function1;", "", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "callback", "setCallback", "b", C6998g.f39679a, "viewId", C6997f.f39671c, "", "forceUpdate", "d", C6999h.f39688c, "Lkotlin/jvm/functions/Function1;", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorInputView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorInputView.kt\ncom/onyx/galaxy/note/ui/view/ColorInputView\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,93:1\n65#2,16:94\n93#2,3:110\n*S KotlinDebug\n*F\n+ 1 ColorInputView.kt\ncom/onyx/galaxy/note/ui/view/ColorInputView\n*L\n40#1:94,16\n40#1:110,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ColorInputView extends TintEditText {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Function1<? super Integer, Unit> callback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorInputView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        m51430b();
    }

    /* renamed from: c */
    public static final boolean m51428c(ColorInputView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectAll();
        this$0.m51433g();
        return true;
    }

    /* renamed from: e */
    public static /* synthetic */ void m51429e(ColorInputView colorInputView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        colorInputView.m51431d(z);
    }

    /* renamed from: b */
    public final void m51430b() {
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.max_length_hex_color);
        final String stringSafely = resManager.getStringSafely(C10651R.string.allowed_chars_hex_color);
        InputFilter.LengthFilter lengthFilter = new InputFilter.LengthFilter(integer);
        InputFilter inputFilter = CharFilter.INSTANCE.toInputFilter(new Function1<Character, Boolean>() { // from class: com.onyx.galaxy.note.ui.view.ColorInputView$initView$charFilter$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Boolean invoke(char c) {
                boolean contains$default;
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) stringSafely, c, false, 2, (Object) null);
                return Boolean.valueOf(contains$default);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Character ch) {
                return invoke(ch.charValue());
            }
        });
        EditTextExtsKt.addFilter(this, lengthFilter);
        EditTextExtsKt.addFilter(this, inputFilter);
        addTextChangedListener(new TextWatcher() { // from class: com.onyx.galaxy.note.ui.view.ColorInputView$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s) {
                ColorInputView.m51429e(ColorInputView.this, false, 1, null);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
        setLongClickable(true);
        setInputType(524288);
        setTextIsSelectable(true);
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.q1e
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m51428c;
                m51428c = ColorInputView.m51428c(ColorInputView.this, view);
                return m51428c;
            }
        });
    }

    /* renamed from: d */
    public final void m51431d(boolean forceUpdate) {
        int i;
        if (hasFocus() || forceUpdate) {
            StringBuilder sb = new StringBuilder();
            sb.append("#FF");
            String upperCase = getText().toString().toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            sb.append(StringUtils.leftPad(upperCase, 6, '0'));
            try {
                i = Color.parseColor(sb.toString());
            } catch (Throwable unused) {
                i = -16777216;
            }
            Function1<? super Integer, Unit> function1 = this.callback;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i));
            }
        }
    }

    /* renamed from: f */
    public final void m51432f(int viewId) {
        if (viewId == C10651R.id.copy) {
            Editable text = getText();
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            if (text.length() > 0) {
                ContextKt.copyToClipboard(getText());
            }
        } else if (viewId == C10651R.id.paste) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            String clipTextData = ContextKt.getClipTextData(context);
            if (clipTextData != null) {
                getText().replace(getSelectionStart(), getSelectionEnd(), clipTextData);
                m51431d(true);
            }
        }
        Selection.removeSelection(getText());
    }

    /* renamed from: g */
    public final void m51433g() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        new TextInputSelectionPopup(context, new Function1<Integer, Unit>() { // from class: com.onyx.galaxy.note.ui.view.ColorInputView$showCustomCopyPasteMenu$1
            {
                super(1);
            }

            public final void invoke(int i) {
                ColorInputView.this.m51432f(i);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }
        }).showAsDropDown(this);
    }

    @NotNull
    public final ColorInputView setCallback(@NotNull Function1<? super Integer, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        return this;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorInputView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        m51430b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorInputView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m51430b();
    }
}
