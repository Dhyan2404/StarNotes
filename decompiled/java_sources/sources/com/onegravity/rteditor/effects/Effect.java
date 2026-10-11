package com.onegravity.rteditor.effects;

import android.text.Editable;
import android.text.Spannable;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;
import com.sunia.HTREnginev2.xvm;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes7.dex */
public abstract class Effect<V, C extends RTSpan<V>> {

    /* renamed from: a */
    public xvm<V> f40370a;

    public abstract void applyToSelection(RTEditText rTEditText, V v);

    public final void clearFormattingInSelection(RTEditText rTEditText) {
        Editable text = rTEditText.getText();
        Iterator<RTSpan<V>> it2 = getSpans(text, new Selection(rTEditText).isEmpty() ? new Selection(0, text.length()) : getSelection(rTEditText), SpanCollectMode.EXACT).iterator();
        while (it2.hasNext()) {
            rTEditText.getText().removeSpan(it2.next());
        }
    }

    public final boolean existsInSelection(RTEditText rTEditText) {
        return !getSpans(rTEditText.getText(), getSelection(rTEditText), SpanCollectMode.SPAN_FLAGS).isEmpty();
    }

    public abstract Selection getSelection(RTEditText rTEditText);

    public final List<RTSpan<V>> getSpans(Spannable spannable, Selection selection, SpanCollectMode spanCollectMode) {
        if (this.f40370a == null) {
            this.f40370a = newSpanCollector((Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[r0.length - 1]);
        }
        return this.f40370a.mo54613a(spannable, selection, spanCollectMode);
    }

    public abstract xvm<V> newSpanCollector(Class<? extends RTSpan<V>> cls);

    public final List<V> valuesInSelection(RTEditText rTEditText) {
        ArrayList arrayList = new ArrayList();
        Iterator<RTSpan<V>> it2 = getSpans(rTEditText.getText(), getSelection(rTEditText), SpanCollectMode.SPAN_FLAGS).iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getValue());
        }
        return arrayList;
    }
}
