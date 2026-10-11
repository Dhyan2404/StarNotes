package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import java.io.Serializable;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;", "", "Ljava/io/Serializable;", "(Ljava/lang/String;I)V", "toValueString", "", "CONTENT_TOP_LEFT", "CONTENT_TOP_CENTER", "CONTENT_TOP_RIGHT", "CONTENT_LEFT_CENTER", "CONTENT_RIGHT_CENTER", "CONTENT_BOTTOM_LEFT", "CONTENT_BOTTOM_CENTER", "CONTENT_BOTTOM_RIGHT", "BACKGROUND", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutMarginLocation implements Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GeoLayoutMarginLocation[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final GeoLayoutMarginLocation CONTENT_TOP_LEFT = new GeoLayoutMarginLocation("CONTENT_TOP_LEFT", 0);
    public static final GeoLayoutMarginLocation CONTENT_TOP_CENTER = new GeoLayoutMarginLocation("CONTENT_TOP_CENTER", 1);
    public static final GeoLayoutMarginLocation CONTENT_TOP_RIGHT = new GeoLayoutMarginLocation("CONTENT_TOP_RIGHT", 2);
    public static final GeoLayoutMarginLocation CONTENT_LEFT_CENTER = new GeoLayoutMarginLocation("CONTENT_LEFT_CENTER", 3);
    public static final GeoLayoutMarginLocation CONTENT_RIGHT_CENTER = new GeoLayoutMarginLocation("CONTENT_RIGHT_CENTER", 4);
    public static final GeoLayoutMarginLocation CONTENT_BOTTOM_LEFT = new GeoLayoutMarginLocation("CONTENT_BOTTOM_LEFT", 5);
    public static final GeoLayoutMarginLocation CONTENT_BOTTOM_CENTER = new GeoLayoutMarginLocation("CONTENT_BOTTOM_CENTER", 6);
    public static final GeoLayoutMarginLocation CONTENT_BOTTOM_RIGHT = new GeoLayoutMarginLocation("CONTENT_BOTTOM_RIGHT", 7);
    public static final GeoLayoutMarginLocation BACKGROUND = new GeoLayoutMarginLocation("BACKGROUND", 8);

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation$Companion;", "", "()V", "buildRectForLocation", "Landroid/graphics/RectF;", "location", "", "viewport", "contentRect", "fromString", "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;", "name", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[GeoLayoutMarginLocation.values().length];
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_TOP_LEFT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_TOP_CENTER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_TOP_RIGHT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_LEFT_CENTER.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_RIGHT_CENTER.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_BOTTOM_LEFT.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_BOTTOM_RIGHT.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.CONTENT_BOTTOM_CENTER.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[GeoLayoutMarginLocation.BACKGROUND.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RectF buildRectForLocation(@NotNull String location, @NotNull RectF viewport, @NotNull RectF contentRect) {
            Intrinsics.checkNotNullParameter(location, "location");
            Intrinsics.checkNotNullParameter(viewport, "viewport");
            Intrinsics.checkNotNullParameter(contentRect, "contentRect");
            switch (WhenMappings.$EnumSwitchMapping$0[GeoLayoutMarginLocation.INSTANCE.fromString(location).ordinal()]) {
                case 1:
                    return new RectF(viewport.left, viewport.top, contentRect.left, contentRect.top);
                case 2:
                    return new RectF(contentRect.left, viewport.top, contentRect.right, contentRect.top);
                case 3:
                    return new RectF(contentRect.right, viewport.top, viewport.right, contentRect.top);
                case 4:
                    return new RectF(viewport.left, contentRect.top, contentRect.left, contentRect.bottom);
                case 5:
                    return new RectF(contentRect.right, contentRect.top, viewport.right, contentRect.bottom);
                case 6:
                    return new RectF(viewport.left, contentRect.bottom, contentRect.left, viewport.bottom);
                case 7:
                    return new RectF(contentRect.right, contentRect.bottom, viewport.right, viewport.bottom);
                case 8:
                    return new RectF(contentRect.left, contentRect.bottom, contentRect.right, viewport.bottom);
                case 9:
                    return RectFKt.copy(viewport);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        @NotNull
        public final GeoLayoutMarginLocation fromString(@Nullable String name) {
            if (name == null) {
                return GeoLayoutMarginLocation.BACKGROUND;
            }
            String upperCase = name.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            return GeoLayoutMarginLocation.valueOf(upperCase);
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ GeoLayoutMarginLocation[] $values() {
        return new GeoLayoutMarginLocation[]{CONTENT_TOP_LEFT, CONTENT_TOP_CENTER, CONTENT_TOP_RIGHT, CONTENT_LEFT_CENTER, CONTENT_RIGHT_CENTER, CONTENT_BOTTOM_LEFT, CONTENT_BOTTOM_CENTER, CONTENT_BOTTOM_RIGHT, BACKGROUND};
    }

    static {
        GeoLayoutMarginLocation[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private GeoLayoutMarginLocation(String str, int i) {
    }

    @NotNull
    public static EnumEntries<GeoLayoutMarginLocation> getEntries() {
        return $ENTRIES;
    }

    public static GeoLayoutMarginLocation valueOf(String str) {
        return (GeoLayoutMarginLocation) Enum.valueOf(GeoLayoutMarginLocation.class, str);
    }

    public static GeoLayoutMarginLocation[] values() {
        return (GeoLayoutMarginLocation[]) $VALUES.clone();
    }

    @NotNull
    public final String toValueString() {
        String upperCase = name().toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }
}
