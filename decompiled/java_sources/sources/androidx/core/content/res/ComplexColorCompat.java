package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.u4h;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class ComplexColorCompat {

    /* renamed from: d */
    public static final String f5347d = "ComplexColorCompat";

    /* renamed from: a */
    public final Shader f5348a;

    /* renamed from: b */
    public final ColorStateList f5349b;

    /* renamed from: c */
    public int f5350c;

    public ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i) {
        this.f5348a = shader;
        this.f5349b = colorStateList;
        this.f5350c = i;
    }

    @NonNull
    /* renamed from: a */
    public static ComplexColorCompat m2860a(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        int next;
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
        String name = xml.getName();
        name.hashCode();
        if (name.equals("gradient")) {
            return m2863d(u4h.m57535c(resources, xml, asAttributeSet, theme));
        }
        if (name.equals(IStyleSheet.CLASS_SELECTOR)) {
            return m2862c(ColorStateListInflaterCompat.createFromXmlInner(resources, xml, asAttributeSet, theme));
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
    }

    /* renamed from: b */
    public static ComplexColorCompat m2861b(@ColorInt int i) {
        return new ComplexColorCompat(null, null, i);
    }

    /* renamed from: c */
    public static ComplexColorCompat m2862c(@NonNull ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: d */
    public static ComplexColorCompat m2863d(@NonNull Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    @Nullable
    public static ComplexColorCompat inflate(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
        try {
            return m2860a(resources, i, theme);
        } catch (Exception e) {
            Log.e(f5347d, "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    @ColorInt
    public int getColor() {
        return this.f5350c;
    }

    @Nullable
    public Shader getShader() {
        return this.f5348a;
    }

    public boolean isGradient() {
        return this.f5348a != null;
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return this.f5348a == null && (colorStateList = this.f5349b) != null && colorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        if (isStateful()) {
            ColorStateList colorStateList = this.f5349b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f5350c) {
                this.f5350c = colorForState;
                return true;
            }
        }
        return false;
    }

    public void setColor(@ColorInt int i) {
        this.f5350c = i;
    }

    public boolean willDraw() {
        return isGradient() || this.f5350c != 0;
    }
}
