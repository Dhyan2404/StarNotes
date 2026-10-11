package com.sunia.HTREnginev2;

import android.text.Spannable;
import com.onegravity.rteditor.effects.SpanCollectMode;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Selection;
import java.lang.reflect.Array;
import java.util.List;

/* loaded from: classes7.dex */
public abstract class xvm<V> {

    /* renamed from: a */
    public Class<? extends RTSpan<V>> f90118a;

    public xvm(Class<? extends RTSpan<V>> cls) {
        this.f90118a = cls;
    }

    /* renamed from: a */
    public abstract List<RTSpan<V>> mo54613a(Spannable spannable, Selection selection, SpanCollectMode spanCollectMode);

    /* renamed from: b */
    public final RTSpan<V>[] m58354b(Spannable spannable, int i, int i2) {
        RTSpan<V>[] rTSpanArr = (RTSpan[]) spannable.getSpans(i, i2, this.f90118a);
        return rTSpanArr == null ? (RTSpan[]) Array.newInstance(this.f90118a, new int[0]) : rTSpanArr;
    }

    /* renamed from: c */
    public final boolean m58355c(int i, int... iArr) {
        for (int i2 : iArr) {
            if ((i & i2) == i2) {
                return true;
            }
        }
        return false;
    }
}
