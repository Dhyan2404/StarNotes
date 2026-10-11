package com.onegravity.rteditor.effects;

import android.text.Layout;
import android.text.Spannable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.spans.AlignmentSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Constants;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.Selection;
import com.sunia.HTREnginev2.kvk;
import com.sunia.HTREnginev2.xuk;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class AlignmentEffect extends xuk<Layout.Alignment, AlignmentSpan> {
    @Override // com.sunia.HTREnginev2.xuk
    public void applyToSelection(RTEditText rTEditText, Selection selection, Layout.Alignment alignment) {
        Layout.Alignment alignment2;
        kvk kvkVar = new kvk();
        Spannable text = rTEditText.getText();
        ArrayList<Paragraph> paragraphs = rTEditText.getParagraphs();
        int size = paragraphs.size();
        for (int i = 0; i < size; i++) {
            Paragraph paragraph = paragraphs.get(i);
            List spans = getSpans(text, paragraph, SpanCollectMode.SPAN_FLAGS);
            kvkVar.m55349e(spans, paragraph);
            boolean z = !spans.isEmpty();
            if (paragraph.isSelected(selection)) {
                alignment2 = alignment;
            } else {
                alignment2 = z ? (Layout.Alignment) ((RTSpan) spans.get(0)).getValue() : null;
            }
            if (alignment2 != null) {
                kvkVar.m55345a(new AlignmentSpan(alignment2, Helper.isRTL(text, paragraph.start(), paragraph.end())), paragraph);
            }
            if (!paragraph.isFirst() && paragraph.isLast() && paragraph.isEmpty()) {
                rTEditText.getText().insert(paragraph.end(), String.valueOf(Constants.CH_ZWSP));
                paragraph.offset(0, 1);
            }
        }
        kvkVar.m55347c(text);
    }
}
