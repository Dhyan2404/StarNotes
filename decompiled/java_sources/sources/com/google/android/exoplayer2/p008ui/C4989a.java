package com.google.android.exoplayer2.p008ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.p008ui.SubtitleView;
import com.google.android.exoplayer2.text.Cue;
import com.sunia.HTREnginev2.m5n;
import com.sunia.HTREnginev2.p5n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.ui.a */
/* loaded from: classes5.dex */
public final class C4989a extends View implements SubtitleView.InterfaceC4985a {

    /* renamed from: e */
    public final List<m5n> f27863e;

    /* renamed from: f */
    public List<Cue> f27864f;

    /* renamed from: g */
    public int f27865g;

    /* renamed from: h */
    public float f27866h;

    /* renamed from: i */
    public CaptionStyleCompat f27867i;

    /* renamed from: j */
    public float f27868j;

    public C4989a(Context context) {
        this(context, null);
    }

    /* renamed from: b */
    public static Cue m21233b(Cue cue) {
        Cue.Builder textAlignment = cue.buildUpon().setPosition(-3.4028235E38f).setPositionAnchor(Integer.MIN_VALUE).setTextAlignment(null);
        if (cue.lineType == 0) {
            textAlignment.setLine(1.0f - cue.line, 0);
        } else {
            textAlignment.setLine((-cue.line) - 1.0f, 1);
        }
        int i = cue.lineAnchor;
        if (i == 0) {
            textAlignment.setLineAnchor(2);
        } else if (i == 2) {
            textAlignment.setLineAnchor(0);
        }
        return textAlignment.build();
    }

    @Override // com.google.android.exoplayer2.p008ui.SubtitleView.InterfaceC4985a
    /* renamed from: a */
    public void mo21212a(List<Cue> list, CaptionStyleCompat captionStyleCompat, float f, int i, float f2) {
        this.f27864f = list;
        this.f27867i = captionStyleCompat;
        this.f27866h = f;
        this.f27865g = i;
        this.f27868j = f2;
        while (this.f27863e.size() < list.size()) {
            this.f27863e.add(new m5n(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<Cue> list = this.f27864f;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i = paddingBottom - paddingTop;
        float m56222h = p5n.m56222h(this.f27865g, this.f27866h, height, i);
        if (m56222h <= 0.0f) {
            return;
        }
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            Cue cue = list.get(i2);
            if (cue.verticalType != Integer.MIN_VALUE) {
                cue = m21233b(cue);
            }
            Cue cue2 = cue;
            int i3 = paddingBottom;
            this.f27863e.get(i2).m55550b(cue2, this.f27867i, m56222h, p5n.m56222h(cue2.textSizeType, cue2.textSize, height, i), this.f27868j, canvas, paddingLeft, paddingTop, width, i3);
            i2++;
            size = size;
            i = i;
            paddingBottom = i3;
            width = width;
        }
    }

    public C4989a(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27863e = new ArrayList();
        this.f27864f = Collections.emptyList();
        this.f27865g = 0;
        this.f27866h = 0.0533f;
        this.f27867i = CaptionStyleCompat.DEFAULT;
        this.f27868j = 0.08f;
    }
}
