package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.protobuf.ByteString;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.TapeStrokeStyle;
import com.onyx.android.sdk.note.common.shape.object.TagShape;
import com.onyx.android.sdk.note.common.shape.pen.TapeShape;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004J\u001c\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\fJ\u0014\u0010\u0012\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\fJ\u001c\u0010\u0014\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0014\u0010\u0015\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\f\u0010\u0016\u001a\u00020\u0013*\u00020\u0002H\u0002¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "modelFromShape", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "model", "shapeFromModel", "", "linkBeanJson", "", "audioPaths", "", "isAudioLinkShape", "shapeList", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;", "toStashShapeInfoList", "", "b", "c", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeConvertUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeConvertUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeConvertUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,184:1\n1#2:185\n1549#3:186\n1620#3,3:187\n*S KotlinDebug\n*F\n+ 1 ShapeConvertUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeConvertUtils\n*L\n137#1:186\n137#1:187,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeConvertUtils {

    @NotNull
    public static final ShapeConvertUtils INSTANCE = new ShapeConvertUtils();

    /* renamed from: a */
    public final void m34044a(Shape shape) {
        if (shape.getType() == 39) {
            ShapeOptions.INSTANCE.setTapeStrokeStyle(shape, TapeShape.INSTANCE.isAllTapeClose() ? TapeStrokeStyle.STRIPES_FILL : TapeStrokeStyle.STROKE);
        }
    }

    /* renamed from: b */
    public final void m34045b(Shape shape, NoteProviderHolder noteProviderHolder, ShapeModel shapeModel) {
        if (shapeModel.getShapeType() == 42) {
            ShapeOptions.INSTANCE.setExcerptCollectionList(shape, noteProviderHolder.getExcerptCollectionProvider().loadExcerptCollectionListByQuoteId(shapeModel.getDocumentUniqueId(), shapeModel.getUniqueId()));
        }
    }

    /* renamed from: c */
    public final void m34046c(Shape shape, NoteProviderHolder noteProviderHolder) {
        ArrayList arrayList;
        List<SyncTagModel> tagList;
        int collectionSizeOrDefault;
        if (shape.getType() == 45) {
            ShapeTagBean createTagBean = TagShape.INSTANCE.createTagBean(shape);
            if (createTagBean == null || (tagList = createTagBean.getTagList()) == null) {
                arrayList = null;
            } else {
                List<SyncTagModel> list = tagList;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((SyncTagModel) it2.next()).getUniqueId());
                }
            }
            if (CollectionKt.isNullOrEmpty(arrayList)) {
                return;
            }
            ShapeTagBean shapeTagBean = new ShapeTagBean();
            CollectionKt.safeAddAll(shapeTagBean.getTagList(), NoteTagProviderKt.loadTagById(noteProviderHolder.getNoteProvider(), arrayList));
            ShapeOptions.INSTANCE.setTagBean(shape, shapeTagBean);
        }
    }

    public final boolean isAudioLinkShape(@NotNull String linkBeanJson, @NotNull List<String> audioPaths) {
        AudioInfoBean audioInfoBean;
        Intrinsics.checkNotNullParameter(linkBeanJson, "linkBeanJson");
        Intrinsics.checkNotNullParameter(audioPaths, "audioPaths");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) jSONUtils.parseObject(linkBeanJson, ShapeLinkBean.class);
        if (shapeLinkBean == null || !shapeLinkBean.isLinkAudioType() || (audioInfoBean = (AudioInfoBean) jSONUtils.parseObject(shapeLinkBean.getValue(), AudioInfoBean.class)) == null) {
            return false;
        }
        return audioInfoBean.isFileNameEqual(audioPaths);
    }

    @NotNull
    public final ShapeModel modelFromShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeModel shapeModel = new ShapeModel();
        shapeModel.setDocumentUniqueId(shape.getDocumentUniqueId());
        shapeModel.setPageUniqueId(shape.getPageUniqueId());
        shapeModel.setUniqueId(shape.getShapeUniqueId());
        shapeModel.setBoundingRect(shape.getBoundingRect());
        shapeModel.setColor(shape.getStrokeColor());
        shapeModel.setZorder(shape.getLayerId());
        shapeModel.setThickness(shape.getStrokeWidth());
        shapeModel.setShapeType(shape.getType());
        shapeModel.setGroupId(shape.getGroupId());
        shapeModel.setExtraAttributes(shape.getExtraBean());
        shapeModel.setTextStyle(shape.getTextStyle());
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        shapeModel.setShapeLineStyle(shapeOptions.getShapeLineStyle(shape));
        shapeModel.setShapeCreateArgs(shape.getShapeCreateArgs());
        shapeModel.setText(shape.getText());
        shapeModel.setRichText(shape.getRichText());
        shapeModel.setFillColor(shape.getFillColor());
        shapeModel.setRevisionId(shape.getRevisionId());
        shapeModel.setInfoRevisionId(shape.getInfoRevisionId());
        shapeModel.setTagIdList(shape.getTagIdList());
        shapeModel.setLinkIdList(shape.getLinkIdList());
        Matrix shapeMatrix = shape.getShapeMatrix();
        shapeModel.setMatrixValues(shapeMatrix != null ? MatrixKt.toMatrixValues(shapeMatrix) : null);
        ShapeResource resource = shapeOptions.getResource(shape);
        shapeModel.setResourceId(resource != null ? resource.getUniqueId() : null);
        shapeModel.setOptions(shape.getPersistOptions());
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        shapeModel.setCreatedAt(dateTimeUtil.getDateTime(shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String()));
        shapeModel.setUpdatedAt(dateTimeUtil.getDateTime(shape.getUpdatedAt()));
        shapeModel.setStatus(shape.getStatus());
        if (shape.getShapeSrcBean() != null || shape.getShapeReferenceBean() != null) {
            shapeModel.setShapeConnectionBean(new ShapeConnectionBean());
        }
        ShapeConnectionBean shapeConnectionBean = shapeModel.getShapeConnectionBean();
        if (shapeConnectionBean != null) {
            shapeConnectionBean.setShapeReferenceBean(shape.getShapeReferenceBean());
        }
        ShapeConnectionBean shapeConnectionBean2 = shapeModel.getShapeConnectionBean();
        if (shapeConnectionBean2 != null) {
            shapeConnectionBean2.setShapeSrcBean(shape.getShapeSrcBean());
        }
        return shapeModel;
    }

    @NotNull
    public final Shape shapeFromModel(@NotNull NoteProviderHolder providerHolder, @NotNull ShapeModel model) {
        Intrinsics.checkNotNullParameter(providerHolder, "providerHolder");
        Intrinsics.checkNotNullParameter(model, "model");
        Shape create = ShapeFactory.INSTANCE.create(model.getShapeType());
        create.setDocumentUniqueId(model.getDocumentUniqueId());
        create.setPageUniqueId(String.valueOf(model.getPageUniqueId()));
        create.setShapeUniqueId(model.getUniqueId());
        RectF boundingRect = model.getBoundingRect();
        if (boundingRect == null) {
            boundingRect = new RectF();
        }
        create.setBoundingRect(boundingRect);
        create.setStrokeColor(model.getColor());
        create.setLayerId(model.getZorder());
        create.setStrokeWidth(model.getThickness());
        create.setType(model.getShapeType());
        create.setGroupId(model.getGroupId());
        create.setExtraBean(model.getExtraAttributes());
        create.setTextStyle(model.getTextStyle());
        ShapeLineStyle shapeLineStyle = model.getShapeLineStyle();
        if (shapeLineStyle != null) {
            ShapeOptions.INSTANCE.setShapeLineStyle(create, shapeLineStyle);
        }
        ShapeCreateArgs shapeCreateArgs = model.getShapeCreateArgs();
        if (shapeCreateArgs == null) {
            shapeCreateArgs = new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);
        }
        create.setShapeCreateArgs(shapeCreateArgs);
        create.setText(model.getText());
        create.setRichText(model.getRichText());
        create.setFillColor(model.getFillColor());
        create.setRevisionId(String.valueOf(model.getRevisionId()));
        create.setInfoRevisionId(String.valueOf(model.getInfoRevisionId()));
        List<String> tagIdList = model.getTagIdList();
        create.setTagIdList(tagIdList != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) tagIdList) : null);
        List<String> linkIdList = model.getLinkIdList();
        create.setLinkIdList(linkIdList != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) linkIdList) : null);
        create.setShapeMatrix(MatrixKt.getMatrixByValues(model.getMatrixValues()));
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        shapeOptions.setResource(create, ResourceModels.INSTANCE.toShapeResource(providerHolder.getNoteResourceProvider().loadResourceModel(model.getResourceId())));
        create.setCreatedAt(new Date(model.getCreatedAt()));
        create.setUpdatedAt(new Date(model.getUpdatedAt()));
        create.setStatus(model.getStatus());
        OptionsRepo options = model.getOptions();
        if (options == null) {
            options = new OptionsRepo();
        }
        create.setPersistOptions(options);
        ShapeConnectionBean shapeConnectionBean = model.getShapeConnectionBean();
        create.setShapeSrcBean(shapeConnectionBean != null ? shapeConnectionBean.getShapeSrcBean() : null);
        ShapeConnectionBean shapeConnectionBean2 = model.getShapeConnectionBean();
        create.setShapeReferenceBean(shapeConnectionBean2 != null ? shapeConnectionBean2.getShapeReferenceBean() : null);
        ShapeConvertUtils shapeConvertUtils = INSTANCE;
        shapeConvertUtils.m34045b(create, providerHolder, model);
        shapeConvertUtils.m34046c(create, providerHolder);
        shapeConvertUtils.m34044a(create);
        shapeOptions.setSaved(create, true);
        return create;
    }

    @NotNull
    public final NoteShapeDocProto.ShapeInfoProtoList toStashShapeInfoList(@NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        ArrayList arrayList = new ArrayList();
        for (Shape shape : shapeList) {
            shape.updateShapeTime();
            NoteShapeDocProto.ShapeInfoProto.Builder buildShapeInfoProto = NoteShapePBDocument.INSTANCE.buildShapeInfoProto(modelFromShape(shape), ShapeOptions.INSTANCE.getResource(shape));
            buildShapeInfoProto.setPointList(ByteString.copyFrom(TouchPointList.INSTANCE.pointsToByteArray(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String())));
            NoteShapeDocProto.ShapeInfoProto build = buildShapeInfoProto.build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            arrayList.add(build);
        }
        NoteShapeDocProto.ShapeInfoProtoList build2 = NoteShapeDocProto.ShapeInfoProtoList.newBuilder().addAllProto(arrayList).build();
        Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
        return build2;
    }
}
