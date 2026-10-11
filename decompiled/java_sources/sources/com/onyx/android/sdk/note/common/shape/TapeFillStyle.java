package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.note.C7485R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB;\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fj\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001b¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "", "iconRes", "", "shaderResPath", "width", "", "height", Constant.PADDING_TAG, "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIF)V", "getHeight", "()I", "getIconRes", "()Ljava/lang/String;", "getPadding", "()F", "getShaderResPath", "getWidth", "TAPE_FILL_STYLE_BIAS", "TAPE_FILL_STYLE_PURE_COLOR", "TAPE_FILL_STYLE_GRID", "TAPE_FILL_STYLE_DOT", "TAPE_FILL_STYLE_STAR", "TAPE_FILL_STYLE_JIUJIU", "TAPE_FILL_STYLE_DOODLE", "TAPE_FILL_STYLE_CUBE", "TAPE_FILL_STYLE_CUSTOM", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TapeFillStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TapeFillStyle[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final TapeFillStyle TAPE_FILL_STYLE_BIAS;
    public static final TapeFillStyle TAPE_FILL_STYLE_CUBE;
    public static final TapeFillStyle TAPE_FILL_STYLE_CUSTOM;
    public static final TapeFillStyle TAPE_FILL_STYLE_DOODLE;
    public static final TapeFillStyle TAPE_FILL_STYLE_DOT;
    public static final TapeFillStyle TAPE_FILL_STYLE_GRID;
    public static final TapeFillStyle TAPE_FILL_STYLE_JIUJIU;
    public static final TapeFillStyle TAPE_FILL_STYLE_PURE_COLOR;
    public static final TapeFillStyle TAPE_FILL_STYLE_STAR;
    private final int height;

    @Nullable
    private final String iconRes;
    private final float padding;

    @Nullable
    private final String shaderResPath;
    private final int width;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle$Companion;", "", "()V", "fromName", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "name", "", "getTapStyleList", "", "tapNameList", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTapeFillStyle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeFillStyle.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillStyle$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1#2:72\n1549#3:73\n1620#3,3:74\n*S KotlinDebug\n*F\n+ 1 TapeFillStyle.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillStyle$Companion\n*L\n66#1:73\n66#1:74,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TapeFillStyle fromName(@Nullable String name) {
            Object obj;
            Iterator<E> it2 = TapeFillStyle.getEntries().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((TapeFillStyle) obj).name(), name)) {
                    break;
                }
            }
            TapeFillStyle tapeFillStyle = (TapeFillStyle) obj;
            return tapeFillStyle == null ? TapeFillStyle.TAPE_FILL_STYLE_BIAS : tapeFillStyle;
        }

        @NotNull
        public final List<TapeFillStyle> getTapStyleList(@NotNull List<String> tapNameList) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(tapNameList, "tapNameList");
            List<String> list = tapNameList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(TapeFillStyle.INSTANCE.fromName((String) it2.next()));
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ TapeFillStyle[] $values() {
        return new TapeFillStyle[]{TAPE_FILL_STYLE_BIAS, TAPE_FILL_STYLE_PURE_COLOR, TAPE_FILL_STYLE_GRID, TAPE_FILL_STYLE_DOT, TAPE_FILL_STYLE_STAR, TAPE_FILL_STYLE_JIUJIU, TAPE_FILL_STYLE_DOODLE, TAPE_FILL_STYLE_CUBE, TAPE_FILL_STYLE_CUSTOM};
    }

    static {
        ResManager resManager = ResManager.INSTANCE;
        TAPE_FILL_STYLE_BIAS = new TapeFillStyle("TAPE_FILL_STYLE_BIAS", 0, resManager.getString(C7485R.string.icon_tape_style_bias_svg), null, 0, 0, 0.0f, 30, null);
        String str = null;
        int i = 0;
        int i2 = 0;
        float f = 0.0f;
        int i3 = 30;
        DefaultConstructorMarker defaultConstructorMarker = null;
        TAPE_FILL_STYLE_PURE_COLOR = new TapeFillStyle("TAPE_FILL_STYLE_PURE_COLOR", 1, resManager.getString(C7485R.string.icon_tape_style_pure_svg), str, i, i2, f, i3, defaultConstructorMarker);
        float f2 = 0.0f;
        int i4 = 16;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        TAPE_FILL_STYLE_GRID = new TapeFillStyle("TAPE_FILL_STYLE_GRID", 2, resManager.getString(C7485R.string.icon_tape_style_grid_svg), resManager.getString(C7485R.string.icon_tape_shader_grid_svg), C7485R.dimen.tape_fill_style_grid_width, C7485R.dimen.tape_fill_style_grid_height, f2, i4, defaultConstructorMarker2);
        TAPE_FILL_STYLE_DOT = new TapeFillStyle("TAPE_FILL_STYLE_DOT", 3, "", str, i, i2, f, i3, defaultConstructorMarker);
        TAPE_FILL_STYLE_STAR = new TapeFillStyle("TAPE_FILL_STYLE_STAR", 4, resManager.getString(C7485R.string.icon_tape_style_star_svg), resManager.getString(C7485R.string.icon_tape_shader_star_svg), C7485R.dimen.tape_fill_style_star_width, C7485R.dimen.tape_fill_style_star_height, f2, i4, defaultConstructorMarker2);
        TAPE_FILL_STYLE_JIUJIU = new TapeFillStyle("TAPE_FILL_STYLE_JIUJIU", 5, resManager.getString(C7485R.string.icon_tape_style_jiujiu_svg), resManager.getString(C7485R.string.icon_tape_shader_jiujiu_svg), C7485R.dimen.tape_fill_style_jiujiu_width, C7485R.dimen.tape_fill_style_jiujiu_height, resManager.getDimension(C7485R.dimen.tape_fill_style_jiujiu_padding));
        TAPE_FILL_STYLE_DOODLE = new TapeFillStyle("TAPE_FILL_STYLE_DOODLE", 6, resManager.getString(C7485R.string.icon_tape_style_doodle_svg), resManager.getString(C7485R.string.icon_tape_shader_doodle_svg), C7485R.dimen.tape_fill_style_doodle_width, C7485R.dimen.tape_fill_style_doodle_height, f2, i4, defaultConstructorMarker2);
        TAPE_FILL_STYLE_CUBE = new TapeFillStyle("TAPE_FILL_STYLE_CUBE", 7, resManager.getString(C7485R.string.icon_tape_style_cube_svg), resManager.getString(C7485R.string.icon_tape_shader_cube_svg), C7485R.dimen.tape_fill_style_cube_width, C7485R.dimen.tape_fill_style_cube_height, 0.0f, 16, defaultConstructorMarker);
        TAPE_FILL_STYLE_CUSTOM = new TapeFillStyle("TAPE_FILL_STYLE_CUSTOM", 8, "", null, 0, 0, f2, 30, defaultConstructorMarker2);
        TapeFillStyle[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private TapeFillStyle(String str, int i, String str2, String str3, int i2, int i3, float f) {
        this.iconRes = str2;
        this.shaderResPath = str3;
        this.width = i2;
        this.height = i3;
        this.padding = f;
    }

    @NotNull
    public static EnumEntries<TapeFillStyle> getEntries() {
        return $ENTRIES;
    }

    public static TapeFillStyle valueOf(String str) {
        return (TapeFillStyle) Enum.valueOf(TapeFillStyle.class, str);
    }

    public static TapeFillStyle[] values() {
        return (TapeFillStyle[]) $VALUES.clone();
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final String getIconRes() {
        return this.iconRes;
    }

    public final float getPadding() {
        return this.padding;
    }

    @Nullable
    public final String getShaderResPath() {
        return this.shaderResPath;
    }

    public final int getWidth() {
        return this.width;
    }

    public /* synthetic */ TapeFillStyle(String str, int i, String str2, String str3, int i2, int i3, float f, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, (i4 & 2) != 0 ? null : str3, (i4 & 4) != 0 ? -1 : i2, (i4 & 8) != 0 ? -1 : i3, (i4 & 16) != 0 ? 0.0f : f);
    }
}
