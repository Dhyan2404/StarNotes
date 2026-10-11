package androidx.constraintlayout.core.widgets;

/* loaded from: classes3.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x */
    public int f3362x;

    /* renamed from: y */
    public int f3363y;

    /* renamed from: a */
    public void m1639a(int i, int i2) {
        this.f3362x -= i;
        this.f3363y -= i2;
        this.width += i * 2;
        this.height += i2 * 2;
    }

    /* renamed from: b */
    public boolean m1640b(Rectangle rectangle) {
        int i;
        int i2;
        int i3 = this.f3362x;
        int i4 = rectangle.f3362x;
        return i3 >= i4 && i3 < i4 + rectangle.width && (i = this.f3363y) >= (i2 = rectangle.f3363y) && i < i2 + rectangle.height;
    }

    public boolean contains(int i, int i2) {
        int i3;
        int i4 = this.f3362x;
        return i >= i4 && i < i4 + this.width && i2 >= (i3 = this.f3363y) && i2 < i3 + this.height;
    }

    public int getCenterX() {
        return (this.f3362x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f3363y + this.height) / 2;
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        this.f3362x = i;
        this.f3363y = i2;
        this.width = i3;
        this.height = i4;
    }
}
