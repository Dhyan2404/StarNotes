package com.onegravity.rteditor.spans;

/* loaded from: classes7.dex */
public class AbsoluteSizeSpan extends android.text.style.AbsoluteSizeSpan implements RTSpan<Integer> {
    public AbsoluteSizeSpan(int i) {
        super(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Integer getValue() {
        return Integer.valueOf(getSize());
    }
}
