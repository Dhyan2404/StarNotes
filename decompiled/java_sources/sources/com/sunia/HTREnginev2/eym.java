package com.sunia.HTREnginev2;

import android.R;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.drawables.FilterableStateListDrawable;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes8.dex */
public class eym implements jif {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.graphics.drawable.StateListDrawable] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.onyx.android.sdk.theme.drawables.FilterableStateListDrawable] */
    @Override // com.sunia.HTREnginev2.jif
    public Drawable inflateDrawable(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException {
        int depth;
        int next;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int depth2 = xmlPullParser.getDepth() + 1;
        ?? r3 = 0;
        SparseArray sparseArray = null;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                Drawable m36228n = DrawableUtils.m36228n(context, attributeSet, R.attr.drawable);
                arrayList.add(DrawableUtils.m36218d(attributeSet));
                if (m36228n != null) {
                    ColorFilter m36221g = DrawableUtils.m36221g(context, attributeSet, C7996R.attr.drawableTint, C7996R.attr.tintDrawableTintMode);
                    if (m36221g != null) {
                        if (sparseArray == null) {
                            sparseArray = new SparseArray();
                        }
                        sparseArray.put(arrayList2.size(), m36221g);
                    }
                    arrayList2.add(m36228n);
                }
                do {
                    next = xmlPullParser.next();
                } while (next == 4);
                if (next != 2) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + AnimatedStateListDrawableCompat.f880u0);
                }
                m36228n = DrawableUtils.m36216b(context, xmlPullParser, attributeSet);
                arrayList2.add(m36228n);
            }
        }
        if (arrayList.size() >= 1) {
            int i = 0;
            if (sparseArray != null) {
                r3 = new FilterableStateListDrawable();
                while (i < arrayList.size()) {
                    r3.addState((int[]) arrayList.get(i), (Drawable) arrayList2.get(i), (ColorFilter) sparseArray.get(i));
                    i++;
                }
            } else {
                r3 = new StateListDrawable();
                while (i < arrayList.size()) {
                    r3.addState((int[]) arrayList.get(i), (Drawable) arrayList2.get(i));
                    i++;
                }
            }
        }
        return r3;
    }
}
