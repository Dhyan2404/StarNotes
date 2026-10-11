package com.onegravity.rteditor.spans;

import android.text.Layout;
import android.text.style.AlignmentSpan;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes7.dex */
public class AlignmentSpan extends AlignmentSpan.Standard implements RTSpan<Layout.Alignment>, RTParagraphSpan<Layout.Alignment> {
    private static Map<Layout.Alignment, Layout.Alignment> sRTLMapping;
    private boolean mIsRTL;

    static {
        HashMap hashMap = new HashMap();
        sRTLMapping = hashMap;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        hashMap.put(alignment, alignment);
        sRTLMapping.put(Layout.Alignment.ALIGN_NORMAL, Layout.Alignment.ALIGN_OPPOSITE);
        sRTLMapping.put(Layout.Alignment.ALIGN_OPPOSITE, Layout.Alignment.ALIGN_NORMAL);
    }

    public AlignmentSpan(Layout.Alignment alignment, boolean z) {
        super(z ? sRTLMapping.get(alignment) : alignment);
        this.mIsRTL = z;
    }

    @Override // com.onegravity.rteditor.spans.RTParagraphSpan
    /* renamed from: createClone, reason: merged with bridge method [inline-methods] */
    public RTParagraphSpan<Layout.Alignment> createClone2() {
        return new AlignmentSpan(getValue(), this.mIsRTL);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onegravity.rteditor.spans.RTSpan
    public Layout.Alignment getValue() {
        Layout.Alignment alignment = getAlignment();
        return this.mIsRTL ? sRTLMapping.get(alignment) : alignment;
    }
}
