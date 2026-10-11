package com.onegravity.rteditor.spans;

import android.text.style.StyleSpan;

/* loaded from: classes7.dex */
public class ItalicSpan extends StyleSpan implements RTSpan<Boolean> {
    public ItalicSpan() {
        super(2);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Boolean getValue() {
        return Boolean.TRUE;
    }
}
