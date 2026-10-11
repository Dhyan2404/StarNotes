package com.sunia.HTREnginev2;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes8.dex */
public class p0o implements jif {

    /* renamed from: a */
    public int f80332a;

    public p0o(int i) {
        this.f80332a = i;
    }

    /* renamed from: a */
    public final ColorStateList m56193a(Context context, AttributeSet attributeSet, int i) {
        TypedArray m36236v = DrawableUtils.m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        ColorStateList colorStateList = null;
        if (!m36236v.hasValue(0)) {
            m36236v.recycle();
            return null;
        }
        int resourceId = m36236v.getResourceId(0, 0);
        if (resourceId != 0) {
            colorStateList = TintManager.get(context).getColorStateList(resourceId);
        } else {
            int m36251j = ThemeUtils.m36251j(context, m36236v.getColor(0, 0));
            if (m36251j != 0) {
                colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{m36251j});
            }
        }
        m36236v.recycle();
        return colorStateList;
    }

    @Override // com.sunia.HTREnginev2.jif
    public Drawable inflateDrawable(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException {
        ColorStateList m56193a = m56193a(context, attributeSet, R.attr.tint);
        Drawable createFromXmlInner = this.f80332a == 0 ? Drawable.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet) : VectorDrawableCompat.create(context.getResources(), this.f80332a, context.getTheme());
        if (createFromXmlInner != null && m56193a != null) {
            DrawableCompat.setTintList(createFromXmlInner, m56193a);
        }
        return createFromXmlInner;
    }
}
