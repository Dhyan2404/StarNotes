package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\n\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0004J\u001a\u0010\r\u001a\u00020\u000b*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo;", "", "()V", "getShapeLineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "key", "", "getShapeResource", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "setShapeLineStyle", "", "style", "setShapeResource", "resource", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeOptionsRepo.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,26:1\n12#2,4:27\n12#2,4:31\n*S KotlinDebug\n*F\n+ 1 ShapeOptionsRepo.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptionsRepo\n*L\n10#1:27,4\n18#1:31,4\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeOptionsRepo {

    @NotNull
    public static final ShapeOptionsRepo INSTANCE = new ShapeOptionsRepo();

    @Nullable
    public final ShapeLineStyle getShapeLineStyle(@NotNull OptionsRepo optionsRepo, @NotNull String key) {
        Intrinsics.checkNotNullParameter(optionsRepo, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (optionsRepo.getRepo().containsKey(key)) {
            Object obj = optionsRepo.getRepo().get(key);
            if (obj != null ? obj instanceof ShapeLineStyle : true) {
                return (ShapeLineStyle) optionsRepo.getRepo().get(key);
            }
        }
        return null;
    }

    @Nullable
    public final ShapeResource getShapeResource(@NotNull OptionsRepo optionsRepo, @NotNull String key) {
        Intrinsics.checkNotNullParameter(optionsRepo, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (optionsRepo.getRepo().containsKey(key)) {
            Object obj = optionsRepo.getRepo().get(key);
            if (obj != null ? obj instanceof ShapeResource : true) {
                return (ShapeResource) optionsRepo.getRepo().get(key);
            }
        }
        return null;
    }

    public final void setShapeLineStyle(@NotNull OptionsRepo optionsRepo, @NotNull String key, @NotNull ShapeLineStyle style) {
        Intrinsics.checkNotNullParameter(optionsRepo, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(style, "style");
        optionsRepo.put(key, style);
    }

    public final void setShapeResource(@NotNull OptionsRepo optionsRepo, @NotNull String key, @NotNull ShapeResource resource) {
        Intrinsics.checkNotNullParameter(optionsRepo, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(resource, "resource");
        optionsRepo.put(key, resource);
    }
}
