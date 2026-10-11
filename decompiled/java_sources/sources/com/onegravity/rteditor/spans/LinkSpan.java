package com.onegravity.rteditor.spans;

import android.text.style.URLSpan;
import android.view.View;

/* loaded from: classes7.dex */
public class LinkSpan extends URLSpan implements RTSpan<String> {

    /* loaded from: classes7.dex */
    public interface LinkSpanListener {
        void onClick(LinkSpan linkSpan);
    }

    public LinkSpan(String str) {
        super(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
    public void onClick(View view) {
        if (view instanceof LinkSpanListener) {
            ((LinkSpanListener) view).onClick(this);
        }
    }

    @Override // com.onegravity.rteditor.spans.RTSpan
    public String getValue() {
        return getURL();
    }
}
