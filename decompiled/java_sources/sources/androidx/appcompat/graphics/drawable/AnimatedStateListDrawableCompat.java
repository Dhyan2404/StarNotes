package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.graphics.drawable.DrawableContainerCompat;
import androidx.appcompat.graphics.drawable.StateListDrawableCompat;
import androidx.appcompat.resources.C0181R;
import androidx.appcompat.resources.Compatibility;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class AnimatedStateListDrawableCompat extends StateListDrawableCompat implements TintAwareDrawable {

    /* renamed from: Q */
    public static final String f875Q = "AnimatedStateListDrawableCompat";

    /* renamed from: Z */
    public static final String f876Z = "transition";

    /* renamed from: k0 */
    public static final String f877k0 = "item";

    /* renamed from: q0 */
    public static final String f878q0 = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable";

    /* renamed from: t0 */
    public static final String f879t0 = ": <transition> tag requires 'fromId' & 'toId' attributes";

    /* renamed from: u0 */
    public static final String f880u0 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable";

    /* renamed from: J */
    public int f881J;

    /* renamed from: O */
    public boolean f882O;

    /* renamed from: x */
    public C0171c f883x;

    /* renamed from: y */
    public AbstractC0175g f884y;

    /* renamed from: z */
    public int f885z;

    /* renamed from: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$b */
    /* loaded from: classes3.dex */
    public static class C0170b extends AbstractC0175g {

        /* renamed from: a */
        public final Animatable f886a;

        public C0170b(Animatable animatable) {
            super();
            this.f886a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: c */
        public void mo482c() {
            this.f886a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: d */
        public void mo483d() {
            this.f886a.stop();
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$c */
    /* loaded from: classes3.dex */
    public static class C0171c extends StateListDrawableCompat.C0180a {

        /* renamed from: M */
        public static final long f887M = 4294967296L;

        /* renamed from: N */
        public static final long f888N = 8589934592L;

        /* renamed from: K */
        public LongSparseArray<Long> f889K;

        /* renamed from: L */
        public SparseArrayCompat<Integer> f890L;

        public C0171c(@Nullable C0171c c0171c, @NonNull AnimatedStateListDrawableCompat animatedStateListDrawableCompat, @Nullable Resources resources) {
            super(c0171c, animatedStateListDrawableCompat, resources);
            if (c0171c != null) {
                this.f889K = c0171c.f889K;
                this.f890L = c0171c.f890L;
            } else {
                this.f889K = new LongSparseArray<>();
                this.f890L = new SparseArrayCompat<>();
            }
        }

        /* renamed from: H */
        public static long m484H(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: F */
        public int m485F(@NonNull int[] iArr, @NonNull Drawable drawable, int i) {
            int m547D = super.m547D(iArr, drawable);
            this.f890L.put(m547D, Integer.valueOf(i));
            return m547D;
        }

        /* renamed from: G */
        public int m486G(int i, int i2, @NonNull Drawable drawable, boolean z) {
            int m513a = super.m513a(drawable);
            long m484H = m484H(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = m513a;
            this.f889K.append(m484H, Long.valueOf(j2 | j));
            if (z) {
                this.f889K.append(m484H(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return m513a;
        }

        /* renamed from: I */
        public int m487I(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f890L.get(i, 0).intValue();
        }

        /* renamed from: J */
        public int m488J(@NonNull int[] iArr) {
            int m548E = super.m548E(iArr);
            return m548E >= 0 ? m548E : super.m548E(StateSet.WILD_CARD);
        }

        /* renamed from: K */
        public int m489K(int i, int i2) {
            return (int) this.f889K.get(m484H(i, i2), -1L).longValue();
        }

        /* renamed from: L */
        public boolean m490L(int i, int i2) {
            return (this.f889K.get(m484H(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        /* renamed from: M */
        public boolean m491M(int i, int i2) {
            return (this.f889K.get(m484H(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.C0180a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.C0180a, androidx.appcompat.graphics.drawable.DrawableContainerCompat.AbstractC0179d
        /* renamed from: v */
        public void mo492v() {
            this.f889K = this.f889K.m72115clone();
            this.f890L = this.f890L.m72116clone();
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.C0180a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$d */
    /* loaded from: classes3.dex */
    public static class C0172d extends AbstractC0175g {

        /* renamed from: a */
        public final AnimatedVectorDrawableCompat f891a;

        public C0172d(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            super();
            this.f891a = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: c */
        public void mo482c() {
            this.f891a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: d */
        public void mo483d() {
            this.f891a.stop();
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$e */
    /* loaded from: classes3.dex */
    public static class C0173e extends AbstractC0175g {

        /* renamed from: a */
        public final ObjectAnimator f892a;

        /* renamed from: b */
        public final boolean f893b;

        public C0173e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C0174f c0174f = new C0174f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            ofInt.setAutoCancel(true);
            ofInt.setDuration(c0174f.m495a());
            ofInt.setInterpolator(c0174f);
            this.f893b = z2;
            this.f892a = ofInt;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: a */
        public boolean mo493a() {
            return this.f893b;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: b */
        public void mo494b() {
            this.f892a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: c */
        public void mo482c() {
            this.f892a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.AbstractC0175g
        /* renamed from: d */
        public void mo483d() {
            this.f892a.cancel();
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$f */
    /* loaded from: classes3.dex */
    public static class C0174f implements TimeInterpolator {

        /* renamed from: a */
        public int[] f894a;

        /* renamed from: b */
        public int f895b;

        /* renamed from: c */
        public int f896c;

        public C0174f(AnimationDrawable animationDrawable, boolean z) {
            m496b(animationDrawable, z);
        }

        /* renamed from: a */
        public int m495a() {
            return this.f896c;
        }

        /* renamed from: b */
        public int m496b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f895b = numberOfFrames;
            int[] iArr = this.f894a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f894a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f894a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f896c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f896c) + 0.5f);
            int i2 = this.f895b;
            int[] iArr = this.f894a;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f896c : 0.0f);
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$g */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0175g {
        public AbstractC0175g() {
        }

        /* renamed from: a */
        public boolean mo493a() {
            return false;
        }

        /* renamed from: b */
        public void mo494b() {
        }

        /* renamed from: c */
        public abstract void mo482c();

        /* renamed from: d */
        public abstract void mo483d();
    }

    public AnimatedStateListDrawableCompat() {
        this(null, null);
    }

    @Nullable
    public static AnimatedStateListDrawableCompat create(@NonNull Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        int next;
        try {
            Resources resources = context.getResources();
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return createFromXmlInner(context, resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e) {
            Log.e(f875Q, "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e(f875Q, "parser error", e2);
            return null;
        }
    }

    @NonNull
    public static AnimatedStateListDrawableCompat createFromXmlInner(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            AnimatedStateListDrawableCompat animatedStateListDrawableCompat = new AnimatedStateListDrawableCompat();
            animatedStateListDrawableCompat.inflate(context, resources, xmlPullParser, attributeSet, theme);
            return animatedStateListDrawableCompat;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    /* renamed from: s */
    private void m471s(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals("item")) {
                    m479w(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals(f876Z)) {
                    m480x(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    /* renamed from: t */
    private void m472t(TypedArray typedArray) {
        C0171c c0171c = this.f883x;
        c0171c.f926d |= Compatibility.Api21Impl.getChangingConfigurations(typedArray);
        c0171c.m511B(typedArray.getBoolean(C0181R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, c0171c.f931i));
        c0171c.m535x(typedArray.getBoolean(C0181R.styleable.AnimatedStateListDrawableCompat_android_constantSize, c0171c.f934l));
        c0171c.m536y(typedArray.getInt(C0181R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, c0171c.f914A));
        c0171c.m537z(typedArray.getInt(C0181R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, c0171c.f915B));
        setDither(typedArray.getBoolean(C0181R.styleable.AnimatedStateListDrawableCompat_android_dither, c0171c.f946x));
    }

    public void addState(@NonNull int[] iArr, @NonNull Drawable drawable, int i) {
        ObjectsCompat.requireNonNull(drawable);
        this.f883x.m485F(iArr, drawable, i);
        onStateChange(getState());
    }

    public <T extends Drawable & Animatable> void addTransition(int i, int i2, @NonNull T t, boolean z) {
        ObjectsCompat.requireNonNull(t);
        this.f883x.m486G(i, i2, t, z);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    /* renamed from: b */
    public void mo473b() {
        super.mo473b();
        this.f882O = false;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    /* renamed from: i */
    public void mo475i(@NonNull DrawableContainerCompat.AbstractC0179d abstractC0179d) {
        super.mo475i(abstractC0179d);
        if (abstractC0179d instanceof C0171c) {
            this.f883x = (C0171c) abstractC0179d;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat
    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0181R.styleable.AnimatedStateListDrawableCompat);
        setVisible(obtainAttributes.getBoolean(C0181R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        m472t(obtainAttributes);
        m504k(resources);
        obtainAttributes.recycle();
        m471s(context, resources, xmlPullParser, attributeSet, theme);
        m478v();
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC0175g abstractC0175g = this.f884y;
        if (abstractC0175g != null) {
            abstractC0175g.mo483d();
            this.f884y = null;
            m502h(this.f885z);
            this.f885z = -1;
            this.f881J = -1;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f882O && super.mutate() == this) {
            this.f883x.mo492v();
            this.f882O = true;
        }
        return this;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        int m488J = this.f883x.m488J(iArr);
        boolean z = m488J != m499d() && (m481y(m488J) || m502h(m488J));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        AbstractC0175g abstractC0175g = this.f884y;
        if (abstractC0175g != null && (visible || z2)) {
            if (z) {
                abstractC0175g.mo482c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat
    /* renamed from: u, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public C0171c mo476l() {
        return new C0171c(this.f883x, this, null);
    }

    /* renamed from: v */
    public final void m478v() {
        onStateChange(getState());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r5 != 2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
    
        if (r7.getName().equals("vector") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
    
        r5 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        r5 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r6, r7, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0064, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.f880u0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
    
        if (r5 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
    
        return r4.f883x.m485F(r0, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r7.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.f880u0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
    
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        r5 = r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
    
        if (r5 != 4) goto L24;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m479w(@androidx.annotation.NonNull android.content.Context r5, @androidx.annotation.NonNull android.content.res.Resources r6, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r7, @androidx.annotation.NonNull android.util.AttributeSet r8, @androidx.annotation.Nullable android.content.res.Resources.Theme r9) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r4 = this;
            int[] r0 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableItem
            android.content.res.TypedArray r0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r6, r9, r8, r0)
            int r1 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableItem_android_id
            r2 = 0
            int r1 = r0.getResourceId(r1, r2)
            int r2 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableItem_android_drawable
            r3 = -1
            int r2 = r0.getResourceId(r2, r3)
            if (r2 <= 0) goto L1f
            androidx.appcompat.widget.ResourceManagerInternal r3 = androidx.appcompat.widget.ResourceManagerInternal.get()
            android.graphics.drawable.Drawable r5 = r3.getDrawable(r5, r2)
            goto L20
        L1f:
            r5 = 0
        L20:
            r0.recycle()
            int[] r0 = r4.m539m(r8)
            java.lang.String r2 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r5 != 0) goto L65
        L2b:
            int r5 = r7.next()
            r3 = 4
            if (r5 != r3) goto L33
            goto L2b
        L33:
            r3 = 2
            if (r5 != r3) goto L4c
            java.lang.String r5 = r7.getName()
            java.lang.String r3 = "vector"
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L47
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat r5 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.createFromXmlInner(r6, r7, r8, r9)
            goto L65
        L47:
            android.graphics.drawable.Drawable r5 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r6, r7, r8, r9)
            goto L65
        L4c:
            org.xmlpull.v1.XmlPullParserException r4 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r7.getPositionDescription()
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L65:
            if (r5 == 0) goto L6e
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$c r4 = r4.f883x
            int r4 = r4.m485F(r0, r5, r1)
            return r4
        L6e:
            org.xmlpull.v1.XmlPullParserException r4 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r7.getPositionDescription()
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.m479w(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if (r4 != 2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r10.getName().equals(androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.f10807n) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        r4 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.createFromXmlInner(r8, r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
    
        r4 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006c, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.f878q0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006d, code lost:
    
        if (r4 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
    
        if (r1 == (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0071, code lost:
    
        if (r3 == (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0079, code lost:
    
        return r7.f883x.m486G(r1, r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.f879t0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.f878q0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
    
        if (r4 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
    
        r4 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
    
        if (r4 != 4) goto L28;
     */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m480x(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.NonNull android.content.res.Resources r9, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r10, @androidx.annotation.NonNull android.util.AttributeSet r11, @androidx.annotation.Nullable android.content.res.Resources.Theme r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r7 = this;
            int[] r0 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableTransition
            android.content.res.TypedArray r0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r9, r12, r11, r0)
            int r1 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableTransition_android_fromId
            r2 = -1
            int r1 = r0.getResourceId(r1, r2)
            int r3 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableTransition_android_toId
            int r3 = r0.getResourceId(r3, r2)
            int r4 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableTransition_android_drawable
            int r4 = r0.getResourceId(r4, r2)
            if (r4 <= 0) goto L24
            androidx.appcompat.widget.ResourceManagerInternal r5 = androidx.appcompat.widget.ResourceManagerInternal.get()
            android.graphics.drawable.Drawable r4 = r5.getDrawable(r8, r4)
            goto L25
        L24:
            r4 = 0
        L25:
            int r5 = androidx.appcompat.resources.C0181R.styleable.AnimatedStateListDrawableTransition_android_reversible
            r6 = 0
            boolean r5 = r0.getBoolean(r5, r6)
            r0.recycle()
            java.lang.String r0 = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable"
            if (r4 != 0) goto L6d
        L33:
            int r4 = r10.next()
            r6 = 4
            if (r4 != r6) goto L3b
            goto L33
        L3b:
            r6 = 2
            if (r4 != r6) goto L54
            java.lang.String r4 = r10.getName()
            java.lang.String r6 = "animated-vector"
            boolean r4 = r4.equals(r6)
            if (r4 == 0) goto L4f
            androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat r4 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.createFromXmlInner(r8, r9, r10, r11, r12)
            goto L6d
        L4f:
            android.graphics.drawable.Drawable r4 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r9, r10, r11, r12)
            goto L6d
        L54:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            r8.append(r9)
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L6d:
            if (r4 == 0) goto L95
            if (r1 == r2) goto L7a
            if (r3 == r2) goto L7a
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$c r7 = r7.f883x
            int r7 = r7.m486G(r1, r3, r4, r5)
            return r7
        L7a:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            r8.append(r9)
            java.lang.String r9 = ": <transition> tag requires 'fromId' & 'toId' attributes"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L95:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            r8.append(r9)
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.m480x(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):int");
    }

    /* renamed from: y */
    public final boolean m481y(int i) {
        int m499d;
        int m489K;
        AbstractC0175g c0170b;
        AbstractC0175g abstractC0175g = this.f884y;
        if (abstractC0175g == null) {
            m499d = m499d();
        } else {
            if (i == this.f885z) {
                return true;
            }
            if (i == this.f881J && abstractC0175g.mo493a()) {
                abstractC0175g.mo494b();
                this.f885z = this.f881J;
                this.f881J = i;
                return true;
            }
            m499d = this.f885z;
            abstractC0175g.mo483d();
        }
        this.f884y = null;
        this.f881J = -1;
        this.f885z = -1;
        C0171c c0171c = this.f883x;
        int m487I = c0171c.m487I(m499d);
        int m487I2 = c0171c.m487I(i);
        if (m487I2 == 0 || m487I == 0 || (m489K = c0171c.m489K(m487I, m487I2)) < 0) {
            return false;
        }
        boolean m491M = c0171c.m491M(m487I, m487I2);
        m502h(m489K);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            c0170b = new C0173e((AnimationDrawable) current, c0171c.m490L(m487I, m487I2), m491M);
        } else {
            if (!(current instanceof AnimatedVectorDrawableCompat)) {
                if (current instanceof Animatable) {
                    c0170b = new C0170b((Animatable) current);
                }
                return false;
            }
            c0170b = new C0172d((AnimatedVectorDrawableCompat) current);
        }
        c0170b.mo482c();
        this.f884y = c0170b;
        this.f881J = m499d;
        this.f885z = i;
        return true;
    }

    public AnimatedStateListDrawableCompat(@Nullable C0171c c0171c, @Nullable Resources resources) {
        super(null);
        this.f885z = -1;
        this.f881J = -1;
        mo475i(new C0171c(c0171c, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }
}
