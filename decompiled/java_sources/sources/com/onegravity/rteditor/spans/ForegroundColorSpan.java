package com.onegravity.rteditor.spans;

/* loaded from: classes7.dex */
public class ForegroundColorSpan extends android.text.style.ForegroundColorSpan implements RTSpan<Integer> {
    public ForegroundColorSpan(int i) {
        super(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Integer getValue() {
        return Integer.valueOf(getForegroundColor());
    }
}
