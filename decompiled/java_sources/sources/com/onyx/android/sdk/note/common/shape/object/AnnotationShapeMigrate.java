package com.onyx.android.sdk.note.common.shape.object;

import com.onyx.android.sdk.base.data.Migration;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;", "", "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;", "shape", "", "migrate", "a", "", "SHAPE_VERSION_LATEST", "I", "", "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;", "Ljava/util/List;", "migrators", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAnnotationShapeMigrate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationShapeMigrate.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1855#2:66\n1856#2:68\n1#3:67\n*S KotlinDebug\n*F\n+ 1 AnnotationShapeMigrate.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate\n*L\n35#1:66\n35#1:68\n*E\n"})
/* loaded from: classes8.dex */
public final class AnnotationShapeMigrate {

    @NotNull
    public static final AnnotationShapeMigrate INSTANCE = new AnnotationShapeMigrate();
    public static final int SHAPE_VERSION_LATEST = 1;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final List<C7502a> migrators;

    /* renamed from: com.onyx.android.sdk.note.common.shape.object.AnnotationShapeMigrate$a */
    /* loaded from: classes8.dex */
    public static final class C7502a implements Migration<AnnotationShape> {
        @Override // com.onyx.android.sdk.base.data.Migration
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void afterMigration(@NotNull AnnotationShape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            ShapePersistOptionsKt.setShapeVersion(shape, 1);
        }

        @Override // com.onyx.android.sdk.base.data.Migration
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void beforeMigration(@NotNull AnnotationShape annotationShape) {
            Migration.DefaultImpls.beforeMigration(this, annotationShape);
        }

        @Override // com.onyx.android.sdk.base.data.Migration
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void migrate(@NotNull AnnotationShape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            AnnotationInfoBean annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(shape);
            if (annotationInfoBean != null && annotationInfoBean.getStyle() == 0) {
                annotationInfoBean.setColor(ResManager.INSTANCE.getColor(C7485R.color.highlight_alpha_mask) & annotationInfoBean.getColor());
                ShapePersistOptionsKt.setAnnotationInfoBean(shape, annotationInfoBean);
                Debug.INSTANCE.m32059w(C7502a.class, "annotationInfoBean.color:" + Util.toHexString(annotationInfoBean.getColor()), new Object[0]);
            }
        }

        @Override // com.onyx.android.sdk.base.data.Migration
        public int getVersion() {
            return 0;
        }
    }

    static {
        List<C7502a> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new C7502a());
        migrators = listOf;
    }

    /* renamed from: a */
    public final boolean m33842a(AnnotationShape shape) {
        int shapeVersion = ShapePersistOptionsKt.getShapeVersion(shape);
        if (shapeVersion >= 1) {
            return false;
        }
        for (C7502a c7502a : migrators) {
            Integer valueOf = Integer.valueOf(ShapePersistOptionsKt.getShapeVersion(shape));
            if (!(valueOf.intValue() == c7502a.getVersion())) {
                valueOf = null;
            }
            if (valueOf != null) {
                valueOf.intValue();
                c7502a.beforeMigration(shape);
                c7502a.migrate(shape);
                c7502a.afterMigration(shape);
            }
        }
        return ShapePersistOptionsKt.getShapeVersion(shape) != shapeVersion;
    }

    public final boolean migrate(@NotNull AnnotationShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        boolean m33842a = m33842a(shape);
        if (m33842a) {
            shape.setInfoRevisionId("");
        }
        return m33842a;
    }
}
