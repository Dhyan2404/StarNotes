package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;", "", "shapeReferenceBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "getShapeReferenceBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "setShapeReferenceBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V", "shapeSrcBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "getShapeSrcBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "setShapeSrcBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V", "ensureShapeSourceBean", "hasReferenceShapeBeanList", "", "resetConnection", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeConnection {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static ShapeSourceBean ensureShapeSourceBean(@NotNull ShapeConnection shapeConnection) {
            if (shapeConnection.getShapeSrcBean() == null) {
                shapeConnection.setShapeSrcBean(new ShapeSourceBean());
            }
            ShapeSourceBean shapeSrcBean = shapeConnection.getShapeSrcBean();
            Intrinsics.checkNotNull(shapeSrcBean);
            return shapeSrcBean;
        }

        public static boolean hasReferenceShapeBeanList(@NotNull ShapeConnection shapeConnection) {
            List<ShapeReferenceBean> referenceShapeBeanList;
            ShapeSourceBean shapeSrcBean = shapeConnection.getShapeSrcBean();
            if (shapeSrcBean == null || (referenceShapeBeanList = shapeSrcBean.getReferenceShapeBeanList()) == null) {
                return false;
            }
            return !referenceShapeBeanList.isEmpty();
        }

        public static void resetConnection(@NotNull ShapeConnection shapeConnection) {
            shapeConnection.setShapeReferenceBean(null);
            shapeConnection.setShapeSrcBean(null);
        }
    }

    @NotNull
    ShapeSourceBean ensureShapeSourceBean();

    @Nullable
    ShapeReferenceBean getShapeReferenceBean();

    @Nullable
    ShapeSourceBean getShapeSrcBean();

    boolean hasReferenceShapeBeanList();

    void resetConnection();

    void setShapeReferenceBean(@Nullable ShapeReferenceBean shapeReferenceBean);

    void setShapeSrcBean(@Nullable ShapeSourceBean shapeSourceBean);
}
