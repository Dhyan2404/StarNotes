package com.onyx.tex;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import com.onyx.mml.MMLUtils;
import io.nano.tex.Graphics2D;
import io.nano.tex.LaTeX;
import io.nano.tex.TeXRender;

/* loaded from: classes9.dex */
public class MathLaTeX {

    /* renamed from: a */
    public String f62961a;

    /* renamed from: b */
    public TeXRender f62962b;

    /* renamed from: c */
    public int f62963c;

    /* renamed from: d */
    public float f62964d;

    /* renamed from: e */
    public int f62965e;

    /* renamed from: f */
    public int f62966f;

    /* renamed from: g */
    public Insets f62967g;

    /* renamed from: com.onyx.tex.MathLaTeX$a */
    /* loaded from: classes9.dex */
    public static class C13022a extends Thread {

        /* renamed from: e */
        public final /* synthetic */ Context f62968e;

        public C13022a(Context context) {
            this.f62968e = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (LaTeX.isInitialized()) {
                return;
            }
            LaTeX.init(this.f62968e);
        }
    }

    public MathLaTeX(String str) {
        this.f62963c = 40;
        this.f62964d = 10.0f;
        this.f62965e = -1;
        this.f62966f = -16777216;
        this.f62967g = new Insets(5, 5, 5, 5);
        this.f62961a = str;
    }

    public static void init(Context context) {
        if (LaTeX.isInitialized()) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            new C13022a(context).start();
        } else {
            LaTeX.init(context);
        }
    }

    /* renamed from: a */
    public final TeXRender m52148a() {
        if (this.f62962b == null) {
            this.f62962b = LaTeX.instance().parse(this.f62961a, this.f62963c, this.f62964d, this.f62966f);
        }
        return this.f62962b;
    }

    public Bitmap getBitmap() {
        TeXRender m52148a = m52148a();
        Bitmap createBitmap = Bitmap.createBitmap(m52148a.getWidth() + this.f62967g.getLeft() + this.f62967g.getRight(), m52148a.getHeight() + this.f62967g.getTop() + this.f62967g.getBottom(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(this.f62965e);
        Graphics2D graphics2D = new Graphics2D();
        graphics2D.setCanvas(canvas);
        m52148a.draw(graphics2D, this.f62967g.getLeft(), this.f62967g.getTop());
        return createBitmap;
    }

    public Size getSize() {
        TeXRender m52148a = m52148a();
        return new Size(m52148a.getWidth() + this.f62967g.getLeft() + this.f62967g.getRight(), m52148a.getHeight() + this.f62967g.getTop() + this.f62967g.getBottom());
    }

    public void release() {
        TeXRender teXRender = this.f62962b;
        if (teXRender != null) {
            teXRender.release();
        }
    }

    public void render(Canvas canvas, float f, float f2) {
        Graphics2D graphics2D = new Graphics2D();
        graphics2D.setCanvas(canvas);
        m52148a().draw(graphics2D, (int) (f + this.f62967g.getLeft()), (int) (f2 + this.f62967g.getTop()));
    }

    public MathLaTeX setBackground(int i) {
        this.f62965e = i;
        return this;
    }

    public MathLaTeX setForeground(int i) {
        this.f62966f = i;
        TeXRender teXRender = this.f62962b;
        if (teXRender != null) {
            teXRender.setForeground(i);
        }
        return this;
    }

    public MathLaTeX setInsets(Insets insets) {
        if (insets == null) {
            insets = new Insets();
        }
        this.f62967g = insets;
        return this;
    }

    public MathLaTeX setLineSpace(float f) {
        this.f62964d = f;
        return this;
    }

    public MathLaTeX setTextSize(int i) {
        this.f62963c = i;
        TeXRender teXRender = this.f62962b;
        if (teXRender != null) {
            teXRender.setTextSize(i);
        }
        return this;
    }

    public MathLaTeX(String str, boolean z) {
        this(MMLUtils.mml2LaTeX(str, z));
    }
}
