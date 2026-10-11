package com.onegravity.rteditor;

import android.text.Spannable;
import com.onegravity.rteditor.spans.LinkSpan;

/* loaded from: classes7.dex */
public interface RTEditTextListener {
    void onClick(RTEditText rTEditText, LinkSpan linkSpan);

    void onFocusChanged(RTEditText rTEditText, boolean z);

    void onRestoredInstanceState(RTEditText rTEditText);

    void onRichTextEditingChanged(RTEditText rTEditText, boolean z);

    void onSelectionChanged(RTEditText rTEditText, int i, int i2);

    void onTextChanged(RTEditText rTEditText, Spannable spannable, Spannable spannable2, int i, int i2, int i3, int i4);
}
