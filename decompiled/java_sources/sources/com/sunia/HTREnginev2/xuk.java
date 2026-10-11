package com.sunia.HTREnginev2;

import android.text.Spannable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.effects.Effect;
import com.onegravity.rteditor.effects.Effects;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.Selection;

/* loaded from: classes7.dex */
public abstract class xuk<V, C extends RTSpan<V>> extends Effect<V, C> {
    public abstract void applyToSelection(RTEditText rTEditText, Selection selection, V v);

    @Override // com.onegravity.rteditor.effects.Effect
    public final void applyToSelection(RTEditText rTEditText, V v) {
        applyToSelection(rTEditText, getSelection(rTEditText), v);
        Effects.cleanupParagraphs(rTEditText, this);
    }

    public void findSpans2Remove(Spannable spannable, Paragraph paragraph, kvk<V> kvkVar) {
        kvkVar.m55349e(getSpans(spannable, paragraph, SpanCollectMode.EXACT), paragraph);
    }

    @Override // com.onegravity.rteditor.effects.Effect
    public final Selection getSelection(RTEditText rTEditText) {
        return rTEditText.getParagraphsInSelection();
    }

    @Override // com.onegravity.rteditor.effects.Effect
    public final xvm<V> newSpanCollector(Class<? extends RTSpan<V>> cls) {
        return new jvk(cls);
    }
}
