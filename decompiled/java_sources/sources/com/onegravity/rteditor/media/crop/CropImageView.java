package com.onegravity.rteditor.media.crop;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.onegravity.rteditor.media.crop.HighlightView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class CropImageView extends ImageViewTouchBase {

    /* renamed from: J */
    public float f40449J;

    /* renamed from: O */
    public float f40450O;

    /* renamed from: Q */
    public int f40451Q;

    /* renamed from: k0 */
    public Context f40452k0;

    /* renamed from: y */
    public ArrayList<HighlightView> f40453y;

    /* renamed from: z */
    public HighlightView f40454z;

    public CropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40453y = new ArrayList<>();
        this.f40454z = null;
        this.f40452k0 = context;
    }

    @Override // com.onegravity.rteditor.media.crop.ImageViewTouchBase
    /* renamed from: k */
    public void mo31726k(float f, float f2) {
        super.mo31726k(f, f2);
        for (int i = 0; i < this.f40453y.size(); i++) {
            HighlightView highlightView = this.f40453y.get(i);
            highlightView.f40469h.postTranslate(f, f2);
            highlightView.m31743j();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (int i = 0; i < this.f40453y.size(); i++) {
            this.f40453y.get(i).m31735b(canvas);
        }
    }

    @Override // com.onegravity.rteditor.media.crop.ImageViewTouchBase, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f40485l.getBitmap() != null) {
            Iterator<HighlightView> it2 = this.f40453y.iterator();
            while (it2.hasNext()) {
                HighlightView next = it2.next();
                next.f40469h.set(getImageMatrix());
                next.m31743j();
                if (next.f40463b) {
                    m31731x(next);
                }
            }
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CropImageActivity cropImageActivity = (CropImageActivity) this.f40452k0;
        int i = 0;
        if (cropImageActivity.f40432M0) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (cropImageActivity.f40431L0) {
                    for (int i2 = 0; i2 < this.f40453y.size(); i2++) {
                        HighlightView highlightView = this.f40453y.get(i2);
                        if (highlightView.m31741h()) {
                            cropImageActivity.f40433N0 = highlightView;
                            for (int i3 = 0; i3 < this.f40453y.size(); i3++) {
                                if (i3 != i2) {
                                    this.f40453y.get(i3).m31746m(true);
                                }
                            }
                            m31731x(highlightView);
                            ((CropImageActivity) this.f40452k0).f40431L0 = false;
                            return true;
                        }
                    }
                } else {
                    HighlightView highlightView2 = this.f40454z;
                    if (highlightView2 != null) {
                        m31731x(highlightView2);
                        this.f40454z.m31747n(HighlightView.ModifyMode.None);
                    }
                }
                this.f40454z = null;
            } else if (action == 2) {
                if (cropImageActivity.f40431L0) {
                    m31733z(motionEvent);
                } else {
                    HighlightView highlightView3 = this.f40454z;
                    if (highlightView3 != null) {
                        highlightView3.m31740g(this.f40451Q, motionEvent.getX() - this.f40449J, motionEvent.getY() - this.f40450O);
                        this.f40449J = motionEvent.getX();
                        this.f40450O = motionEvent.getY();
                        m31732y(this.f40454z);
                    }
                }
            }
        } else if (cropImageActivity.f40431L0) {
            m31733z(motionEvent);
        } else {
            while (true) {
                if (i >= this.f40453y.size()) {
                    break;
                }
                HighlightView highlightView4 = this.f40453y.get(i);
                int m31737d = highlightView4.m31737d(motionEvent.getX(), motionEvent.getY());
                if (m31737d != 1) {
                    this.f40451Q = m31737d;
                    this.f40454z = highlightView4;
                    this.f40449J = motionEvent.getX();
                    this.f40450O = motionEvent.getY();
                    this.f40454z.m31747n(m31737d == 32 ? HighlightView.ModifyMode.Move : HighlightView.ModifyMode.Grow);
                } else {
                    i++;
                }
            }
        }
        int action2 = motionEvent.getAction();
        if (action2 == 1) {
            m31749a(true, true);
        } else if (action2 == 2 && m31753e() == 1.0f) {
            m31749a(true, true);
        }
        return true;
    }

    @Override // com.onegravity.rteditor.media.crop.ImageViewTouchBase
    /* renamed from: p */
    public void mo31727p() {
        super.mo31727p();
        Iterator<HighlightView> it2 = this.f40453y.iterator();
        while (it2.hasNext()) {
            HighlightView next = it2.next();
            next.f40469h.set(getImageMatrix());
            next.m31743j();
        }
    }

    @Override // com.onegravity.rteditor.media.crop.ImageViewTouchBase
    /* renamed from: r */
    public void mo31728r() {
        super.mo31728r();
        Iterator<HighlightView> it2 = this.f40453y.iterator();
        while (it2.hasNext()) {
            HighlightView next = it2.next();
            next.f40469h.set(getImageMatrix());
            next.m31743j();
        }
    }

    @Override // com.onegravity.rteditor.media.crop.ImageViewTouchBase
    /* renamed from: u */
    public void mo31729u(float f, float f2, float f3) {
        super.mo31729u(f, f2, f3);
        Iterator<HighlightView> it2 = this.f40453y.iterator();
        while (it2.hasNext()) {
            HighlightView next = it2.next();
            next.f40469h.set(getImageMatrix());
            next.m31743j();
        }
    }

    /* renamed from: w */
    public void m31730w(HighlightView highlightView) {
        this.f40453y.add(highlightView);
        invalidate();
    }

    /* renamed from: x */
    public final void m31731x(HighlightView highlightView) {
        Rect rect = highlightView.f40466e;
        float max = Math.max(1.0f, Math.min((getWidth() / rect.width()) * 0.8f, (getHeight() / rect.height()) * 0.8f) * m31753e());
        if (Math.abs(max - m31753e()) / max > 0.1d) {
            float[] fArr = {highlightView.f40468g.centerX(), highlightView.f40468g.centerY()};
            getImageMatrix().mapPoints(fArr);
            m31766v(max, fArr[0], fArr[1], 300.0f);
        }
        m31732y(highlightView);
    }

    /* renamed from: y */
    public final void m31732y(HighlightView highlightView) {
        Rect rect = highlightView.f40466e;
        int max = Math.max(0, this.f40489p - rect.left);
        int min = Math.min(0, this.f40490q - rect.right);
        int max2 = Math.max(0, this.f40491r - rect.top);
        int min2 = Math.min(0, this.f40492s - rect.bottom);
        if (max == 0) {
            max = min;
        }
        if (max2 == 0) {
            max2 = min2;
        }
        if (max == 0 && max2 == 0) {
            return;
        }
        m31758j(max, max2);
    }

    /* renamed from: z */
    public final void m31733z(MotionEvent motionEvent) {
        int i = 0;
        for (int i2 = 0; i2 < this.f40453y.size(); i2++) {
            HighlightView highlightView = this.f40453y.get(i2);
            highlightView.m31745l(false);
            highlightView.m31743j();
        }
        while (true) {
            if (i >= this.f40453y.size()) {
                break;
            }
            HighlightView highlightView2 = this.f40453y.get(i);
            if (highlightView2.m31737d(motionEvent.getX(), motionEvent.getY()) == 1) {
                i++;
            } else if (!highlightView2.m31741h()) {
                highlightView2.m31745l(true);
                highlightView2.m31743j();
            }
        }
        invalidate();
    }
}
