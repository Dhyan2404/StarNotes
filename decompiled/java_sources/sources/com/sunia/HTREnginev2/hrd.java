package com.sunia.HTREnginev2;

import android.text.Spannable;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class hrd<V> extends xvm<V> {
    public hrd(Class<? extends RTSpan<V>> cls) {
        super(cls);
    }

    @Override // com.sunia.HTREnginev2.xvm
    /* renamed from: a */
    public final List<RTSpan<V>> mo54613a(Spannable spannable, Selection selection, SpanCollectMode spanCollectMode) {
        ArrayList arrayList = new ArrayList();
        for (RTSpan<V> rTSpan : m58354b(spannable, Math.max(0, selection.start() - 1), Math.min(spannable.length(), selection.end() + 1))) {
            if (m54614d(spannable, selection, rTSpan, spanCollectMode)) {
                arrayList.add(rTSpan);
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final boolean m54614d(Spannable spannable, Selection selection, Object obj, SpanCollectMode spanCollectMode) {
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
            return false;
        }
        int spanFlags = spannable.getSpanFlags(obj) & 51;
        return spanEnd == start ? m58355c(spanFlags, 34, 18) : m58355c(spanFlags, 17, 18);
    }
}
