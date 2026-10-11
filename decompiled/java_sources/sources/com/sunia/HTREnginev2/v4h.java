package com.sunia.HTREnginev2;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.graphics.ColorUtils;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import java.io.IOException;
import java.lang.reflect.Field;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes8.dex */
public class v4h implements jif {

    /* renamed from: a */
    public static Field f87125a;

    /* renamed from: b */
    public static Field f87126b;

    /* renamed from: c */
    public static Field f87127c;

    /* renamed from: d */
    public static Field f87128d;

    /* renamed from: a */
    public GradientDrawable.Orientation m57731a(int i) {
        int i2 = (i + 360) % 360;
        return i2 != 0 ? i2 != 45 ? i2 != 90 ? i2 != 135 ? i2 != 180 ? i2 != 225 ? i2 != 270 ? i2 != 315 ? GradientDrawable.Orientation.RIGHT_LEFT : GradientDrawable.Orientation.TL_BR : GradientDrawable.Orientation.TOP_BOTTOM : GradientDrawable.Orientation.TR_BL : GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.BR_TL : GradientDrawable.Orientation.BOTTOM_TOP : GradientDrawable.Orientation.BL_TR : GradientDrawable.Orientation.RIGHT_LEFT;
    }

    /* renamed from: b */
    public int m57732b(int i, float f) {
        return f != 1.0f ? ColorUtils.setAlphaComponent(i, Math.round(Color.alpha(i) * f)) : i;
    }

    /* renamed from: c */
    public float m57733c(Context context, AttributeSet attributeSet, int i, float f, float f2, float f3) {
        TypedArray m36236v = DrawableUtils.m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{i});
        TypedValue peekValue = m36236v.peekValue(0);
        if (peekValue != null) {
            f = peekValue.type == 6 ? peekValue.getFraction(f2, f3) : peekValue.getFloat();
        }
        m36236v.recycle();
        return f;
    }

    /* renamed from: d */
    public void m57734d(Context context, AttributeSet attributeSet, GradientDrawable gradientDrawable) {
        gradientDrawable.setShape(DrawableUtils.m36231q(context, attributeSet, R.attr.shape, 0));
        gradientDrawable.setDither(DrawableUtils.m36219e(context, attributeSet, R.attr.dither, false));
    }

    /* renamed from: e */
    public void m57735e(GradientDrawable gradientDrawable, int i) {
        gradientDrawable.setOrientation(m57731a(i));
    }

    /* renamed from: f */
    public void m57736f(Context context, AttributeSet attributeSet, GradientDrawable gradientDrawable, int i) throws XmlPullParserException {
        TypedArray m36236v = DrawableUtils.m36236v(context.getResources(), context.getTheme(), attributeSet, new int[]{R.attr.gradientRadius});
        TypedValue peekValue = m36236v.peekValue(0);
        if (peekValue != null) {
            gradientDrawable.setGradientRadius(peekValue.getFloat());
        } else if (i == 1) {
            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
        }
        m36236v.recycle();
    }

    /* renamed from: g */
    public void m57737g(Drawable.ConstantState constantState, float... fArr) {
        try {
            if (f87127c == null) {
                Field declaredField = Class.forName("android.graphics.drawable.GradientDrawable$GradientState").getDeclaredField("mPositions");
                f87127c = declaredField;
                declaredField.setAccessible(true);
            }
            f87127c.set(constantState, fArr);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.sunia.HTREnginev2.jif
    public Drawable inflateDrawable(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth;
        int i;
        GradientDrawable gradientDrawable = new GradientDrawable();
        m57734d(context, attributeSet, gradientDrawable);
        int i2 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i2 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2) {
                String name = xmlPullParser.getName();
                if (name.equals("size")) {
                    gradientDrawable.setSize(DrawableUtils.m36226l(context, attributeSet, R.attr.width), DrawableUtils.m36226l(context, attributeSet, R.attr.height));
                    i = i2;
                } else {
                    if (name.equals("gradient")) {
                        float m57733c = m57733c(context, attributeSet, R.attr.centerX, 0.5f, 1.0f, 1.0f);
                        float m57733c2 = m57733c(context, attributeSet, R.attr.centerY, 0.5f, 1.0f, 1.0f);
                        gradientDrawable.setGradientCenter(m57733c, m57733c2);
                        gradientDrawable.setUseLevel(DrawableUtils.m36219e(context, attributeSet, R.attr.useLevel, false));
                        int m36231q = DrawableUtils.m36231q(context, attributeSet, R.attr.type, 0);
                        gradientDrawable.setGradientType(m36231q);
                        int m36220f = DrawableUtils.m36220f(context, attributeSet, R.attr.startColor, 0);
                        int m36220f2 = DrawableUtils.m36220f(context, attributeSet, R.attr.centerColor, 0);
                        int m36220f3 = DrawableUtils.m36220f(context, attributeSet, R.attr.endColor, 0);
                        if (!DrawableUtils.m36230p(context, attributeSet, R.attr.centerColor)) {
                            gradientDrawable.setColors(new int[]{m36220f, m36220f3});
                        } else if (BuildKt.isApiLevelAbove(29)) {
                            int[] iArr = {m36220f, m36220f2, m36220f3};
                            float[] fArr = new float[3];
                            fArr[0] = 0.0f;
                            if (m57733c != 0.5f) {
                                m57733c2 = m57733c;
                            }
                            fArr[1] = m57733c2;
                            fArr[2] = 1.0f;
                            gradientDrawable.setColors(iArr, fArr);
                        } else {
                            gradientDrawable.setColors(new int[]{m36220f, m36220f2, m36220f3});
                            Drawable.ConstantState constantState = gradientDrawable.getConstantState();
                            float[] fArr2 = new float[3];
                            fArr2[0] = 0.0f;
                            if (m57733c != 0.5f) {
                                m57733c2 = m57733c;
                            }
                            fArr2[1] = m57733c2;
                            fArr2[2] = 1.0f;
                            m57737g(constantState, fArr2);
                        }
                        if (m36231q == 0) {
                            m57735e(gradientDrawable, (int) DrawableUtils.m36229o(context, attributeSet, R.attr.angle, 0.0f));
                        } else {
                            m57736f(context, attributeSet, gradientDrawable, m36231q);
                        }
                    } else if (name.equals("solid")) {
                        gradientDrawable.setColor(m57732b(DrawableUtils.m36220f(context, attributeSet, R.attr.color, 0), DrawableUtils.m36229o(context, attributeSet, R.attr.alpha, 1.0f)));
                    } else if (name.equals("stroke")) {
                        float m36229o = DrawableUtils.m36229o(context, attributeSet, R.attr.alpha, 1.0f);
                        int m36220f4 = DrawableUtils.m36220f(context, attributeSet, R.attr.color, 0);
                        int m36226l = DrawableUtils.m36226l(context, attributeSet, R.attr.width);
                        float m36222h = DrawableUtils.m36222h(context, attributeSet, R.attr.dashWidth);
                        if (m36222h != 0.0f) {
                            gradientDrawable.setStroke(m36226l, m57732b(m36220f4, m36229o), m36222h, DrawableUtils.m36222h(context, attributeSet, R.attr.dashGap));
                        } else {
                            gradientDrawable.setStroke(m36226l, m57732b(m36220f4, m36229o));
                        }
                    } else if (name.equals("corners")) {
                        int m36226l2 = DrawableUtils.m36226l(context, attributeSet, R.attr.radius);
                        gradientDrawable.setCornerRadius(m36226l2);
                        int m36227m = DrawableUtils.m36227m(context, attributeSet, R.attr.topLeftRadius, m36226l2);
                        int m36227m2 = DrawableUtils.m36227m(context, attributeSet, R.attr.topRightRadius, m36226l2);
                        int m36227m3 = DrawableUtils.m36227m(context, attributeSet, R.attr.bottomLeftRadius, m36226l2);
                        int m36227m4 = DrawableUtils.m36227m(context, attributeSet, R.attr.bottomRightRadius, m36226l2);
                        if (m36227m != m36226l2 || m36227m2 != m36226l2 || m36227m3 != m36226l2 || m36227m4 != m36226l2) {
                            float f = m36227m;
                            float f2 = m36227m2;
                            float f3 = m36227m4;
                            float f4 = m36227m3;
                            gradientDrawable.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
                        }
                    } else if (name.equals(Constant.PADDING_TAG)) {
                        int m36224j = DrawableUtils.m36224j(context, attributeSet, R.attr.left);
                        int m36224j2 = DrawableUtils.m36224j(context, attributeSet, R.attr.top);
                        int m36224j3 = DrawableUtils.m36224j(context, attributeSet, R.attr.right);
                        int m36224j4 = DrawableUtils.m36224j(context, attributeSet, R.attr.bottom);
                        if (m36224j != 0 || m36224j2 != 0 || m36224j3 != 0 || m36224j4 != 0) {
                            Rect rect = new Rect();
                            rect.set(m36224j, m36224j2, m36224j3, m36224j4);
                            try {
                                if (f87125a == null) {
                                    Field declaredField = GradientDrawable.class.getDeclaredField("mPadding");
                                    f87125a = declaredField;
                                    declaredField.setAccessible(true);
                                }
                                f87125a.set(gradientDrawable, rect);
                                if (f87126b == null) {
                                    Field declaredField2 = Class.forName("android.graphics.drawable.GradientDrawable$GradientState").getDeclaredField("mPadding");
                                    f87126b = declaredField2;
                                    i = 1;
                                    try {
                                        declaredField2.setAccessible(true);
                                    } catch (ClassNotFoundException e) {
                                        e = e;
                                        e.printStackTrace();
                                        i2 = i;
                                    } catch (IllegalAccessException e2) {
                                        e = e2;
                                        e.printStackTrace();
                                        i2 = i;
                                    } catch (NoSuchFieldException e3) {
                                        e = e3;
                                        e.printStackTrace();
                                        i2 = i;
                                    }
                                } else {
                                    i = 1;
                                }
                                f87126b.set(gradientDrawable.getConstantState(), rect);
                            } catch (ClassNotFoundException e4) {
                                e = e4;
                                i = 1;
                            } catch (IllegalAccessException e5) {
                                e = e5;
                                i = 1;
                            } catch (NoSuchFieldException e6) {
                                e = e6;
                                i = 1;
                            }
                        }
                    } else {
                        i = 1;
                        Log.w(ResourceManager.f46830c, "Bad element under <shape>: " + name);
                    }
                    i = 1;
                }
                i2 = i;
            }
        }
        return gradientDrawable;
    }
}
