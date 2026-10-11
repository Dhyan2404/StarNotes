package com.onegravity.rteditor.effects;

import android.text.Editable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;
import com.sunia.HTREnginev2.brd;
import java.util.Iterator;

/* loaded from: classes7.dex */
public class LinkEffect extends brd<String, LinkSpan> {
    @Override // com.sunia.HTREnginev2.brd, com.onegravity.rteditor.effects.Effect
    public void applyToSelection(RTEditText rTEditText, String str) {
        Selection selection = getSelection(rTEditText);
        Editable text = rTEditText.getText();
        if (str == null) {
            Iterator<RTSpan<String>> it2 = getSpans(text, selection.offset(1, 1), SpanCollectMode.EXACT).iterator();
            while (it2.hasNext()) {
                text.removeSpan(it2.next());
            }
        } else {
            Iterator<RTSpan<String>> it3 = getSpans(text, selection, SpanCollectMode.EXACT).iterator();
            while (it3.hasNext()) {
                text.removeSpan(it3.next());
            }
            text.setSpan(newSpan(str), selection.start(), selection.end(), 33);
        }
    }

    @Override // com.sunia.HTREnginev2.brd
    public RTSpan<String> newSpan(String str) {
        return new LinkSpan(str);
    }
}
