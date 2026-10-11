package com.onegravity.rteditor.spans;

/* loaded from: classes7.dex */
public class BackgroundColorSpan extends android.text.style.BackgroundColorSpan implements RTSpan<Integer> {
    public BackgroundColorSpan(int i) {
        super(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Integer getValue() {
        return Integer.valueOf(getBackgroundColor());
    }
}
