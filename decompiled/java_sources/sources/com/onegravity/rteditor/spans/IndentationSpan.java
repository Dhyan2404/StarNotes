package com.onegravity.rteditor.spans;

import android.text.style.LeadingMarginSpan;

/* loaded from: classes7.dex */
public class IndentationSpan extends LeadingMarginSpan.Standard implements RTSpan<Integer>, RTParagraphSpan<Integer> {
    private final boolean mIgnoreSpan;
    private final int mIndentation;

    public IndentationSpan(int i, boolean z, boolean z2, boolean z3) {
        super(i);
        this.mIndentation = i;
        this.mIgnoreSpan = z && z3 && !z2;
    }

    @Override // android.text.style.LeadingMarginSpan.Standard, android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z) {
        if (this.mIgnoreSpan) {
            return 0;
        }
        return this.mIndentation;
    }

    @Override // com.onegravity.rteditor.spans.RTParagraphSpan
    /* renamed from: createClone */
    public RTParagraphSpan<Integer> createClone2() {
        return new IndentationSpan(this.mIndentation, this.mIgnoreSpan);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Integer getValue() {
        return Integer.valueOf(this.mIndentation);
    }

    private IndentationSpan(int i, boolean z) {
        super(i);
        this.mIndentation = i;
        this.mIgnoreSpan = z;
    }
}
