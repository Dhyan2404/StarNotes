package com.sunia.HTREnginev2;

import android.text.Spannable;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class jvk<V> extends xvm<V> {
    public jvk(Class<? extends RTSpan<V>> cls) {
        super(cls);
    }

    @Override // com.sunia.HTREnginev2.xvm
    /* renamed from: a */
    public final List<RTSpan<V>> mo54613a(Spannable spannable, Selection selection, SpanCollectMode spanCollectMode) {
        ArrayList arrayList = new ArrayList();
        for (RTSpan<V> rTSpan : m58354b(spannable, selection.start(), selection.end())) {
            if (m55055d(spannable, selection, rTSpan, spanCollectMode)) {
                arrayList.add(rTSpan);
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final boolean m55055d(Spannable spannable, Selection selection, Object obj, SpanCollectMode spanCollectMode) {
        int spanStart = spannable.getSpanStart(obj);
        int spanEnd = spannable.getSpanEnd(obj);
        int start = selection.start();
        int end = selection.end();
        int max = Math.max(spanStart, start);
        int min = Math.min(spanEnd, end);
        if (max > min) {
            return false;
        }
        if (max < min) {
            return true;
        }
        if ((spanStart > start && spanEnd < end) || (start > spanStart && end < spanEnd)) {
            return true;
        }
        if (spanCollectMode == SpanCollectMode.EXACT) {
            return spanStart == start && spanEnd == end && start == end;
        }
        int spanFlags = spannable.getSpanFlags(obj) & 51;
        return spanEnd == start ? m58355c(spanFlags, 34, 18) : m58355c(spanFlags, 17, 18);
    }
}
