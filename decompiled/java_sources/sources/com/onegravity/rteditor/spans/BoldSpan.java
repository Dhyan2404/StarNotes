package com.onegravity.rteditor.spans;

import android.text.style.StyleSpan;

/* loaded from: classes7.dex */
public class BoldSpan extends StyleSpan implements RTSpan<Boolean> {
    public BoldSpan() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Boolean getValue() {
        return Boolean.TRUE;
    }
}
