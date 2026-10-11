package com.sunia.HTREnginev2;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.IOException;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public final class z2e {
    /* renamed from: a */
    public static ColorStateList m58603a(Context context, int i) {
        int next;
        ColorStateList colorStateList = null;
        if (i <= 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 >= 28 && i2 <= 31) {
            return ColorStateList.valueOf(ThemeUtils.m36252k(context, typedValue.resourceId));
        }
        String charSequence = typedValue.string.toString();
        try {
            if (charSequence.endsWith("xml")) {
                XmlResourceParser openXmlResourceParser = context.getResources().getAssets().openXmlResourceParser(typedValue.assetCookie, charSequence);
                AttributeSet asAttributeSet = Xml.asAttributeSet(openXmlResourceParser);
                do {
                    next = openXmlResourceParser.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                colorStateList = m58604b(context, openXmlResourceParser, asAttributeSet);
                openXmlResourceParser.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
        return colorStateList;
    }

    /* renamed from: b */
    public static ColorStateList m58604b(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals(IStyleSheet.CLASS_SELECTOR)) {
            return m58606d(context, xmlPullParser, attributeSet);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* renamed from: c */
    public static int[] m58605c(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource != 0 && attributeNameResource != 16843173 && attributeNameResource != 16843551) {
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

    /* renamed from: d */
    public static ColorStateList m58606d(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException {
        int i;
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.color});
                int resourceId = obtainStyledAttributes.getResourceId(0, -65281);
                int m36252k = resourceId != -65281 ? ThemeUtils.m36252k(context, resourceId) : -65281;
                obtainStyledAttributes.recycle();
                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.alpha});
                float f = obtainStyledAttributes2.getFloat(0, 1.0f);
                obtainStyledAttributes2.recycle();
                if (f != 1.0f) {
                    m36252k = ColorUtils.setAlphaComponent(m36252k, Math.round(Color.alpha(m36252k) * f));
                }
                linkedList2.add(Integer.valueOf(m36252k));
                linkedList.add(m58605c(attributeSet));
            }
        }
        if (linkedList.size() <= 0 || linkedList.size() != linkedList2.size()) {
            return null;
        }
        int[] iArr = new int[linkedList2.size()];
        for (i = 0; i < linkedList2.size(); i++) {
            iArr[i] = ((Integer) linkedList2.get(i)).intValue();
        }
        return new ColorStateList((int[][]) linkedList.toArray(new int[linkedList.size()]), iArr);
    }
}
