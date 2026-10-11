package androidx.core.text;

import java.nio.CharBuffer;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR = new C0745e(null, false);
    public static final TextDirectionHeuristicCompat RTL = new C0745e(null, true);

    /* renamed from: a */
    public static final int f5685a = 0;

    /* renamed from: b */
    public static final int f5686b = 1;

    /* renamed from: c */
    public static final int f5687c = 2;

    /* renamed from: androidx.core.text.TextDirectionHeuristicsCompat$a */
    /* loaded from: classes3.dex */
    public static class C0741a implements InterfaceC0743c {

        /* renamed from: b */
        public static final C0741a f5688b = new C0741a(true);

        /* renamed from: a */
        public final boolean f5689a;

        public C0741a(boolean z) {
            this.f5689a = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.InterfaceC0743c
        /* renamed from: a */
        public int mo3229a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            boolean z = false;
            while (i < i3) {
                int m3227a = TextDirectionHeuristicsCompat.m3227a(Character.getDirectionality(charSequence.charAt(i)));
                if (m3227a != 0) {
                    if (m3227a != 1) {
                        continue;
                        i++;
                        z = z;
                    } else if (!this.f5689a) {
                        return 1;
                    }
                } else if (this.f5689a) {
                    return 0;
                }
                z = true;
                i++;
                z = z;
            }
            if (z) {
                return this.f5689a ? 1 : 0;
            }
            return 2;
        }
    }

    /* renamed from: androidx.core.text.TextDirectionHeuristicsCompat$b */
    /* loaded from: classes3.dex */
    public static class C0742b implements InterfaceC0743c {

        /* renamed from: a */
        public static final C0742b f5690a = new C0742b();

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.InterfaceC0743c
        /* renamed from: a */
        public int mo3229a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            int i4 = 2;
            while (i < i3 && i4 == 2) {
                i4 = TextDirectionHeuristicsCompat.m3228b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return i4;
        }
    }

    /* renamed from: androidx.core.text.TextDirectionHeuristicsCompat$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC0743c {
        /* renamed from: a */
        int mo3229a(CharSequence charSequence, int i, int i2);
    }

    /* renamed from: androidx.core.text.TextDirectionHeuristicsCompat$d */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0744d implements TextDirectionHeuristicCompat {

        /* renamed from: a */
        public final InterfaceC0743c f5691a;

        public AbstractC0744d(InterfaceC0743c interfaceC0743c) {
            this.f5691a = interfaceC0743c;
        }

        /* renamed from: a */
        public abstract boolean mo3230a();

        /* renamed from: b */
        public final boolean m3231b(CharSequence charSequence, int i, int i2) {
            int mo3229a = this.f5691a.mo3229a(charSequence, i, i2);
            if (mo3229a == 0) {
                return true;
            }
            if (mo3229a != 1) {
                return mo3230a();
            }
            return false;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(char[] cArr, int i, int i2) {
            return isRtl(CharBuffer.wrap(cArr), i, i2);
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(CharSequence charSequence, int i, int i2) {
            if (charSequence != null && i >= 0 && i2 >= 0 && charSequence.length() - i2 >= i) {
                if (this.f5691a == null) {
                    return mo3230a();
                }
                return m3231b(charSequence, i, i2);
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: androidx.core.text.TextDirectionHeuristicsCompat$e */
    /* loaded from: classes3.dex */
    public static class C0745e extends AbstractC0744d {

        /* renamed from: b */
        public final boolean f5692b;

        public C0745e(InterfaceC0743c interfaceC0743c, boolean z) {
            super(interfaceC0743c);
            this.f5692b = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.AbstractC0744d
        /* renamed from: a */
        public boolean mo3230a() {
            return this.f5692b;
        }
    }

    /* renamed from: androidx.core.text.TextDirectionHeuristicsCompat$f */
    /* loaded from: classes3.dex */
    public static class C0746f extends AbstractC0744d {

        /* renamed from: b */
        public static final C0746f f5693b = new C0746f();

        public C0746f() {
            super(null);
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.AbstractC0744d
        /* renamed from: a */
        public boolean mo3230a() {
            return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }

    static {
        C0742b c0742b = C0742b.f5690a;
        FIRSTSTRONG_LTR = new C0745e(c0742b, false);
        FIRSTSTRONG_RTL = new C0745e(c0742b, true);
        ANYRTL_LTR = new C0745e(C0741a.f5688b, false);
        LOCALE = C0746f.f5693b;
    }

    /* renamed from: a */
    public static int m3227a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    public static int m3228b(int i) {
        if (i != 0) {
            if (i == 1 || i == 2) {
                return 0;
            }
            switch (i) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
