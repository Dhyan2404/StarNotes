package com.onegravity.rteditor.effects;

import android.text.Spannable;
import android.util.SparseIntArray;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.spans.NumberSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.Selection;
import com.sunia.HTREnginev2.kvk;
import com.sunia.HTREnginev2.xuk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes7.dex */
public class NumberEffect extends xuk<Boolean, NumberSpan> {
    @Override // com.sunia.HTREnginev2.xuk
    public synchronized void applyToSelection(RTEditText rTEditText, Selection selection, Boolean bool) {
        int i;
        Selection selection2;
        boolean z;
        Spannable text = rTEditText.getText();
        kvk kvkVar = new kvk();
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        ArrayList<Paragraph> paragraphs = rTEditText.getParagraphs();
        int size = paragraphs.size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            Paragraph paragraph = paragraphs.get(i3);
            List<RTSpan<Integer>> spans = Effects.INDENTATION.getSpans(text, paragraph, SpanCollectMode.EXACT);
            if (spans.isEmpty()) {
                i = 0;
            } else {
                Iterator<RTSpan<Integer>> it2 = spans.iterator();
                i = 0;
                while (it2.hasNext()) {
                    i += it2.next().getValue().intValue();
                }
            }
            sparseIntArray.put(i2, i);
            List spans2 = getSpans(text, paragraph, SpanCollectMode.SPAN_FLAGS);
            kvkVar.m55349e(spans2, paragraph);
            if (spans2.isEmpty()) {
                selection2 = selection;
                z = false;
            } else {
                selection2 = selection;
                z = true;
            }
            if (paragraph.isSelected(selection2)) {
                z = bool.booleanValue();
            }
            if (z) {
                int i4 = 1;
                for (int i5 = 1; i5 < i2; i5++) {
                    int i6 = sparseIntArray.get(i5);
                    int i7 = sparseIntArray2.get(i5);
                    if (i6 >= i) {
                        if (i6 == i) {
                            if (i7 != 0) {
                                i4 = i7 + 1;
                            }
                        }
                    }
                    i4 = 1;
                }
                sparseIntArray2.put(i2, i4);
                kvkVar.m55345a(new NumberSpan(i4, Helper.getLeadingMarging(), paragraph.isEmpty(), paragraph.isFirst(), paragraph.isLast()), paragraph);
                Effects.BULLET.findSpans2Remove(text, paragraph, kvkVar);
            }
            i2++;
        }
        kvkVar.m55347c(text);
    }
}
