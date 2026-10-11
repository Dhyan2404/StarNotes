package com.onyx.android.sdk.replicator.note.data.line;

import com.onyx.android.sdk.data.utils.JSONUtils;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \r2\u00020\u00012\u00020\u0002:\u0001\rB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0000H\u0016J\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "Ljava/io/Serializable;", "", "()V", "arrowStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;", "lineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "clone", "getArrowStyle", "getLineStyle", "setArrowStyle", "setLineStyle", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeLineStyle implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private ArrowStyle arrowStyle;

    @NotNull
    private LineStyle lineStyle = StraightLineStyle.INSTANCE.getINSTANCE();

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;", "", "()V", "parse", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "jsonString", "", "parseLineStyle", "", "shapeLineStyle", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void parseLineStyle(ShapeLineStyle shapeLineStyle, String jsonString) {
            boolean contains$default;
            String uncapitalize = StringUtils.uncapitalize(LineStyle.class.getSimpleName());
            Intrinsics.checkNotNull(uncapitalize);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) jsonString, (CharSequence) uncapitalize, false, 2, (Object) null);
            LineStyle parse = contains$default ? LineStyle.INSTANCE.parse(JSONUtils.INSTANCE.parseObject(jsonString).getString(uncapitalize)) : null;
            if (parse == null) {
                parse = LineStyle.INSTANCE.parse(jsonString);
            }
            if (parse != null) {
                shapeLineStyle.setLineStyle(parse);
            }
        }

        @Nullable
        public final ShapeLineStyle parse(@Nullable String jsonString) {
            ShapeLineStyle shapeLineStyle;
            if (StringUtils.isEmpty(jsonString) || (shapeLineStyle = (ShapeLineStyle) JSONUtils.INSTANCE.parseObject(jsonString, ShapeLineStyle.class)) == null) {
                return null;
            }
            Intrinsics.checkNotNull(jsonString);
            parseLineStyle(shapeLineStyle, jsonString);
            return shapeLineStyle;
        }

        private Companion() {
        }
    }

    @Nullable
    public final ArrowStyle getArrowStyle() {
        return this.arrowStyle;
    }

    @NotNull
    public final LineStyle getLineStyle() {
        return this.lineStyle;
    }

    @NotNull
    public final ShapeLineStyle setArrowStyle(@Nullable ArrowStyle arrowStyle) {
        this.arrowStyle = arrowStyle;
        return this;
    }

    @NotNull
    public final ShapeLineStyle setLineStyle(@NotNull LineStyle lineStyle) {
        Intrinsics.checkNotNullParameter(lineStyle, "lineStyle");
        this.lineStyle = lineStyle;
        return this;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeLineStyle m72355clone() {
        ShapeLineStyle parse = INSTANCE.parse(JSONUtils.INSTANCE.toJson(this));
        Intrinsics.checkNotNull(parse);
        return parse;
    }
}
