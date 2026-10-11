package com.onegravity.rteditor.effects;

import android.text.Spannable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.spans.BulletSpan;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.Selection;
import com.sunia.HTREnginev2.kvk;
import com.sunia.HTREnginev2.xuk;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class BulletEffect extends xuk<Boolean, BulletSpan> {
    @Override // com.sunia.HTREnginev2.xuk
    public synchronized void applyToSelection(RTEditText rTEditText, Selection selection, Boolean bool) {
        Spannable text = rTEditText.getText();
        kvk kvkVar = new kvk();
        ArrayList<Paragraph> paragraphs = rTEditText.getParagraphs();
        int size = paragraphs.size();
        for (int i = 0; i < size; i++) {
            Paragraph paragraph = paragraphs.get(i);
            List spans = getSpans(text, paragraph, SpanCollectMode.SPAN_FLAGS);
            kvkVar.m55349e(spans, paragraph);
            boolean z = !spans.isEmpty();
            if (paragraph.isSelected(selection)) {
                z = bool.booleanValue();
            }
            if (z) {
                kvkVar.m55345a(new BulletSpan(Helper.getLeadingMarging(), paragraph.isEmpty(), paragraph.isFirst(), paragraph.isLast()), paragraph);
                Effects.NUMBER.findSpans2Remove(text, paragraph, kvkVar);
            }
        }
        kvkVar.m55347c(text);
    }
}
