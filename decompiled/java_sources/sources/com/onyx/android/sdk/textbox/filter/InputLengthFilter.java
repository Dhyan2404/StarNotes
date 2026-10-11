package com.onyx.android.sdk.textbox.filter;

import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import com.onegravity.rteditor.RTEditText;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u001cJ<\u0010\u000b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J<\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;", "Landroid/text/InputFilter$LengthFilter;", "", "source", "", gon.f71290o0, "end", "Landroid/text/Spanned;", "dest", "dstart", "dend", "filter", "a", "b", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", "Lcom/onegravity/rteditor/RTEditText;", "Lcom/onegravity/rteditor/RTEditText;", "rtEditor", "c", "I", "getOriginContentLen", "()I", "setOriginContentLen", "(I)V", "originContentLen", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onegravity/rteditor/RTEditText;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InputLengthFilter extends InputFilter.LengthFilter {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBox;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RTEditText rtEditor;

    /* renamed from: c, reason: from kotlin metadata */
    public int originContentLen;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputLengthFilter(@NotNull TextBoxView textBox, @NotNull RTEditText rtEditor) {
        super(ResManager.INSTANCE.getInteger(C8002R.integer.editor_content_max_length));
        Intrinsics.checkNotNullParameter(textBox, "textBox");
        Intrinsics.checkNotNullParameter(rtEditor, "rtEditor");
        this.textBox = textBox;
        this.rtEditor = rtEditor;
    }

    /* renamed from: a */
    public final CharSequence m36151a(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
        int m36152b = m36152b() - (dest.length() - (dend - dstart));
        if (m36152b <= 0) {
            return "";
        }
        if (m36152b >= end - start) {
            return null;
        }
        int i = m36152b + start;
        Intrinsics.checkNotNull(source);
        return (Character.isHighSurrogate(source.charAt(i + (-1))) && (i = i + (-1)) == start) ? "" : source.subSequence(start, i);
    }

    /* renamed from: b */
    public final int m36152b() {
        Editable text = this.rtEditor.getText();
        int length = text != null ? text.length() : 0;
        return length <= 0 ? Math.max(getMax(), this.originContentLen) : Math.max(getMax(), length);
    }

    @Override // android.text.InputFilter.LengthFilter, android.text.InputFilter
    @Nullable
    public CharSequence filter(@Nullable CharSequence source, int start, int end, @NotNull Spanned dest, int dstart, int dend) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        Editable text = this.rtEditor.getText();
        int length = text != null ? text.length() : 0;
        if (this.textBox.isEditing() && length >= getMax()) {
            Debug.INSTANCE.m32052i(InputLengthFilter.class, "input exceeds max len " + getMax() + ", current len: " + length, new Object[0]);
            ToastUtils.INSTANCE.show(C8002R.string.text_box_input_exceed_max_len, false);
        }
        return m36151a(source, start, end, dest, dstart, dend);
    }

    public final int getOriginContentLen() {
        return this.originContentLen;
    }

    public final void setOriginContentLen(int i) {
        this.originContentLen = i;
    }
}
