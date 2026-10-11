package com.google.android.material.color;

import android.app.Activity;
import android.graphics.Bitmap;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.color.DynamicColors;
import com.google.android.material.color.utilities.QuantizerCelebi;
import com.google.android.material.color.utilities.Score;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* loaded from: classes6.dex */
public class DynamicColorsOptions {

    /* renamed from: e */
    public static final DynamicColors.Precondition f30880e = new C5219a();

    /* renamed from: f */
    public static final DynamicColors.OnAppliedCallback f30881f = new C5220b();

    /* renamed from: a */
    @StyleRes
    public final int f30882a;

    /* renamed from: b */
    @NonNull
    public final DynamicColors.Precondition f30883b;

    /* renamed from: c */
    @NonNull
    public final DynamicColors.OnAppliedCallback f30884c;

    /* renamed from: d */
    @Nullable
    public Integer f30885d;

    /* renamed from: com.google.android.material.color.DynamicColorsOptions$a */
    /* loaded from: classes6.dex */
    public class C5219a implements DynamicColors.Precondition {
        @Override // com.google.android.material.color.DynamicColors.Precondition
        public boolean shouldApplyDynamicColors(@NonNull Activity activity, int i) {
            return true;
        }
    }

    /* renamed from: com.google.android.material.color.DynamicColorsOptions$b */
    /* loaded from: classes6.dex */
    public class C5220b implements DynamicColors.OnAppliedCallback {
        @Override // com.google.android.material.color.DynamicColors.OnAppliedCallback
        public void onApplied(@NonNull Activity activity) {
        }
    }

    public /* synthetic */ DynamicColorsOptions(Builder builder, C5219a c5219a) {
        this(builder);
    }

    /* renamed from: c */
    public static int m23512c(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return Score.score(QuantizerCelebi.quantize(iArr, 128)).get(0).intValue();
    }

    @Nullable
    public Integer getContentBasedSeedColor() {
        return this.f30885d;
    }

    @NonNull
    public DynamicColors.OnAppliedCallback getOnAppliedCallback() {
        return this.f30884c;
    }

    @NonNull
    public DynamicColors.Precondition getPrecondition() {
        return this.f30883b;
    }

    @StyleRes
    public int getThemeOverlay() {
        return this.f30882a;
    }

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @StyleRes
        public int f30886a;

        /* renamed from: b */
        @NonNull
        public DynamicColors.Precondition f30887b = DynamicColorsOptions.f30880e;

        /* renamed from: c */
        @NonNull
        public DynamicColors.OnAppliedCallback f30888c = DynamicColorsOptions.f30881f;

        /* renamed from: d */
        @Nullable
        public Bitmap f30889d;

        /* renamed from: e */
        @Nullable
        public Integer f30890e;

        @NonNull
        public DynamicColorsOptions build() {
            return new DynamicColorsOptions(this, null);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setContentBasedSource(@NonNull Bitmap bitmap) {
            this.f30889d = bitmap;
            this.f30890e = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setOnAppliedCallback(@NonNull DynamicColors.OnAppliedCallback onAppliedCallback) {
            this.f30888c = onAppliedCallback;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setPrecondition(@NonNull DynamicColors.Precondition precondition) {
            this.f30887b = precondition;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setThemeOverlay(@StyleRes int i) {
            this.f30886a = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setContentBasedSource(@ColorInt int i) {
            this.f30889d = null;
            this.f30890e = Integer.valueOf(i);
            return this;
        }
    }

    public DynamicColorsOptions(Builder builder) {
        this.f30882a = builder.f30886a;
        this.f30883b = builder.f30887b;
        this.f30884c = builder.f30888c;
        if (builder.f30890e != null) {
            this.f30885d = builder.f30890e;
        } else if (builder.f30889d != null) {
            this.f30885d = Integer.valueOf(m23512c(builder.f30889d));
        }
    }
}
