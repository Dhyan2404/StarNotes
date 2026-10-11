package com.onyx.android.sdk.theme.utils;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.RestrictTo;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.skin.C7996R;
import com.sunia.HTREnginev2.eym;
import com.sunia.HTREnginev2.jif;
import com.sunia.HTREnginev2.p0o;
import com.sunia.HTREnginev2.qvi;
import com.sunia.HTREnginev2.v4h;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public final class DrawableUtils {
    /* renamed from: a */
    public static Drawable m36215a(Context context, int i) {
        int next;
        if (i <= 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 >= 28 && i2 <= 31) {
            return new ColorDrawable(ThemeUtils.m36252k(context, i));
        }
        try {
            CharSequence charSequence = typedValue.string;
            if (charSequence == null || !charSequence.toString().endsWith("xml")) {
                return null;
            }
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            Drawable m36217c = m36217c(context, xml, asAttributeSet, i);
            xml.close();
            return m36217c;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static Drawable m36216b(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException {
        return m36217c(context, xmlPullParser, attributeSet, 0);
    }

    /* renamed from: c */
    public static Drawable m36217c(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i) throws IOException, XmlPullParserException {
        char c;
        String name = xmlPullParser.getName();
        try {
            switch (name.hashCode()) {
                case -930826704:
                    if (name.equals("ripple")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -820387517:
                    if (name.equals("vector")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -94197862:
                    if (name.equals("layer-list")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 109399969:
                    if (name.equals("shape")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1191572447:
                    if (name.equals(IStyleSheet.CLASS_SELECTOR)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
        } catch (Exception e) {
            LogUtils.eTag(DrawableUtils.class.getName(), "createFromXmlInner exception: resId:" + i + " \n parser type:" + name + " \n" + e.getMessage());
        }
        jif p0oVar = c != 0 ? c != 1 ? c != 2 ? c != 3 ? c != 4 ? null : new p0o(i) : new RippleDrawableInflateImpl() : new qvi() : new v4h() : new eym();
        if (p0oVar == null) {
            return null;
        }
        return p0oVar.inflateDrawable(context, xmlPullParser, attributeSet);
    }

    /* renamed from: d */
    public static int[] m36218d(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource == 0) {
                break;
            }
            if (attributeNameResource != 16843161 && attributeNameResource != 16842960 && attributeNameResource != C7996R.attr.drawableTint && attributeNameResource != C7996R.attr.tintDrawableTintMode) {
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

    /* renamed from: e */
    public static boolean m36219e(Context context, AttributeSet attributeSet, int i, boolean z) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        boolean z2 = m36236v.getBoolean(0, z);
        m36236v.recycle();
        return z2;
    }

    /* renamed from: f */
    public static int m36220f(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int resourceId = m36236v.getResourceId(0, 0);
        int m36252k = resourceId != 0 ? ThemeUtils.m36252k(context, resourceId) : ThemeUtils.m36251j(context, m36236v.getColor(0, i2));
        m36236v.recycle();
        return m36252k;
    }

    /* renamed from: g */
    public static ColorFilter m36221g(Context context, AttributeSet attributeSet, int i, int i2) {
        int m36220f = m36220f(context, attributeSet, i, 0);
        if (m36220f == 0) {
            return null;
        }
        return new PorterDuffColorFilter(m36220f, m36235u(context, attributeSet, i2));
    }

    /* renamed from: h */
    public static float m36222h(Context context, AttributeSet attributeSet, int i) {
        return m36223i(context, attributeSet, i, 0);
    }

    /* renamed from: i */
    public static float m36223i(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        float dimension = m36236v.getDimension(0, i2);
        m36236v.recycle();
        return dimension;
    }

    /* renamed from: j */
    public static int m36224j(Context context, AttributeSet attributeSet, int i) {
        return m36225k(context, attributeSet, i, 0);
    }

    /* renamed from: k */
    public static int m36225k(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int dimensionPixelOffset = m36236v.getDimensionPixelOffset(0, i2);
        m36236v.recycle();
        return dimensionPixelOffset;
    }

    /* renamed from: l */
    public static int m36226l(Context context, AttributeSet attributeSet, int i) {
        return m36227m(context, attributeSet, i, 0);
    }

    /* renamed from: m */
    public static int m36227m(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int dimensionPixelSize = m36236v.getDimensionPixelSize(0, i2);
        m36236v.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: n */
    public static Drawable m36228n(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int resourceId = m36236v.getResourceId(0, 0);
        if (resourceId != 0) {
            drawable = m36215a(context, resourceId);
            if (drawable == null) {
                drawable = m36236v.getDrawable(0);
            }
        } else {
            drawable = null;
        }
        m36236v.recycle();
        return drawable;
    }

    /* renamed from: o */
    public static float m36229o(Context context, AttributeSet attributeSet, int i, float f) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        float f2 = m36236v.getFloat(0, f);
        m36236v.recycle();
        return f2;
    }

    /* renamed from: p */
    public static boolean m36230p(Context context, AttributeSet attributeSet, int i) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        boolean hasValue = m36236v.hasValue(0);
        m36236v.recycle();
        return hasValue;
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.valueOf("ADD");
            default:
                return mode;
        }
    }

    /* renamed from: q */
    public static int m36231q(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int i3 = m36236v.getInt(0, i2);
        m36236v.recycle();
        return i3;
    }

    /* renamed from: r */
    public static int m36232r(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int resourceId = m36236v.getResourceId(0, i2);
        m36236v.recycle();
        return resourceId;
    }

    /* renamed from: s */
    public static int m36233s(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int m36251j = ThemeUtils.m36251j(context, m36236v.getColor(0, i2));
        m36236v.recycle();
        return m36251j;
    }

    /* renamed from: t */
    public static ColorStateList m36234t(Context context, AttributeSet attributeSet, int i) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        if (!m36236v.hasValue(0)) {
            m36236v.recycle();
            return null;
        }
        ColorStateList colorStateList = TintManager.get(context).getColorStateList(m36236v.getResourceId(0, 0));
        m36236v.recycle();
        return colorStateList;
    }

    /* renamed from: u */
    public static PorterDuff.Mode m36235u(Context context, AttributeSet attributeSet, int i) {
        TypedArray m36236v = m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        int i2 = m36236v.getInt(0, 0);
        m36236v.recycle();
        return parseTintMode(i2, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: v */
    public static TypedArray m36236v(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
