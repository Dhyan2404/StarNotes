package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.DrawableContainerCompat;
import androidx.appcompat.resources.C0181R;
import androidx.appcompat.resources.Compatibility;
import androidx.core.content.res.TypedArrayUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class StateListDrawableCompat extends DrawableContainerCompat {

    /* renamed from: v */
    public static final String f963v = "StateListDrawableCompat";

    /* renamed from: w */
    public static final boolean f964w = false;

    /* renamed from: t */
    public C0180a f965t;

    /* renamed from: u */
    public boolean f966u;

    /* renamed from: androidx.appcompat.graphics.drawable.StateListDrawableCompat$a */
    /* loaded from: classes3.dex */
    public static class C0180a extends DrawableContainerCompat.AbstractC0179d {

        /* renamed from: J */
        public int[][] f967J;

        public C0180a(C0180a c0180a, StateListDrawableCompat stateListDrawableCompat, Resources resources) {
            super(c0180a, stateListDrawableCompat, resources);
            if (c0180a != null) {
                this.f967J = c0180a.f967J;
            } else {
                this.f967J = new int[m519g()];
            }
        }

        /* renamed from: D */
        public int m547D(int[] iArr, Drawable drawable) {
            int m513a = m513a(drawable);
            this.f967J[m513a] = iArr;
            return m513a;
        }

        /* renamed from: E */
        public int m548E(int[] iArr) {
            int[][] iArr2 = this.f967J;
            int m521i = m521i();
            for (int i = 0; i < m521i; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new StateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat.AbstractC0179d
        /* renamed from: r */
        public void mo530r(int i, int i2) {
            super.mo530r(i, i2);
            int[][] iArr = new int[i2];
            System.arraycopy(this.f967J, 0, iArr, 0, i);
            this.f967J = iArr;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat.AbstractC0179d
        /* renamed from: v */
        public void mo492v() {
            int[][] iArr = this.f967J;
            int[][] iArr2 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[] iArr3 = this.f967J[length];
                iArr2[length] = iArr3 != null ? (int[]) iArr3.clone() : null;
            }
            this.f967J = iArr2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new StateListDrawableCompat(this, resources);
        }
    }

    public StateListDrawableCompat() {
        this(null, null);
    }

    public void addState(int[] iArr, Drawable drawable) {
        if (drawable != null) {
            this.f965t.m547D(iArr, drawable);
            onStateChange(getState());
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    /* renamed from: b */
    public void mo473b() {
        super.mo473b();
        this.f966u = false;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    /* renamed from: i */
    public void mo475i(@NonNull DrawableContainerCompat.AbstractC0179d abstractC0179d) {
        super.mo475i(abstractC0179d);
        if (abstractC0179d instanceof C0180a) {
            this.f965t = (C0180a) abstractC0179d;
        }
    }

    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0181R.styleable.StateListDrawable);
        setVisible(obtainAttributes.getBoolean(C0181R.styleable.StateListDrawable_android_visible, true), true);
        m546t(obtainAttributes);
        m504k(resources);
        obtainAttributes.recycle();
        m545s(context, resources, xmlPullParser, attributeSet, theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    /* renamed from: l */
    public C0180a mo476l() {
        return new C0180a(this.f965t, this, null);
    }

    /* renamed from: m */
    public int[] m539m(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i3 = i + 1;
                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i] = attributeNameResource;
                i = i3;
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f966u && super.mutate() == this) {
            this.f965t.mo492v();
            this.f966u = true;
        }
        return this;
    }

    /* renamed from: n */
    int m540n() {
        return this.f965t.m521i();
    }

    /* renamed from: o */
    Drawable m541o(int i) {
        return this.f965t.m520h(i);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m548E = this.f965t.m548E(iArr);
        if (m548E < 0) {
            m548E = this.f965t.m548E(StateSet.WILD_CARD);
        }
        return m502h(m548E) || onStateChange;
    }

    /* renamed from: p */
    public int m542p(int[] iArr) {
        return this.f965t.m548E(iArr);
    }

    /* renamed from: q */
    public C0180a m543q() {
        return this.f965t;
    }

    /* renamed from: r */
    int[] m544r(int i) {
        return this.f965t.f967J[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004a, code lost:
    
        if (r4 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        r4 = r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        if (r4 != 4) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
    
        if (r4 != 2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
    
        r4 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r9, r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0075, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.f880u0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
    
        r0.m547D(r3, r4);
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m545s(android.content.Context r8, android.content.res.Resources r9, org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.content.res.Resources.Theme r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r7 = this;
            androidx.appcompat.graphics.drawable.StateListDrawableCompat$a r0 = r7.f965t
            int r1 = r10.getDepth()
            r2 = 1
            int r1 = r1 + r2
        L8:
            int r3 = r10.next()
            if (r3 == r2) goto L7a
            int r4 = r10.getDepth()
            if (r4 >= r1) goto L17
            r5 = 3
            if (r3 == r5) goto L7a
        L17:
            r5 = 2
            if (r3 == r5) goto L1b
            goto L8
        L1b:
            if (r4 > r1) goto L8
            java.lang.String r3 = r10.getName()
            java.lang.String r4 = "item"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L2a
            goto L8
        L2a:
            int[] r3 = androidx.appcompat.resources.C0181R.styleable.StateListDrawableItem
            android.content.res.TypedArray r3 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r9, r12, r11, r3)
            int r4 = androidx.appcompat.resources.C0181R.styleable.StateListDrawableItem_android_drawable
            r6 = -1
            int r4 = r3.getResourceId(r4, r6)
            if (r4 <= 0) goto L42
            androidx.appcompat.widget.ResourceManagerInternal r6 = androidx.appcompat.widget.ResourceManagerInternal.get()
            android.graphics.drawable.Drawable r4 = r6.getDrawable(r8, r4)
            goto L43
        L42:
            r4 = 0
        L43:
            r3.recycle()
            int[] r3 = r7.m539m(r11)
            if (r4 != 0) goto L76
        L4c:
            int r4 = r10.next()
            r6 = 4
            if (r4 != r6) goto L54
            goto L4c
        L54:
            if (r4 != r5) goto L5b
            android.graphics.drawable.Drawable r4 = androidx.appcompat.resources.Compatibility.Api21Impl.createFromXmlInner(r9, r10, r11, r12)
            goto L76
        L5b:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = r10.getPositionDescription()
            r8.append(r9)
            java.lang.String r9 = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L76:
            r0.m547D(r3, r4)
            goto L8
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.StateListDrawableCompat.m545s(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    /* renamed from: t */
    public final void m546t(TypedArray typedArray) {
        C0180a c0180a = this.f965t;
        c0180a.f926d |= Compatibility.Api21Impl.getChangingConfigurations(typedArray);
        c0180a.f931i = typedArray.getBoolean(C0181R.styleable.StateListDrawable_android_variablePadding, c0180a.f931i);
        c0180a.f934l = typedArray.getBoolean(C0181R.styleable.StateListDrawable_android_constantSize, c0180a.f934l);
        c0180a.f914A = typedArray.getInt(C0181R.styleable.StateListDrawable_android_enterFadeDuration, c0180a.f914A);
        c0180a.f915B = typedArray.getInt(C0181R.styleable.StateListDrawable_android_exitFadeDuration, c0180a.f915B);
        c0180a.f946x = typedArray.getBoolean(C0181R.styleable.StateListDrawable_android_dither, c0180a.f946x);
    }

    public StateListDrawableCompat(C0180a c0180a, Resources resources) {
        mo475i(new C0180a(c0180a, this, resources));
        onStateChange(getState());
    }

    public StateListDrawableCompat(@Nullable C0180a c0180a) {
        if (c0180a != null) {
            mo475i(c0180a);
        }
    }
}
