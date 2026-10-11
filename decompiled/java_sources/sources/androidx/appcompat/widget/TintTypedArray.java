package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class TintTypedArray {

    /* renamed from: a */
    public final Context f2012a;

    /* renamed from: b */
    public final TypedArray f2013b;

    /* renamed from: c */
    public TypedValue f2014c;

    @RequiresApi(21)
    /* renamed from: androidx.appcompat.widget.TintTypedArray$a */
    /* loaded from: classes3.dex */
    public static class C0294a {
        @DoNotInline
        /* renamed from: a */
        public static int m935a(TypedArray typedArray) {
            return typedArray.getChangingConfigurations();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m936b(TypedArray typedArray, int i) {
            return typedArray.getType(i);
        }
    }

    public TintTypedArray(Context context, TypedArray typedArray) {
        this.f2012a = context;
        this.f2013b = typedArray;
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public boolean getBoolean(int i, boolean z) {
        return this.f2013b.getBoolean(i, z);
    }

    @RequiresApi(21)
    public int getChangingConfigurations() {
        return C0294a.m935a(this.f2013b);
    }

    public int getColor(int i, int i2) {
        return this.f2013b.getColor(i, i2);
    }

    public ColorStateList getColorStateList(int i) {
        int resourceId;
        ColorStateList colorStateList;
        return (!this.f2013b.hasValue(i) || (resourceId = this.f2013b.getResourceId(i, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.f2012a, resourceId)) == null) ? this.f2013b.getColorStateList(i) : colorStateList;
    }

    public float getDimension(int i, float f) {
        return this.f2013b.getDimension(i, f);
    }

    public int getDimensionPixelOffset(int i, int i2) {
        return this.f2013b.getDimensionPixelOffset(i, i2);
    }

    public int getDimensionPixelSize(int i, int i2) {
        return this.f2013b.getDimensionPixelSize(i, i2);
    }

    public Drawable getDrawable(int i) {
        int resourceId;
        return (!this.f2013b.hasValue(i) || (resourceId = this.f2013b.getResourceId(i, 0)) == 0) ? this.f2013b.getDrawable(i) : AppCompatResources.getDrawable(this.f2012a, resourceId);
    }

    public Drawable getDrawableIfKnown(int i) {
        int resourceId;
        if (!this.f2013b.hasValue(i) || (resourceId = this.f2013b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.get().m724b(this.f2012a, resourceId, true);
    }

    public float getFloat(int i, float f) {
        return this.f2013b.getFloat(i, f);
    }

    @Nullable
    public Typeface getFont(@StyleableRes int i, int i2, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.f2013b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f2014c == null) {
            this.f2014c = new TypedValue();
        }
        return ResourcesCompat.getFont(this.f2012a, resourceId, this.f2014c, i2, fontCallback);
    }

    public float getFraction(int i, int i2, int i3, float f) {
        return this.f2013b.getFraction(i, i2, i3, f);
    }

    public int getIndex(int i) {
        return this.f2013b.getIndex(i);
    }

    public int getIndexCount() {
        return this.f2013b.getIndexCount();
    }

    public int getInt(int i, int i2) {
        return this.f2013b.getInt(i, i2);
    }

    public int getInteger(int i, int i2) {
        return this.f2013b.getInteger(i, i2);
    }

    public int getLayoutDimension(int i, String str) {
        return this.f2013b.getLayoutDimension(i, str);
    }

    public String getNonResourceString(int i) {
        return this.f2013b.getNonResourceString(i);
    }

    public String getPositionDescription() {
        return this.f2013b.getPositionDescription();
    }

    public int getResourceId(int i, int i2) {
        return this.f2013b.getResourceId(i, i2);
    }

    public Resources getResources() {
        return this.f2013b.getResources();
    }

    public String getString(int i) {
        return this.f2013b.getString(i);
    }

    public CharSequence getText(int i) {
        return this.f2013b.getText(i);
    }

    public CharSequence[] getTextArray(int i) {
        return this.f2013b.getTextArray(i);
    }

    public int getType(int i) {
        return C0294a.m936b(this.f2013b, i);
    }

    public boolean getValue(int i, TypedValue typedValue) {
        return this.f2013b.getValue(i, typedValue);
    }

    public TypedArray getWrappedTypeArray() {
        return this.f2013b;
    }

    public boolean hasValue(int i) {
        return this.f2013b.hasValue(i);
    }

    public int length() {
        return this.f2013b.length();
    }

    public TypedValue peekValue(int i) {
        return this.f2013b.peekValue(i);
    }

    public void recycle() {
        this.f2013b.recycle();
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public int getLayoutDimension(int i, int i2) {
        return this.f2013b.getLayoutDimension(i, i2);
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int i, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i, iArr));
    }
}
