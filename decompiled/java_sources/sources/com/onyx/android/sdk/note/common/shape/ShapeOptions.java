package com.onyx.android.sdk.note.common.shape;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.note.common.shape.TapeStrokeStyle;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.annotation.AnnotationInfoBean;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bJ\u0010KJ\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\u0012\u0010\u0007\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0003J\n\u0010\t\u001a\u00020\b*\u00020\u0002J\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\bJ\f\u0010\r\u001a\u0004\u0018\u00010\f*\u00020\u0002J\u0012\u0010\u000e\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\fJ\n\u0010\u0010\u001a\u00020\u000f*\u00020\u0002J\n\u0010\u0011\u001a\u00020\u000f*\u00020\u0002J\n\u0010\u0012\u001a\u00020\u0006*\u00020\u0002J\f\u0010\u0014\u001a\u0004\u0018\u00010\u0013*\u00020\u0002J\u0012\u0010\u0016\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0013J\n\u0010\u0017\u001a\u00020\u0003*\u00020\u0002J\u0012\u0010\u0019\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0003J\n\u0010\u001a\u001a\u00020\u0003*\u00020\u0002J\u0012\u0010\u001c\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0003J\n\u0010\u001e\u001a\u00020\u001d*\u00020\u0002J\u0012\u0010 \u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001dJ\n\u0010!\u001a\u00020\u0003*\u00020\u0002J\n\u0010#\u001a\u00020\"*\u00020\u0002J\u0012\u0010$\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\n\u001a\u00020\"J\u0010\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%*\u00020\u0002J\u0018\u0010)\u001a\u00020\u0006*\u00020\u00022\f\u0010(\u001a\b\u0012\u0004\u0012\u00020&0%J\u0014\u0010,\u001a\u00020\u0006*\u00020\u00022\b\u0010+\u001a\u0004\u0018\u00010*J\n\u0010-\u001a\u00020**\u00020\u0002J\n\u0010/\u001a\u00020.*\u00020\u0002R\u0014\u00102\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00104\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u00101R\u0014\u00106\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u00101R\u0014\u00108\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u00101R\u0014\u0010:\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b9\u00101R\u0014\u0010<\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b;\u00101R\u0014\u0010>\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b=\u00101R\u0014\u0010@\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b?\u00101R\u0014\u0010A\u001a\u00020\u001d8\u0006X\u0086T¢\u0006\u0006\n\u0004\bA\u00101R\u0014\u0010C\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\bB\u00101R\u0014\u0010E\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\bD\u00101R\u0014\u0010G\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\bF\u00101R\u0014\u0010I\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\bH\u00101¨\u0006L"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "isTransparent", "value", "", "setTransparent", "Landroid/graphics/Paint$Style;", "getPaintStyle", "style", "setPaintStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "getShapeLineStyle", "setShapeLineStyle", "Landroid/graphics/Matrix;", "getOrPutTransformingMatrix", "getTransformingMatrix", "resetTransformMatrix", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "getResource", "resource", "setResource", "isVisible", "visible", "setVisible", "isSaved", "saved", "setSaved", "", "getPagePositionV2", "position", "setPagePositionV2", "isTapeStrokeStyle", "Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;", "getTapeStrokeStyle", "setTapeStrokeStyle", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getExcerptCollectionList", "list", "setExcerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "bean", "setTagBean", "getTagBean", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "cloneRuntimeOptions", "a", Constants.STRING_SIG, ShapeOptions.KEY_IS_TRANSPARENT, "b", ShapeOptions.KEY_PAINT_STYLE, "c", ShapeOptions.KEY_SHAPE_LINT_STYLE, "d", ShapeOptions.KEY_TRANSFORMING_MATRIX, "e", ShapeOptions.KEY_SHAPE_RESOURCE, C6997f.f39671c, ShapeOptions.KEY_IS_VISIBLE, C6998g.f39679a, ShapeOptions.KEY_IS_SAVED, C6999h.f39688c, ShapeOptions.KEY_PAGE_POSITION_V2, ShapeOptions.KEY_TAPE_STROKE_STYLE, "i", "KEY_EXCERPT_COLLECTION_LIST", "j", ShapeOptions.KEY_TAG_BEAN, C4921e.f26537n, "KEY_ANNOTATION_INFO", "l", "KEY_EXCERPT_INFO", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeOptions.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptions\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,161:1\n12#2,4:162\n12#2,4:166\n*S KotlinDebug\n*F\n+ 1 ShapeOptions.kt\ncom/onyx/android/sdk/note/common/shape/ShapeOptions\n*L\n114#1:162,4\n128#1:166,4\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeOptions {

    @NotNull
    public static final ShapeOptions INSTANCE = new ShapeOptions();

    @NotNull
    public static final String KEY_TAPE_STROKE_STYLE = "KEY_TAPE_STROKE_STYLE";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_IS_TRANSPARENT = "KEY_IS_TRANSPARENT";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_PAINT_STYLE = "KEY_PAINT_STYLE";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_SHAPE_LINT_STYLE = "KEY_SHAPE_LINT_STYLE";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_TRANSFORMING_MATRIX = "KEY_TRANSFORMING_MATRIX";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_SHAPE_RESOURCE = "KEY_SHAPE_RESOURCE";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_IS_VISIBLE = "KEY_IS_VISIBLE";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_IS_SAVED = "KEY_IS_SAVED";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_PAGE_POSITION_V2 = "KEY_PAGE_POSITION_V2";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_EXCERPT_COLLECTION_LIST = "key_excerpt_collection_list";

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_TAG_BEAN = "KEY_TAG_BEAN";

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_ANNOTATION_INFO = "KEY_ANNOTATION_INFO";

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_EXCERPT_INFO = "KEY_EXCERPT_INFO";

    @NotNull
    public final OptionsRepo cloneRuntimeOptions(@NotNull final Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return OptionsRepo.INSTANCE.cloneOptionsRepo(shape.getRuntimeOptions(), new Function2<OptionsRepo, String, Unit>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeOptions$cloneRuntimeOptions$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(OptionsRepo optionsRepo, String str) {
                invoke2(optionsRepo, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull OptionsRepo newOptions, @NotNull String key) {
                ShapeLineStyle shapeLineStyle;
                AnnotationInfoBean annotationInfoBean;
                ShapeResource resource;
                ExcerptInfoBean excerptInfoBean;
                Sequence asSequence;
                Sequence map;
                Intrinsics.checkNotNullParameter(newOptions, "newOptions");
                Intrinsics.checkNotNullParameter(key, "key");
                Object obj = null;
                switch (key.hashCode()) {
                    case -1984170710:
                        if (key.equals(ShapeOptions.KEY_TRANSFORMING_MATRIX)) {
                            obj = MatrixKt.copy(ShapeOptions.INSTANCE.getTransformingMatrix(Shape.this));
                            break;
                        }
                        break;
                    case -1519911981:
                        if (key.equals(ShapeOptions.KEY_SHAPE_LINT_STYLE) && (shapeLineStyle = ShapeOptions.INSTANCE.getShapeLineStyle(Shape.this)) != null) {
                            obj = shapeLineStyle.m72355clone();
                            break;
                        }
                        break;
                    case -1353613890:
                        if (key.equals("KEY_ANNOTATION_INFO") && (annotationInfoBean = ShapePersistOptionsKt.getAnnotationInfoBean(Shape.this)) != null) {
                            obj = annotationInfoBean.m72351clone();
                            break;
                        }
                        break;
                    case -612362996:
                        if (key.equals(ShapeOptions.KEY_SHAPE_RESOURCE) && (resource = ShapeOptions.INSTANCE.getResource(Shape.this)) != null) {
                            obj = resource.m72360clone();
                            break;
                        }
                        break;
                    case -527778100:
                        if (key.equals("KEY_EXCERPT_INFO") && (excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(Shape.this)) != null) {
                            obj = excerptInfoBean.m72353clone();
                            break;
                        }
                        break;
                    case 1484178261:
                        if (key.equals(ShapeOptions.KEY_TAG_BEAN)) {
                            obj = ShapeOptions.INSTANCE.getTagBean(Shape.this).m72373clone();
                            break;
                        }
                        break;
                    case 1548238081:
                        if (key.equals(ShapeOptions.KEY_EXCERPT_COLLECTION_LIST)) {
                            asSequence = CollectionsKt___CollectionsKt.asSequence(ShapeOptions.INSTANCE.getExcerptCollectionList(Shape.this));
                            map = SequencesKt___SequencesKt.map(asSequence, new Function1<ExcerptCollectionModel, ExcerptCollectionModel>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeOptions$cloneRuntimeOptions$1$newValue$1
                                @Override // kotlin.jvm.functions.Function1
                                @NotNull
                                public final ExcerptCollectionModel invoke(@NotNull ExcerptCollectionModel it2) {
                                    Intrinsics.checkNotNullParameter(it2, "it");
                                    return it2.m72377clone();
                                }
                            });
                            obj = SequencesKt___SequencesKt.toMutableList(map);
                            break;
                        }
                        break;
                }
                if (obj != null) {
                    newOptions.put(key, obj);
                }
            }
        });
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList(@NotNull Shape shape) {
        List<ExcerptCollectionModel> emptyList;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        OptionsRepo runtimeOptions = shape.getRuntimeOptions();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        if (!runtimeOptions.getRepo().containsKey(KEY_EXCERPT_COLLECTION_LIST) || !(runtimeOptions.getRepo().get(KEY_EXCERPT_COLLECTION_LIST) instanceof List)) {
            return emptyList;
        }
        Object obj = runtimeOptions.getRepo().get(KEY_EXCERPT_COLLECTION_LIST);
        if (obj != null) {
            return (List) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<com.onyx.android.sdk.replicator.note.db.model.ExcerptCollectionModel>");
    }

    @NotNull
    public final Matrix getOrPutTransformingMatrix(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getRuntimeOptions().getOrPutMatrix(KEY_TRANSFORMING_MATRIX);
    }

    @NotNull
    public final String getPagePositionV2(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getRuntimeOptions().getString(KEY_PAGE_POSITION_V2, "");
    }

    @NotNull
    public final Paint.Style getPaintStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return Paint.Style.values()[shape.getRuntimeOptions().getInt(KEY_PAINT_STYLE, Paint.Style.STROKE.ordinal())];
    }

    @Nullable
    public final ShapeResource getResource(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return ShapeOptionsRepo.INSTANCE.getShapeResource(shape.getRuntimeOptions(), KEY_SHAPE_RESOURCE);
    }

    @Nullable
    public final ShapeLineStyle getShapeLineStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return ShapeOptionsRepo.INSTANCE.getShapeLineStyle(shape.getRuntimeOptions(), KEY_SHAPE_LINT_STYLE);
    }

    @NotNull
    public final ShapeTagBean getTagBean(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        OptionsRepo runtimeOptions = shape.getRuntimeOptions();
        ShapeTagBean shapeTagBean = new ShapeTagBean();
        if (!runtimeOptions.getRepo().containsKey(KEY_TAG_BEAN) || !(runtimeOptions.getRepo().get(KEY_TAG_BEAN) instanceof ShapeTagBean)) {
            return shapeTagBean;
        }
        Object obj = runtimeOptions.getRepo().get(KEY_TAG_BEAN);
        if (obj != null) {
            return (ShapeTagBean) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean");
    }

    @NotNull
    public final TapeStrokeStyle getTapeStrokeStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        TapeStrokeStyle.Companion companion = TapeStrokeStyle.INSTANCE;
        return companion.fromString(shape.getRuntimeOptions().getString(KEY_TAPE_STROKE_STYLE, companion.getDefaultTapeStrokeStyle().name()));
    }

    @NotNull
    public final Matrix getTransformingMatrix(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getRuntimeOptions().getMatrix(KEY_TRANSFORMING_MATRIX);
    }

    public final boolean isSaved(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getRuntimeOptions().getBoolean(KEY_IS_SAVED, false);
    }

    public final boolean isTapeStrokeStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return getTapeStrokeStyle(shape) == TapeStrokeStyle.STROKE;
    }

    public final boolean isTransparent(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getRuntimeOptions().getBoolean(KEY_IS_TRANSPARENT, false);
    }

    public final boolean isVisible(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getRuntimeOptions().getBoolean(KEY_IS_VISIBLE, true);
    }

    public final void resetTransformMatrix(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getRuntimeOptions().remove(KEY_TRANSFORMING_MATRIX);
    }

    public final void setExcerptCollectionList(@NotNull Shape shape, @NotNull List<ExcerptCollectionModel> list) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        shape.getRuntimeOptions().put(KEY_EXCERPT_COLLECTION_LIST, list);
    }

    public final void setPagePositionV2(@NotNull Shape shape, @NotNull String position) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(position, "position");
        shape.getRuntimeOptions().putString(KEY_PAGE_POSITION_V2, position);
    }

    public final void setPaintStyle(@NotNull Shape shape, @NotNull Paint.Style style) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        shape.getRuntimeOptions().putInt(KEY_PAINT_STYLE, style.ordinal());
    }

    public final void setResource(@NotNull Shape shape, @NotNull ShapeResource resource) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(resource, "resource");
        ShapeOptionsRepo.INSTANCE.setShapeResource(shape.getRuntimeOptions(), KEY_SHAPE_RESOURCE, resource);
    }

    public final void setSaved(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getRuntimeOptions().putBoolean(KEY_IS_SAVED, z);
    }

    public final void setShapeLineStyle(@NotNull Shape shape, @NotNull ShapeLineStyle style) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        ShapeOptionsRepo.INSTANCE.setShapeLineStyle(shape.getRuntimeOptions(), KEY_SHAPE_LINT_STYLE, style);
    }

    public final void setTagBean(@NotNull Shape shape, @Nullable ShapeTagBean shapeTagBean) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        if (shapeTagBean != null) {
            shape.getRuntimeOptions().put(KEY_TAG_BEAN, shapeTagBean);
        }
    }

    public final void setTapeStrokeStyle(@NotNull Shape shape, @NotNull TapeStrokeStyle style) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        shape.getRuntimeOptions().putString(KEY_TAPE_STROKE_STYLE, style.name());
    }

    public final void setTransparent(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getRuntimeOptions().putBoolean(KEY_IS_TRANSPARENT, z);
    }

    public final void setVisible(@NotNull Shape shape, boolean z) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        shape.getRuntimeOptions().putBoolean(KEY_IS_VISIBLE, z);
    }
}
