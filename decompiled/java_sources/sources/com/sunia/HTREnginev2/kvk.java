package com.sunia.HTREnginev2;

import android.text.Spannable;
import com.onegravity.rteditor.spans.RTParagraphSpan;
import com.onegravity.rteditor.spans.RTSpan;
import com.onegravity.rteditor.utils.Paragraph;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes7.dex */
public class kvk<V> {

    /* renamed from: a */
    public final ArrayList<C14016a<V>> f75879a = new ArrayList<>();

    /* renamed from: com.sunia.HTREnginev2.kvk$a */
    /* loaded from: classes7.dex */
    public static class C14016a<V> {

        /* renamed from: a */
        public final RTParagraphSpan<V> f75880a;

        /* renamed from: b */
        public final Paragraph f75881b;

        /* renamed from: c */
        public final boolean f75882c;

        public C14016a(RTParagraphSpan<V> rTParagraphSpan, Paragraph paragraph, boolean z) {
            this.f75880a = rTParagraphSpan;
            this.f75881b = paragraph;
            this.f75882c = z;
        }
    }

    /* renamed from: a */
    public void m55345a(RTParagraphSpan<V> rTParagraphSpan, Paragraph paragraph) {
        this.f75879a.add(new C14016a<>(rTParagraphSpan, paragraph, false));
    }

    /* renamed from: b */
    public void m55346b() {
        this.f75879a.clear();
    }

    /* renamed from: c */
    public void m55347c(Spannable spannable) {
        Iterator<C14016a<V>> it2 = this.f75879a.iterator();
        while (it2.hasNext()) {
            C14016a<V> next = it2.next();
            RTParagraphSpan<V> rTParagraphSpan = next.f75880a;
            int start = next.f75881b.start();
            int i = 34;
            if (next.f75882c) {
                int spanStart = spannable.getSpanStart(rTParagraphSpan);
                if (spanStart > -1 && spanStart < start) {
                    spannable.setSpan(rTParagraphSpan.createClone2(), spanStart, start, 34);
                }
                spannable.removeSpan(rTParagraphSpan);
            } else {
                Paragraph paragraph = next.f75881b;
                int end = paragraph.end();
                if ((paragraph.isLast() && paragraph.isEmpty()) || (paragraph.isLast() && paragraph.isFirst())) {
                    i = 18;
                } else if (!paragraph.isLast()) {
                    i = 33;
                }
                spannable.setSpan(rTParagraphSpan, start, Math.min(end, spannable.length()), i);
            }
        }
    }

    /* renamed from: d */
    public void m55348d(RTSpan<V> rTSpan, Paragraph paragraph) {
        if (rTSpan instanceof RTParagraphSpan) {
            this.f75879a.add(new C14016a<>((RTParagraphSpan) rTSpan, paragraph, true));
        }
    }

    /* renamed from: e */
    public void m55349e(List<RTSpan<V>> list, Paragraph paragraph) {
        Iterator<RTSpan<V>> it2 = list.iterator();
        while (it2.hasNext()) {
            m55348d(it2.next(), paragraph);
        }
    }
}
