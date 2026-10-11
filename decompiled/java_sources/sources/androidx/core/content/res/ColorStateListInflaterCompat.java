package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.core.C0512R;
import androidx.core.math.MathUtils;
import com.sunia.HTREnginev2.h6h;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class ColorStateListInflaterCompat {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f5346a = new ThreadLocal<>();

    @NonNull
    /* renamed from: a */
    public static TypedValue m2855a() {
        ThreadLocal<TypedValue> threadLocal = f5346a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    /* renamed from: b */
    public static ColorStateList m2856b(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        Resources resources2 = resources;
        int i = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i2 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray m2859e = m2859e(resources2, theme, attributeSet, C0512R.styleable.ColorStateListItem);
                int resourceId = m2859e.getResourceId(C0512R.styleable.ColorStateListItem_android_color, -1);
                if (resourceId == -1 || m2857c(resources2, resourceId)) {
                    color = m2859e.getColor(C0512R.styleable.ColorStateListItem_android_color, -65281);
                } else {
                    try {
                        color = createFromXml(resources2, resources2.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception unused) {
                        color = m2859e.getColor(C0512R.styleable.ColorStateListItem_android_color, -65281);
                    }
                }
                float f = 1.0f;
                if (m2859e.hasValue(C0512R.styleable.ColorStateListItem_android_alpha)) {
                    f = m2859e.getFloat(C0512R.styleable.ColorStateListItem_android_alpha, 1.0f);
                } else if (m2859e.hasValue(C0512R.styleable.ColorStateListItem_alpha)) {
                    f = m2859e.getFloat(C0512R.styleable.ColorStateListItem_alpha, 1.0f);
                }
                float f2 = (Build.VERSION.SDK_INT < 31 || !m2859e.hasValue(C0512R.styleable.ColorStateListItem_android_lStar)) ? m2859e.getFloat(C0512R.styleable.ColorStateListItem_lStar, -1.0f) : m2859e.getFloat(C0512R.styleable.ColorStateListItem_android_lStar, -1.0f);
                m2859e.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i3 = 0;
                for (int i4 = 0; i4 < attributeCount; i4++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i4);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != C0512R.attr.alpha && attributeNameResource != C0512R.attr.lStar) {
                        int i5 = i3 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i4, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i3] = attributeNameResource;
                        i3 = i5;
                    }
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr3, i3);
                iArr2 = h6h.m54413a(iArr2, i2, m2858d(color, f, f2));
                iArr = (int[][]) h6h.m54415c(iArr, i2, trimStateSet);
                i2++;
            }
            i = 1;
            resources2 = resources;
        }
        int[] iArr4 = new int[i2];
        int[][] iArr5 = new int[i2];
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        System.arraycopy(iArr, 0, iArr5, 0, i2);
        return new ColorStateList(iArr5, iArr4);
    }

    /* renamed from: c */
    public static boolean m2857c(@NonNull Resources resources, @ColorRes int i) {
        TypedValue m2855a = m2855a();
        resources.getValue(i, m2855a, true);
        int i2 = m2855a.type;
        return i2 >= 28 && i2 <= 31;
    }

    @NonNull
    public static ColorStateList createFromXml(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    @NonNull
    public static ColorStateList createFromXmlInner(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals(IStyleSheet.CLASS_SELECTOR)) {
            return m2856b(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    @ColorInt
    /* renamed from: d */
    public static int m2858d(@ColorInt int i, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @FloatRange(from = 0.0d, m280to = 100.0d) float f2) {
        boolean z = f2 >= 0.0f && f2 <= 100.0f;
        if (f == 1.0f && !z) {
            return i;
        }
        int clamp = MathUtils.clamp((int) ((Color.alpha(i) * f) + 0.5f), 0, 255);
        if (z) {
            CamColor m2838c = CamColor.m2838c(i);
            i = CamColor.toColor(m2838c.m2847j(), m2838c.m2846i(), f2);
        }
        return (i & 16777215) | (clamp << 24);
    }

    /* renamed from: e */
    public static TypedArray m2859e(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Nullable
    public static ColorStateList inflate(@NonNull Resources resources, @XmlRes int i, @Nullable Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }
}
