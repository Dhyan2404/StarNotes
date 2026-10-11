package com.onyx.android.sdk.universal.editor.data;

import android.content.ClipData;
import com.google.common.net.HttpHeaders;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00152\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;", "", "()V", "clipData", "Landroid/content/ClipData;", "getClipData", "()Landroid/content/ClipData;", "setClipData", "(Landroid/content/ClipData;)V", "data", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "type", "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;", "getType", "()Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;", "setType", "(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;)V", "clearClipData", "", "updateClipData", "updateCopyData", "copyData", "Companion", "Type", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GlobalCopyData {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private ClipData clipData;

    @Nullable
    private Object data;

    @NotNull
    private Type type = Type.Link;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0005¢\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\rJ\u0014\u0010\u000e\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Companion;", "", "()V", "copy", "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;", "T", "type", "Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;", "data", "(Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData;", "copyShapeLink", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "copyShapeTag", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "copyShapes", "shapes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> GlobalCopyData copy(@NotNull Type type, T data) {
            Intrinsics.checkNotNullParameter(type, "type");
            GlobalCopyData globalCopyData = new GlobalCopyData();
            globalCopyData.setType(type);
            globalCopyData.setData(data);
            return globalCopyData;
        }

        @NotNull
        public final GlobalCopyData copyShapeLink(@NotNull ShapeLinkBean data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return copy(Type.Link, data);
        }

        @NotNull
        public final GlobalCopyData copyShapeTag(@NotNull ShapeTagBean data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return copy(Type.Tag, data);
        }

        @NotNull
        public final GlobalCopyData copyShapes(@NotNull List<? extends Shape> shapes) {
            Intrinsics.checkNotNullParameter(shapes, "shapes");
            return copy(Type.Shapes, ShapeCopyUtils.INSTANCE.cloneNewShapes(shapes, true));
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/GlobalCopyData$Type;", "", "(Ljava/lang/String;I)V", "Clipborad", HttpHeaders.LINK, "Tag", "Shapes", "Empty", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Type {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type Clipborad = new Type("Clipborad", 0);
        public static final Type Link = new Type(HttpHeaders.LINK, 1);
        public static final Type Tag = new Type("Tag", 2);
        public static final Type Shapes = new Type("Shapes", 3);
        public static final Type Empty = new Type("Empty", 4);

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{Clipborad, Link, Tag, Shapes, Empty};
        }

        static {
            Type[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Type(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public final void clearClipData() {
        this.type = Type.Empty;
        this.data = null;
        this.clipData = null;
    }

    @Nullable
    public final ClipData getClipData() {
        return this.clipData;
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public final void setClipData(@Nullable ClipData clipData) {
        this.clipData = clipData;
    }

    public final void setData(@Nullable Object obj) {
        this.data = obj;
    }

    public final void setType(@NotNull Type type) {
        Intrinsics.checkNotNullParameter(type, "<set-?>");
        this.type = type;
    }

    public final void updateClipData(@Nullable ClipData clipData) {
        if (this.data == null || clipData != null) {
            this.type = Type.Clipborad;
            this.data = null;
            this.clipData = clipData;
        }
    }

    public final void updateCopyData(@NotNull GlobalCopyData copyData) {
        Intrinsics.checkNotNullParameter(copyData, "copyData");
        this.data = copyData.data;
        this.type = copyData.type;
    }
}
