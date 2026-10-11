package com.miui.penengine.p015e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p015e.C6995d;

/* renamed from: com.miui.penengine.e.d */
/* loaded from: classes7.dex */
public class C6995d extends View {

    /* renamed from: j */
    public static final String f39650j = "d";

    /* renamed from: a */
    public Bitmap f39651a;

    /* renamed from: b */
    public float f39652b;

    /* renamed from: c */
    public float f39653c;

    /* renamed from: d */
    public Matrix f39654d;

    /* renamed from: e */
    public Context f39655e;

    /* renamed from: f */
    public float f39656f;

    /* renamed from: g */
    public ViewGroup f39657g;

    /* renamed from: h */
    public View f39658h;

    /* renamed from: i */
    public int f39659i;

    public C6995d(Context context, View view) {
        super(context);
        this.f39659i = 0;
        this.f39651a = null;
        this.f39656f = 1.0f;
        this.f39655e = context;
        this.f39654d = new Matrix();
        this.f39658h = view;
        m31327b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m31324c() {
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setBackgroundColor(-1);
        getBackground().setAlpha(0);
        this.f39657g.addView(this);
        bringToFront();
    }

    /* renamed from: b */
    public final void m31327b() {
        ViewParent parent = this.f39658h.getParent();
        if (parent instanceof ViewGroup) {
            this.f39657g = (ViewGroup) parent;
            this.f39658h.post(new Runnable() { // from class: com.sunia.HTREnginev2.gyo
                @Override // java.lang.Runnable
                public final void run() {
                    C6995d.this.m31324c();
                }
            });
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f39651a == null) {
            return;
        }
        this.f39654d.reset();
        this.f39654d.postRotate(this.f39659i);
        Matrix matrix = this.f39654d;
        float f = this.f39656f;
        matrix.postScale(f, f);
        Bitmap bitmap = this.f39651a;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.f39651a.getHeight(), this.f39654d, true);
        this.f39654d.reset();
        this.f39654d.postTranslate(this.f39652b - (createBitmap.getWidth() / 2), this.f39653c - (createBitmap.getHeight() / 2));
        canvas.drawBitmap(createBitmap, this.f39654d, null);
        createBitmap.recycle();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.f39651a == null) {
            return super.onHoverEvent(motionEvent);
        }
        if (motionEvent.getToolType(0) == 2) {
            if (motionEvent.getAction() == 10) {
                this.f39651a.eraseColor(0);
            } else {
                this.f39652b = motionEvent.getX();
                this.f39653c = motionEvent.getY();
                this.f39651a.eraseColor(Color.parseColor("#FF0000"));
            }
            invalidate();
        }
        return super.onHoverEvent(motionEvent);
    }

    public void setHoverBrush(Bitmap bitmap) {
        Bitmap bitmap2 = this.f39651a;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f39651a = null;
        }
        this.f39651a = Bitmap.createBitmap(bitmap);
    }

    /* renamed from: a */
    public void m31325a() {
        ViewParent parent = this.f39658h.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.f39657g = viewGroup;
            viewGroup.removeView(this);
        }
        Bitmap bitmap = this.f39651a;
        if (bitmap != null) {
            bitmap.recycle();
            this.f39651a = null;
        }
    }

    /* renamed from: b */
    public void m31328b(float f) {
        this.f39656f = f;
        C6985b.m31269c(f39650j, "Brush coefficient = " + this.f39656f);
    }

    /* renamed from: a */
    public void m31326a(float f) {
        this.f39659i = (int) f;
        C6985b.m31269c(f39650j, "Posture degree = " + this.f39659i);
    }
}
