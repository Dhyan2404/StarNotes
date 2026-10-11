package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.collection.ArrayMap;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Palette {

    /* renamed from: f */
    public static final int f8612f = 12544;

    /* renamed from: g */
    public static final int f8613g = 16;

    /* renamed from: h */
    public static final float f8614h = 3.0f;

    /* renamed from: i */
    public static final float f8615i = 4.5f;

    /* renamed from: j */
    public static final String f8616j = "Palette";

    /* renamed from: k */
    public static final boolean f8617k = false;

    /* renamed from: l */
    public static final Filter f8618l = new C1238a();

    /* renamed from: a */
    public final List<Swatch> f8619a;

    /* renamed from: b */
    public final List<Target> f8620b;

    /* renamed from: d */
    public final SparseBooleanArray f8622d = new SparseBooleanArray();

    /* renamed from: c */
    public final Map<Target, Swatch> f8621c = new ArrayMap();

    /* renamed from: e */
    @Nullable
    public final Swatch f8623e = m5217a();

    /* loaded from: classes3.dex */
    public interface Filter {
        boolean isAllowed(@ColorInt int i, @NonNull float[] fArr);
    }

    /* loaded from: classes3.dex */
    public interface PaletteAsyncListener {
        void onGenerated(@Nullable Palette palette);
    }

    /* renamed from: androidx.palette.graphics.Palette$a */
    /* loaded from: classes3.dex */
    public static class C1238a implements Filter {

        /* renamed from: a */
        public static final float f8643a = 0.05f;

        /* renamed from: b */
        public static final float f8644b = 0.95f;

        /* renamed from: a */
        public final boolean m5228a(float[] fArr) {
            return fArr[2] <= 0.05f;
        }

        /* renamed from: b */
        public final boolean m5229b(float[] fArr) {
            float f = fArr[0];
            return f >= 10.0f && f <= 37.0f && fArr[1] <= 0.82f;
        }

        /* renamed from: c */
        public final boolean m5230c(float[] fArr) {
            return fArr[2] >= 0.95f;
        }

        @Override // androidx.palette.graphics.Palette.Filter
        public boolean isAllowed(int i, float[] fArr) {
            return (m5230c(fArr) || m5228a(fArr) || m5229b(fArr)) ? false : true;
        }
    }

    public Palette(List<Swatch> list, List<Target> list2) {
        this.f8619a = list;
        this.f8620b = list2;
    }

    @NonNull
    public static Builder from(@NonNull Bitmap bitmap) {
        return new Builder(bitmap);
    }

    @Deprecated
    public static Palette generate(Bitmap bitmap) {
        return from(bitmap).generate();
    }

    @Deprecated
    public static AsyncTask<Bitmap, Void, Palette> generateAsync(Bitmap bitmap, PaletteAsyncListener paletteAsyncListener) {
        return from(bitmap).generate(paletteAsyncListener);
    }

    @Nullable
    /* renamed from: a */
    public final Swatch m5217a() {
        int size = this.f8619a.size();
        int i = Integer.MIN_VALUE;
        Swatch swatch = null;
        for (int i2 = 0; i2 < size; i2++) {
            Swatch swatch2 = this.f8619a.get(i2);
            if (swatch2.getPopulation() > i) {
                i = swatch2.getPopulation();
                swatch = swatch2;
            }
        }
        return swatch;
    }

    /* renamed from: b */
    public void m5218b() {
        int size = this.f8620b.size();
        for (int i = 0; i < size; i++) {
            Target target = this.f8620b.get(i);
            target.m5237a();
            this.f8621c.put(target, m5220d(target));
        }
        this.f8622d.clear();
    }

    /* renamed from: c */
    public final float m5219c(Swatch swatch, Target target) {
        float[] hsl = swatch.getHsl();
        Swatch swatch2 = this.f8623e;
        return (target.getSaturationWeight() > 0.0f ? target.getSaturationWeight() * (1.0f - Math.abs(hsl[1] - target.getTargetSaturation())) : 0.0f) + (target.getLightnessWeight() > 0.0f ? target.getLightnessWeight() * (1.0f - Math.abs(hsl[2] - target.getTargetLightness())) : 0.0f) + (target.getPopulationWeight() > 0.0f ? target.getPopulationWeight() * (swatch.getPopulation() / (swatch2 != null ? swatch2.getPopulation() : 1)) : 0.0f);
    }

    @Nullable
    /* renamed from: d */
    public final Swatch m5220d(Target target) {
        Swatch m5221e = m5221e(target);
        if (m5221e != null && target.isExclusive()) {
            this.f8622d.append(m5221e.getRgb(), true);
        }
        return m5221e;
    }

    @Nullable
    /* renamed from: e */
    public final Swatch m5221e(Target target) {
        int size = this.f8619a.size();
        float f = 0.0f;
        Swatch swatch = null;
        for (int i = 0; i < size; i++) {
            Swatch swatch2 = this.f8619a.get(i);
            if (m5222f(swatch2, target)) {
                float m5219c = m5219c(swatch2, target);
                if (swatch == null || m5219c > f) {
                    swatch = swatch2;
                    f = m5219c;
                }
            }
        }
        return swatch;
    }

    /* renamed from: f */
    public final boolean m5222f(Swatch swatch, Target target) {
        float[] hsl = swatch.getHsl();
        return hsl[1] >= target.getMinimumSaturation() && hsl[1] <= target.getMaximumSaturation() && hsl[2] >= target.getMinimumLightness() && hsl[2] <= target.getMaximumLightness() && !this.f8622d.get(swatch.getRgb());
    }

    @ColorInt
    public int getColorForTarget(@NonNull Target target, @ColorInt int i) {
        Swatch swatchForTarget = getSwatchForTarget(target);
        return swatchForTarget != null ? swatchForTarget.getRgb() : i;
    }

    @ColorInt
    public int getDarkMutedColor(@ColorInt int i) {
        return getColorForTarget(Target.DARK_MUTED, i);
    }

    @Nullable
    public Swatch getDarkMutedSwatch() {
        return getSwatchForTarget(Target.DARK_MUTED);
    }

    @ColorInt
    public int getDarkVibrantColor(@ColorInt int i) {
        return getColorForTarget(Target.DARK_VIBRANT, i);
    }

    @Nullable
    public Swatch getDarkVibrantSwatch() {
        return getSwatchForTarget(Target.DARK_VIBRANT);
    }

    @ColorInt
    public int getDominantColor(@ColorInt int i) {
        Swatch swatch = this.f8623e;
        return swatch != null ? swatch.getRgb() : i;
    }

    @Nullable
    public Swatch getDominantSwatch() {
        return this.f8623e;
    }

    @ColorInt
    public int getLightMutedColor(@ColorInt int i) {
        return getColorForTarget(Target.LIGHT_MUTED, i);
    }

    @Nullable
    public Swatch getLightMutedSwatch() {
        return getSwatchForTarget(Target.LIGHT_MUTED);
    }

    @ColorInt
    public int getLightVibrantColor(@ColorInt int i) {
        return getColorForTarget(Target.LIGHT_VIBRANT, i);
    }

    @Nullable
    public Swatch getLightVibrantSwatch() {
        return getSwatchForTarget(Target.LIGHT_VIBRANT);
    }

    @ColorInt
    public int getMutedColor(@ColorInt int i) {
        return getColorForTarget(Target.MUTED, i);
    }

    @Nullable
    public Swatch getMutedSwatch() {
        return getSwatchForTarget(Target.MUTED);
    }

    @Nullable
    public Swatch getSwatchForTarget(@NonNull Target target) {
        return this.f8621c.get(target);
    }

    @NonNull
    public List<Swatch> getSwatches() {
        return Collections.unmodifiableList(this.f8619a);
    }

    @NonNull
    public List<Target> getTargets() {
        return Collections.unmodifiableList(this.f8620b);
    }

    @ColorInt
    public int getVibrantColor(@ColorInt int i) {
        return getColorForTarget(Target.VIBRANT, i);
    }

    @Nullable
    public Swatch getVibrantSwatch() {
        return getSwatchForTarget(Target.VIBRANT);
    }

    @NonNull
    public static Palette from(@NonNull List<Swatch> list) {
        return new Builder(list).generate();
    }

    @Deprecated
    public static Palette generate(Bitmap bitmap, int i) {
        return from(bitmap).maximumColorCount(i).generate();
    }

    @Deprecated
    public static AsyncTask<Bitmap, Void, Palette> generateAsync(Bitmap bitmap, int i, PaletteAsyncListener paletteAsyncListener) {
        return from(bitmap).maximumColorCount(i).generate(paletteAsyncListener);
    }

    /* loaded from: classes3.dex */
    public static final class Swatch {

        /* renamed from: a */
        public final int f8634a;

        /* renamed from: b */
        public final int f8635b;

        /* renamed from: c */
        public final int f8636c;

        /* renamed from: d */
        public final int f8637d;

        /* renamed from: e */
        public final int f8638e;

        /* renamed from: f */
        public boolean f8639f;

        /* renamed from: g */
        public int f8640g;

        /* renamed from: h */
        public int f8641h;

        /* renamed from: i */
        @Nullable
        public float[] f8642i;

        public Swatch(@ColorInt int i, int i2) {
            this.f8634a = Color.red(i);
            this.f8635b = Color.green(i);
            this.f8636c = Color.blue(i);
            this.f8637d = i;
            this.f8638e = i2;
        }

        /* renamed from: a */
        public final void m5227a() {
            if (this.f8639f) {
                return;
            }
            int calculateMinimumAlpha = ColorUtils.calculateMinimumAlpha(-1, this.f8637d, 4.5f);
            int calculateMinimumAlpha2 = ColorUtils.calculateMinimumAlpha(-1, this.f8637d, 3.0f);
            if (calculateMinimumAlpha != -1 && calculateMinimumAlpha2 != -1) {
                this.f8641h = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                this.f8640g = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                this.f8639f = true;
                return;
            }
            int calculateMinimumAlpha3 = ColorUtils.calculateMinimumAlpha(-16777216, this.f8637d, 4.5f);
            int calculateMinimumAlpha4 = ColorUtils.calculateMinimumAlpha(-16777216, this.f8637d, 3.0f);
            if (calculateMinimumAlpha3 == -1 || calculateMinimumAlpha4 == -1) {
                this.f8641h = calculateMinimumAlpha != -1 ? ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha) : ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha3);
                this.f8640g = calculateMinimumAlpha2 != -1 ? ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2) : ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha4);
                this.f8639f = true;
            } else {
                this.f8641h = ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha3);
                this.f8640g = ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha4);
                this.f8639f = true;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Swatch.class != obj.getClass()) {
                return false;
            }
            Swatch swatch = (Swatch) obj;
            return this.f8638e == swatch.f8638e && this.f8637d == swatch.f8637d;
        }

        @ColorInt
        public int getBodyTextColor() {
            m5227a();
            return this.f8641h;
        }

        @NonNull
        public float[] getHsl() {
            if (this.f8642i == null) {
                this.f8642i = new float[3];
            }
            ColorUtils.RGBToHSL(this.f8634a, this.f8635b, this.f8636c, this.f8642i);
            return this.f8642i;
        }

        public int getPopulation() {
            return this.f8638e;
        }

        @ColorInt
        public int getRgb() {
            return this.f8637d;
        }

        @ColorInt
        public int getTitleTextColor() {
            m5227a();
            return this.f8640g;
        }

        public int hashCode() {
            return (this.f8637d * 31) + this.f8638e;
        }

        public String toString() {
            return Swatch.class.getSimpleName() + " [RGB: #" + Integer.toHexString(getRgb()) + "] [HSL: " + Arrays.toString(getHsl()) + "] [Population: " + this.f8638e + "] [Title Text: #" + Integer.toHexString(getTitleTextColor()) + "] [Body Text: #" + Integer.toHexString(getBodyTextColor()) + ']';
        }

        public Swatch(int i, int i2, int i3, int i4) {
            this.f8634a = i;
            this.f8635b = i2;
            this.f8636c = i3;
            this.f8637d = Color.rgb(i, i2, i3);
            this.f8638e = i4;
        }

        public Swatch(float[] fArr, int i) {
            this(ColorUtils.HSLToColor(fArr), i);
            this.f8642i = fArr;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        public final List<Swatch> f8624a;

        /* renamed from: b */
        @Nullable
        public final Bitmap f8625b;

        /* renamed from: c */
        public final List<Target> f8626c;

        /* renamed from: d */
        public int f8627d;

        /* renamed from: e */
        public int f8628e;

        /* renamed from: f */
        public int f8629f;

        /* renamed from: g */
        public final List<Filter> f8630g;

        /* renamed from: h */
        @Nullable
        public Rect f8631h;

        /* renamed from: androidx.palette.graphics.Palette$Builder$a */
        /* loaded from: classes3.dex */
        public class AsyncTaskC1237a extends AsyncTask<Bitmap, Void, Palette> {

            /* renamed from: a */
            public final /* synthetic */ PaletteAsyncListener f8632a;

            public AsyncTaskC1237a(PaletteAsyncListener paletteAsyncListener) {
                this.f8632a = paletteAsyncListener;
            }

            @Override // android.os.AsyncTask
            @Nullable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Palette doInBackground(Bitmap... bitmapArr) {
                try {
                    return Builder.this.generate();
                } catch (Exception e) {
                    Log.e(Palette.f8616j, "Exception thrown during async generate", e);
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(@Nullable Palette palette) {
                this.f8632a.onGenerated(palette);
            }
        }

        public Builder(@NonNull Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.f8626c = arrayList;
            this.f8627d = 16;
            this.f8628e = Palette.f8612f;
            this.f8629f = -1;
            ArrayList arrayList2 = new ArrayList();
            this.f8630g = arrayList2;
            if (bitmap != null && !bitmap.isRecycled()) {
                arrayList2.add(Palette.f8618l);
                this.f8625b = bitmap;
                this.f8624a = null;
                arrayList.add(Target.LIGHT_VIBRANT);
                arrayList.add(Target.VIBRANT);
                arrayList.add(Target.DARK_VIBRANT);
                arrayList.add(Target.LIGHT_MUTED);
                arrayList.add(Target.MUTED);
                arrayList.add(Target.DARK_MUTED);
                return;
            }
            throw new IllegalArgumentException("Bitmap is not valid");
        }

        /* renamed from: a */
        public final int[] m5223a(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.f8631h;
            if (rect == null) {
                return iArr;
            }
            int width2 = rect.width();
            int height2 = this.f8631h.height();
            int[] iArr2 = new int[width2 * height2];
            for (int i = 0; i < height2; i++) {
                Rect rect2 = this.f8631h;
                System.arraycopy(iArr, ((rect2.top + i) * width) + rect2.left, iArr2, i * width2, width2);
            }
            return iArr2;
        }

        @NonNull
        public Builder addFilter(Filter filter) {
            if (filter != null) {
                this.f8630g.add(filter);
            }
            return this;
        }

        @NonNull
        public Builder addTarget(@NonNull Target target) {
            if (!this.f8626c.contains(target)) {
                this.f8626c.add(target);
            }
            return this;
        }

        /* renamed from: b */
        public final Bitmap m5224b(Bitmap bitmap) {
            int max;
            int i;
            double d = -1.0d;
            if (this.f8628e > 0) {
                int width = bitmap.getWidth() * bitmap.getHeight();
                int i2 = this.f8628e;
                if (width > i2) {
                    d = Math.sqrt(i2 / width);
                }
            } else if (this.f8629f > 0 && (max = Math.max(bitmap.getWidth(), bitmap.getHeight())) > (i = this.f8629f)) {
                d = i / max;
            }
            return d <= 0.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * d), (int) Math.ceil(bitmap.getHeight() * d), false);
        }

        @NonNull
        public Builder clearFilters() {
            this.f8630g.clear();
            return this;
        }

        @NonNull
        public Builder clearRegion() {
            this.f8631h = null;
            return this;
        }

        @NonNull
        public Builder clearTargets() {
            List<Target> list = this.f8626c;
            if (list != null) {
                list.clear();
            }
            return this;
        }

        @NonNull
        public Palette generate() {
            List<Swatch> list;
            Filter[] filterArr;
            Bitmap bitmap = this.f8625b;
            if (bitmap != null) {
                Bitmap m5224b = m5224b(bitmap);
                Rect rect = this.f8631h;
                if (m5224b != this.f8625b && rect != null) {
                    double width = m5224b.getWidth() / this.f8625b.getWidth();
                    rect.left = (int) Math.floor(rect.left * width);
                    rect.top = (int) Math.floor(rect.top * width);
                    rect.right = Math.min((int) Math.ceil(rect.right * width), m5224b.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(rect.bottom * width), m5224b.getHeight());
                }
                int[] m5223a = m5223a(m5224b);
                int i = this.f8627d;
                if (this.f8630g.isEmpty()) {
                    filterArr = null;
                } else {
                    List<Filter> list2 = this.f8630g;
                    filterArr = (Filter[]) list2.toArray(new Filter[list2.size()]);
                }
                C1239a c1239a = new C1239a(m5223a, i, filterArr);
                if (m5224b != this.f8625b) {
                    m5224b.recycle();
                }
                list = c1239a.m5248d();
            } else {
                list = this.f8624a;
                if (list == null) {
                    throw new AssertionError();
                }
            }
            Palette palette = new Palette(list, this.f8626c);
            palette.m5218b();
            return palette;
        }

        @NonNull
        public Builder maximumColorCount(int i) {
            this.f8627d = i;
            return this;
        }

        @NonNull
        public Builder resizeBitmapArea(int i) {
            this.f8628e = i;
            this.f8629f = -1;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder resizeBitmapSize(int i) {
            this.f8629f = i;
            this.f8628e = -1;
            return this;
        }

        @NonNull
        public Builder setRegion(@Px int i, @Px int i2, @Px int i3, @Px int i4) {
            if (this.f8625b != null) {
                if (this.f8631h == null) {
                    this.f8631h = new Rect();
                }
                this.f8631h.set(0, 0, this.f8625b.getWidth(), this.f8625b.getHeight());
                if (!this.f8631h.intersect(i, i2, i3, i4)) {
                    throw new IllegalArgumentException("The given region must intersect with the Bitmap's dimensions.");
                }
            }
            return this;
        }

        public Builder(@NonNull List<Swatch> list) {
            this.f8626c = new ArrayList();
            this.f8627d = 16;
            this.f8628e = Palette.f8612f;
            this.f8629f = -1;
            ArrayList arrayList = new ArrayList();
            this.f8630g = arrayList;
            if (list != null && !list.isEmpty()) {
                arrayList.add(Palette.f8618l);
                this.f8624a = list;
                this.f8625b = null;
                return;
            }
            throw new IllegalArgumentException("List of Swatches is not valid");
        }

        @NonNull
        public AsyncTask<Bitmap, Void, Palette> generate(@NonNull PaletteAsyncListener paletteAsyncListener) {
            if (paletteAsyncListener != null) {
                return new AsyncTaskC1237a(paletteAsyncListener).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f8625b);
            }
            throw new IllegalArgumentException("listener can not be null");
        }
    }
}
