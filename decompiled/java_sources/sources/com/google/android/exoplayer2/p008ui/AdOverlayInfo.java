package com.google.android.exoplayer2.p008ui;

import android.view.View;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class AdOverlayInfo {
    public static final int PURPOSE_CLOSE_AD = 2;
    public static final int PURPOSE_CONTROLS = 1;
    public static final int PURPOSE_NOT_VISIBLE = 4;
    public static final int PURPOSE_OTHER = 3;
    public final int purpose;

    @Nullable
    public final String reasonDetail;
    public final View view;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final View f27469a;

        /* renamed from: b */
        public final int f27470b;

        /* renamed from: c */
        @Nullable
        public String f27471c;

        public Builder(View view, int i) {
            this.f27469a = view;
            this.f27470b = i;
        }

        public AdOverlayInfo build() {
            return new AdOverlayInfo(this.f27469a, this.f27470b, this.f27471c);
        }

        public Builder setDetailedReason(@Nullable String str) {
            this.f27471c = str;
            return this;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Purpose {
    }

    @Deprecated
    public AdOverlayInfo(View view, int i) {
        this(view, i, null);
    }

    @Deprecated
    public AdOverlayInfo(View view, int i, @Nullable String str) {
        this.view = view;
        this.purpose = i;
        this.reasonDetail = str;
    }
}
