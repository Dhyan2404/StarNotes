package com.onegravity.rteditor;

import android.graphics.Rect;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.ArrowKeyMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ClickableSpan;
import android.text.style.LeadingMarginSpan;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: classes7.dex */
public class RTEditorMovementMethod extends ArrowKeyMovementMethod {

    /* renamed from: a */
    public static RTEditorMovementMethod f40104a;

    /* renamed from: b */
    public static Rect f40105b = new Rect();

    public static synchronized MovementMethod getInstance() {
        RTEditorMovementMethod rTEditorMovementMethod;
        synchronized (RTEditorMovementMethod.class) {
            if (f40104a == null) {
                f40104a = new RTEditorMovementMethod();
            }
            rTEditorMovementMethod = f40104a;
        }
        return rTEditorMovementMethod;
    }

    /* renamed from: a */
    public final int m31536a(TextView textView, MotionEvent motionEvent) {
        int i;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int totalPaddingLeft = x - textView.getTotalPaddingLeft();
        int totalPaddingTop = y - textView.getTotalPaddingTop();
        int scrollX = totalPaddingLeft + textView.getScrollX();
        int scrollY = totalPaddingTop + textView.getScrollY();
        Layout layout = textView.getLayout();
        int lineForVertical = layout.getLineForVertical(scrollY);
        synchronized (f40105b) {
            layout.getLineBounds(lineForVertical, f40105b);
            if (!f40105b.contains(scrollX, scrollY)) {
                return -1;
            }
            Spanned spanned = (Spanned) textView.getText();
            int lineStart = layout.getLineStart(lineForVertical);
            int lineEnd = layout.getLineEnd(lineForVertical);
            int i2 = lineEnd - lineStart;
            if (i2 == 0) {
                return -1;
            }
            Spanned spanned2 = (Spanned) spanned.subSequence(lineStart, lineEnd);
            int i3 = 0;
            LeadingMarginSpan[] leadingMarginSpanArr = (LeadingMarginSpan[]) spanned2.getSpans(0, i2, LeadingMarginSpan.class);
            if (leadingMarginSpanArr != null) {
                i = 0;
                for (LeadingMarginSpan leadingMarginSpan : leadingMarginSpanArr) {
                    i += leadingMarginSpan.getLeadingMargin(true);
                }
            } else {
                i = 0;
            }
            int i4 = scrollX - i;
            float[] fArr = new float[i2];
            textView.getPaint().getTextWidths(spanned2, 0, i2, fArr);
            float textSize = textView.getTextSize();
            AbsoluteSizeSpan[] absoluteSizeSpanArr = (AbsoluteSizeSpan[]) spanned2.getSpans(0, i2, AbsoluteSizeSpan.class);
            if (absoluteSizeSpanArr != null) {
                for (AbsoluteSizeSpan absoluteSizeSpan : absoluteSizeSpanArr) {
                    int spanStart = spanned2.getSpanStart(absoluteSizeSpan);
                    int spanEnd = spanned2.getSpanEnd(absoluteSizeSpan);
                    float size = absoluteSizeSpan.getSize() / textSize;
                    int min = Math.min(lineEnd, spanEnd);
                    for (int max = Math.max(lineStart, spanStart); max < min; max++) {
                        fArr[max] = fArr[max] * size;
                    }
                }
            }
            float f = 0.0f;
            while (i3 < i2) {
                float f2 = fArr[i3] + f;
                float f3 = i4;
                if (f2 >= f3) {
                    if (f3 - f >= f2 - f3) {
                        i3++;
                    }
                    return lineStart + i3;
                }
                i3++;
                f = f2;
            }
            return -1;
        }
    }

    @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int m31536a;
        int action = motionEvent.getAction();
        if ((action == 1 || action == 0) && (m31536a = m31536a(textView, motionEvent)) != -1) {
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(m31536a, m31536a, ClickableSpan.class);
            if (clickableSpanArr.length != 0) {
                if (action == 1) {
                    clickableSpanArr[0].onClick(textView);
                } else if (action == 0) {
                    Selection.setSelection(spannable, spannable.getSpanStart(clickableSpanArr[0]), spannable.getSpanEnd(clickableSpanArr[0]));
                }
                return true;
            }
        }
        return super.onTouchEvent(textView, spannable, motionEvent);
    }
}
