package com.sunia.HTREnginev2;

import android.text.Editable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;

/* loaded from: classes7.dex */
public abstract class brd<V, C extends RTSpan<V>> extends Effect<V, C> {
    @Override // com.onegravity.rteditor.effects.Effect
    public void applyToSelection(RTEditText rTEditText, V v) {
        RTSpan<V> newSpan;
        Selection selection = getSelection(rTEditText);
        int i = selection.isEmpty() ? 18 : 34;
        Editable text = rTEditText.getText();
        for (RTSpan<V> rTSpan : getSpans(text, selection, SpanCollectMode.SPAN_FLAGS)) {
            boolean equals = rTSpan.getValue().equals(v);
            int spanStart = text.getSpanStart(rTSpan);
            if (spanStart < selection.start()) {
                if (equals) {
                    selection.offset(selection.start() - spanStart, 0);
                    i = 34;
                } else {
                    text.setSpan(newSpan(rTSpan.getValue()), spanStart, selection.start(), 33);
                }
            }
            int spanEnd = text.getSpanEnd(rTSpan);
            if (spanEnd > selection.end()) {
                if (equals) {
                    selection.offset(0, spanEnd - selection.end());
                } else {
                    text.setSpan(newSpan(rTSpan.getValue()), selection.end(), spanEnd, 34);
                }
            }
            text.removeSpan(rTSpan);
        }
        if (v == null || (newSpan = newSpan(v)) == null) {
            return;
        }
        text.setSpan(newSpan, selection.start(), selection.end(), i);
    }

    @Override // com.onegravity.rteditor.effects.Effect
    public final Selection getSelection(RTEditText rTEditText) {
        return new Selection(rTEditText);
    }

    public abstract RTSpan<V> newSpan(V v);

    @Override // com.onegravity.rteditor.effects.Effect
    public final xvm<V> newSpanCollector(Class<? extends RTSpan<V>> cls) {
        return new hrd(cls);
    }
}
