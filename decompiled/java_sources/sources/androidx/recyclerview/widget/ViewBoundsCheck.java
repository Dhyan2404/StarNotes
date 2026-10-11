package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class ViewBoundsCheck {

    /* renamed from: c */
    public static final int f9802c = 1;

    /* renamed from: d */
    public static final int f9803d = 2;

    /* renamed from: e */
    public static final int f9804e = 4;

    /* renamed from: f */
    public static final int f9805f = 0;

    /* renamed from: g */
    public static final int f9806g = 1;

    /* renamed from: h */
    public static final int f9807h = 2;

    /* renamed from: i */
    public static final int f9808i = 4;

    /* renamed from: j */
    public static final int f9809j = 4;

    /* renamed from: k */
    public static final int f9810k = 16;

    /* renamed from: l */
    public static final int f9811l = 32;

    /* renamed from: m */
    public static final int f9812m = 64;

    /* renamed from: n */
    public static final int f9813n = 8;

    /* renamed from: o */
    public static final int f9814o = 256;

    /* renamed from: p */
    public static final int f9815p = 512;

    /* renamed from: q */
    public static final int f9816q = 1024;

    /* renamed from: r */
    public static final int f9817r = 12;

    /* renamed from: s */
    public static final int f9818s = 4096;

    /* renamed from: t */
    public static final int f9819t = 8192;

    /* renamed from: u */
    public static final int f9820u = 16384;

    /* renamed from: v */
    public static final int f9821v = 7;

    /* renamed from: a */
    public final InterfaceC1373b f9822a;

    /* renamed from: b */
    public C1372a f9823b = new C1372a();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ViewBounds {
    }

    /* renamed from: androidx.recyclerview.widget.ViewBoundsCheck$a */
    /* loaded from: classes3.dex */
    public static class C1372a {

        /* renamed from: a */
        public int f9824a = 0;

        /* renamed from: b */
        public int f9825b;

        /* renamed from: c */
        public int f9826c;

        /* renamed from: d */
        public int f9827d;

        /* renamed from: e */
        public int f9828e;

        /* renamed from: a */
        public void m6075a(int i) {
            this.f9824a = i | this.f9824a;
        }

        /* renamed from: b */
        public boolean m6076b() {
            int i = this.f9824a;
            if ((i & 7) != 0 && (i & (m6077c(this.f9827d, this.f9825b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f9824a;
            if ((i2 & 112) != 0 && (i2 & (m6077c(this.f9827d, this.f9826c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f9824a;
            if ((i3 & 1792) != 0 && (i3 & (m6077c(this.f9828e, this.f9825b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f9824a;
            return (i4 & 28672) == 0 || ((m6077c(this.f9828e, this.f9826c) << 12) & i4) != 0;
        }

        /* renamed from: c */
        public int m6077c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: d */
        public void m6078d() {
            this.f9824a = 0;
        }

        /* renamed from: e */
        public void m6079e(int i, int i2, int i3, int i4) {
            this.f9825b = i;
            this.f9826c = i2;
            this.f9827d = i3;
            this.f9828e = i4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.ViewBoundsCheck$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1373b {
        /* renamed from: a */
        View mo5804a(int i);

        /* renamed from: b */
        int mo5805b();

        /* renamed from: c */
        int mo5806c(View view);

        /* renamed from: d */
        int mo5807d();

        /* renamed from: e */
        int mo5808e(View view);
    }

    public ViewBoundsCheck(InterfaceC1373b interfaceC1373b) {
        this.f9822a = interfaceC1373b;
    }

    /* renamed from: a */
    public View m6073a(int i, int i2, int i3, int i4) {
        int mo5807d = this.f9822a.mo5807d();
        int mo5805b = this.f9822a.mo5805b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View mo5804a = this.f9822a.mo5804a(i);
            this.f9823b.m6079e(mo5807d, mo5805b, this.f9822a.mo5806c(mo5804a), this.f9822a.mo5808e(mo5804a));
            if (i3 != 0) {
                this.f9823b.m6078d();
                this.f9823b.m6075a(i3);
                if (this.f9823b.m6076b()) {
                    return mo5804a;
                }
            }
            if (i4 != 0) {
                this.f9823b.m6078d();
                this.f9823b.m6075a(i4);
                if (this.f9823b.m6076b()) {
                    view = mo5804a;
                }
            }
            i += i5;
        }
        return view;
    }

    /* renamed from: b */
    public boolean m6074b(View view, int i) {
        this.f9823b.m6079e(this.f9822a.mo5807d(), this.f9822a.mo5805b(), this.f9822a.mo5806c(view), this.f9822a.mo5808e(view));
        if (i == 0) {
            return false;
        }
        this.f9823b.m6078d();
        this.f9823b.m6075a(i);
        return this.f9823b.m6076b();
    }
}
