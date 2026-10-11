package com.onyx.android.sdk.replicator.note.data.shape;

import android.text.Layout;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.ss.util.CellUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;", "", "()V", "CENTER", "", "JUSTIFY", "LEFT", "RIGHT", "toAlignment", "Landroid/text/Layout$Alignment;", "alignType", "toInt", "string", "", "toString", "toTextAlignment", CellUtil.ALIGNMENT, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTextAlignType {
    public static final int CENTER = 2;

    @NotNull
    public static final ShapeTextAlignType INSTANCE = new ShapeTextAlignType();
    public static final int JUSTIFY = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ShapeTextAlignType() {
    }

    private final Layout.Alignment toAlignment(int alignType) {
        return alignType != 0 ? alignType != 1 ? alignType != 2 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
    }

    public final int toInt(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        switch (string.hashCode()) {
            case -1364013995:
                return !string.equals("center") ? 0 : 2;
            case -1249482096:
                return !string.equals("justify") ? 0 : 3;
            case 3317767:
                string.equals("left");
                return 0;
            case 108511772:
                return !string.equals(gon.f71288n0) ? 0 : 1;
            default:
                return 0;
        }
    }

    @NotNull
    public final String toString(int alignType) {
        return alignType != 0 ? alignType != 1 ? alignType != 2 ? alignType != 3 ? "" : "justify" : "center" : gon.f71288n0 : "left";
    }

    public final int toTextAlignment(int alignType) {
        return toTextAlignment(toAlignment(alignType));
    }

    public final int toTextAlignment(@NotNull Layout.Alignment alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        int i = WhenMappings.$EnumSwitchMapping$0[alignment.ordinal()];
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 4;
        }
        throw new NoWhenBranchMatchedException();
    }
}
