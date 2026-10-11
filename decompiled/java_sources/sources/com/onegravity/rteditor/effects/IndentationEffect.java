package com.onegravity.rteditor.effects;

import android.text.Spannable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.spans.IndentationSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.Selection;
import com.sunia.HTREnginev2.kvk;
import com.sunia.HTREnginev2.xuk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes7.dex */
public class IndentationEffect extends xuk<Integer, IndentationSpan> {
    @Override // com.sunia.HTREnginev2.xuk
    public void applyToSelection(RTEditText rTEditText, Selection selection, Integer num) {
        Spannable text = rTEditText.getText();
        kvk kvkVar = new kvk();
        ArrayList<Paragraph> paragraphs = rTEditText.getParagraphs();
        int size = paragraphs.size();
        for (int i = 0; i < size; i++) {
            Paragraph paragraph = paragraphs.get(i);
            List spans = getSpans(text, paragraph, SpanCollectMode.EXACT);
            kvkVar.m55349e(spans, paragraph);
            Iterator it2 = spans.iterator();
            int intValue = it2.hasNext() ? ((Integer) ((RTSpan) it2.next()).getValue()).intValue() + 0 : 0;
            int intValue2 = num == null ? 0 : num.intValue();
            if (!paragraph.isSelected(selection)) {
                intValue2 = 0;
            }
            int i2 = intValue + intValue2;
            if (i2 > 0) {
                kvkVar.m55345a(new IndentationSpan(i2, paragraph.isEmpty(), paragraph.isFirst(), paragraph.isLast()), paragraph);
            }
        }
        kvkVar.m55347c(text);
    }
}
