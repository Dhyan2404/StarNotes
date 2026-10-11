package com.onyx.android.sdk.note.common.shape;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.utils.RandomUtils;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007J\n\u0010\b\u001a\u00020\u0006*\u00020\u0007J\n\u0010\t\u001a\u00020\u0006*\u00020\u0007J\n\u0010\n\u001a\u00020\u0006*\u00020\u0007J\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0004J\n\u0010\r\u001a\u00020\u0006*\u00020\u0007J\n\u0010\u000e\u001a\u00020\u0006*\u00020\u0007J\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0007J\u0012\u0010\u0010\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0013\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0014\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0015\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0016\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0017\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeTests;", "", "()V", "SHAPE_TEST_POINT_COUNT", "", "addTestAttributes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "addTestExtraAttributes", "addTestLink", "addTestPersistOptions", "addTestPoints", "pointCount", "addTestStyle", "addTestTag", "addTestTransform", "isAttributesEqual", "", Constants.ATTRVAL_OTHER, "isExtraAttributesEqual", "isPersistOptionsEqual", "isPointsEqual", "isStyleEqual", "isTransformEqual", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeTests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTests.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1864#2,3:118\n*S KotlinDebug\n*F\n+ 1 ShapeTests.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTests\n*L\n34#1:118,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeTests {

    @NotNull
    public static final ShapeTests INSTANCE = new ShapeTests();
    public static final int SHAPE_TEST_POINT_COUNT = 100;

    public final void addTestAttributes(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        shape.setDocumentUniqueId(uUIDUtils.rawUUID());
        shape.setPageUniqueId(uUIDUtils.rawUUID());
        shape.setShapeUniqueId(uUIDUtils.rawUUID());
        shape.setSubPageUniqueId(uUIDUtils.rawUUID());
        shape.setLayerId(1);
        shape.setBoundingRect(RandomUtils.INSTANCE.randomRectF());
        shape.setGroupId(uUIDUtils.rawUUID());
        shape.setText(uUIDUtils.rawUUID());
        Random.Companion companion = Random.INSTANCE;
        shape.setShapeCreateArgs(new ShapeCreateArgs(companion.nextFloat(), companion.nextFloat(), null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32764, null));
        shape.setCreatedAt(new Date());
        shape.setUpdatedAt(new Date());
    }

    public final void addTestExtraAttributes(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        ShapeExtraBean shapeExtraBean = new ShapeExtraBean();
        shapeExtraBean.setTextContent(UUIDUtils.INSTANCE.rawUUID());
        shape.setExtraBean(shapeExtraBean);
    }

    public final void addTestLink(@NotNull Shape shape) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(uUIDUtils.rawUUID(), uUIDUtils.rawUUID());
        shape.setLinkIdList(mutableListOf);
    }

    public final void addTestPersistOptions(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        ShapePersistOptionsKt.setSubShapeType(shape, Random.INSTANCE.nextInt());
        ShapePersistOptionsKt.lock(shape, true);
    }

    public final void addTestPoints(@NotNull Shape shape, int i) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        TouchPointList touchPointList = new TouchPointList();
        for (int i2 = 0; i2 < i; i2++) {
            touchPointList.add(RandomUtils.INSTANCE.randomPoint());
        }
        shape.setPoints(touchPointList);
    }

    public final void addTestStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.setStrokeColor(-256);
        shape.setFillColor(-16776961);
        shape.setStrokeWidth(Random.INSTANCE.nextFloat());
    }

    public final void addTestTag(@NotNull Shape shape) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(uUIDUtils.rawUUID(), uUIDUtils.rawUUID());
        shape.setTagIdList(mutableListOf);
    }

    public final void addTestTransform(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Matrix matrix = new Matrix();
        Random.Companion companion = Random.INSTANCE;
        matrix.postTranslate(companion.nextFloat(), companion.nextFloat());
        matrix.postScale(companion.nextFloat(), companion.nextFloat());
        shape.setShapeMatrix(matrix);
    }

    public final boolean isAttributesEqual(@NotNull Shape shape, @NotNull Shape other) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return shape.getLayerId() == other.getLayerId() && Intrinsics.areEqual(shape.getText(), other.getText()) && Intrinsics.areEqual(shape.getShapeCreateArgs(), other.getShapeCreateArgs()) && Intrinsics.areEqual(shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String(), other.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String()) && Intrinsics.areEqual(shape.getUpdatedAt(), other.getUpdatedAt());
    }

    public final boolean isExtraAttributesEqual(@NotNull Shape shape, @NotNull Shape other) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        return Intrinsics.areEqual(jSONUtils.toJson(shape.getExtraBean()), jSONUtils.toJson(other.getExtraBean()));
    }

    public final boolean isPersistOptionsEqual(@NotNull Shape shape, @NotNull Shape other) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return ShapePersistOptionsKt.getSubShapeType$default(shape, 0, 1, null) == ShapePersistOptionsKt.getSubShapeType$default(other, 0, 1, null) && ShapePersistOptionsKt.isLocked(shape) == ShapePersistOptionsKt.isLocked(other);
    }

    public final boolean isPointsEqual(@NotNull Shape shape, @NotNull Shape other) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() != other.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size()) {
            return false;
        }
        int i = 0;
        for (Object obj : shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (!Intrinsics.areEqual((TouchPoint) obj, other.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().get(i))) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    public final boolean isStyleEqual(@NotNull Shape shape, @NotNull Shape other) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (shape.getStrokeColor() == other.getStrokeColor() && shape.getFillColor() == other.getFillColor()) {
            return (shape.getStrokeWidth() > other.getStrokeWidth() ? 1 : (shape.getStrokeWidth() == other.getStrokeWidth() ? 0 : -1)) == 0;
        }
        return false;
    }

    public final boolean isTransformEqual(@NotNull Shape shape, @NotNull Shape other) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (shape.getStrokeColor() == other.getStrokeColor() && shape.getFillColor() == other.getFillColor()) {
            return (shape.getStrokeWidth() > other.getStrokeWidth() ? 1 : (shape.getStrokeWidth() == other.getStrokeWidth() ? 0 : -1)) == 0;
        }
        return false;
    }
}
