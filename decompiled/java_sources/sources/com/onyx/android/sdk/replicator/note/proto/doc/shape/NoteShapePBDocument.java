package com.onyx.android.sdk.replicator.note.proto.doc.shape;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.data.common.p027db.BaseModel;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.ResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.NoteShapeDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V", "parseFrom", "fin", "Ljava/io/FileInputStream;", "writeTo", "", "fout", "Ljava/io/FileOutputStream;", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteShapePBDocument extends BaseShapePBDocument<NoteShapeDocProto.ShapeInfoProtoList> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ,\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\u0011J \u0010\u0013\u001a\u00020\u00142\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016J\u001c\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\rJ\u001a\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;", "", "()V", "buildShapeInfoProto", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;", "shapeModel", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "shapeResource", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "fromShapeInfoProto", "shapeInfoProto", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;", "fromShapeInfoProtoList", "", "protoList", "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;", "filter", "Lkotlin/Function1;", "", "resetShapeModel", "", "newDocumentId", "", "newPageId", "toShapeInfoList", "resourceProvider", "Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;", "shapeModels", "toShapeInfoProto", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nNoteShapePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteShapePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ NoteShapeDocProto.ShapeInfoProto.Builder buildShapeInfoProto$default(Companion companion, ShapeModel shapeModel, ShapeResource shapeResource, int i, Object obj) {
            if ((i & 2) != 0) {
                shapeResource = null;
            }
            return companion.buildShapeInfoProto(shapeModel, shapeResource);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ List fromShapeInfoProtoList$default(Companion companion, NoteShapeDocProto.ShapeInfoProtoList shapeInfoProtoList, Function1 function1, int i, Object obj) {
            if ((i & 2) != 0) {
                function1 = new Function1<NoteShapeDocProto.ShapeInfoProto, Boolean>() { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument$Companion$fromShapeInfoProtoList$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NoteShapeDocProto.ShapeInfoProto it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.TRUE;
                    }
                };
            }
            return companion.fromShapeInfoProtoList(shapeInfoProtoList, function1);
        }

        public static /* synthetic */ NoteShapeDocProto.ShapeInfoProto toShapeInfoProto$default(Companion companion, ShapeModel shapeModel, ResourceProvider resourceProvider, int i, Object obj) {
            if ((i & 2) != 0) {
                resourceProvider = null;
            }
            return companion.toShapeInfoProto(shapeModel, resourceProvider);
        }

        @NotNull
        public final NoteShapeDocProto.ShapeInfoProto.Builder buildShapeInfoProto(@NotNull ShapeModel shapeModel, @Nullable ShapeResource shapeResource) {
            Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
            NoteShapeDocProto.ShapeInfoProto.Builder newBuilder = NoteShapeDocProto.ShapeInfoProto.newBuilder();
            BaseModel.Companion companion = BaseModel.INSTANCE;
            NoteShapeDocProto.ShapeInfoProto.Builder zorder = newBuilder.setUniqueId(companion.ensureNotNull(shapeModel.getUniqueId())).setCreatedAt(shapeModel.getCreatedAt()).setUpdatedAt(shapeModel.getUpdatedAt()).setColor(shapeModel.getColor()).setThickness(shapeModel.getThickness()).setZorder(shapeModel.getZorder());
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            NoteShapeDocProto.ShapeInfoProto.Builder options = zorder.setBoundingRect(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getBoundingRect()))).setMatrixValues(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getMatrixValues()))).setTextStyle(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getTextStyle()))).setText(companion.ensureNotNull(shapeModel.getText())).setRichText(companion.ensureNotNull(shapeModel.getRichText())).setFillColor(shapeModel.getFillColor()).setCreateArgs(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getShapeCreateArgs()))).setShapeType(shapeModel.getShapeType()).setGroupId(companion.ensureNotNull(shapeModel.getGroupId())).setShapeStatus(shapeModel.getStatus()).setRevisionId(companion.ensureNotNull(shapeModel.getRevisionId())).setResource(companion.ensureNotNull(shapeResource != null ? jSONUtils.toJson(shapeResource) : null)).setLineStyle(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getShapeLineStyle()))).setInfoRevisionId(companion.ensureNotNull(shapeModel.getInfoRevisionId())).setTagIdList(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getTagIdList()))).setExtra(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getExtraAttributes()))).setLinkIdList(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getLinkIdList()))).setConnectionBean(companion.ensureNotNull(jSONUtils.toJSONString(shapeModel.getShapeConnectionBean()))).setOptions(jSONUtils.toJSONString(shapeModel.getOptions()));
            Intrinsics.checkNotNullExpressionValue(options, "setOptions(...)");
            return options;
        }

        @NotNull
        public final ShapeModel fromShapeInfoProto(@NotNull NoteShapeDocProto.ShapeInfoProto shapeInfoProto) {
            Intrinsics.checkNotNullParameter(shapeInfoProto, "shapeInfoProto");
            ShapeModel shapeModel = new ShapeModel();
            String uniqueId = shapeInfoProto.getUniqueId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getUniqueId(...)");
            shapeModel.setUniqueId(uniqueId);
            shapeModel.setCreatedAt(shapeInfoProto.getCreatedAt());
            shapeModel.setUpdatedAt(shapeInfoProto.getUpdatedAt());
            shapeModel.setColor(shapeInfoProto.getColor());
            shapeModel.setThickness(shapeInfoProto.getThickness());
            shapeModel.setZorder(shapeInfoProto.getZorder());
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            shapeModel.setBoundingRect((RectF) jSONUtils.parseObject(shapeInfoProto.getBoundingRect(), RectF.class));
            shapeModel.setMatrixValues((MatrixValues) jSONUtils.parseObject(shapeInfoProto.getMatrixValues(), MatrixValues.class));
            shapeModel.setTextStyle((ShapeTextStyle) jSONUtils.parseObject(shapeInfoProto.getTextStyle(), ShapeTextStyle.class));
            shapeModel.setText(shapeInfoProto.getText());
            shapeModel.setRichText(shapeInfoProto.getRichText());
            shapeModel.setFillColor(shapeInfoProto.getFillColor());
            shapeModel.setShapeCreateArgs((ShapeCreateArgs) jSONUtils.parseObject(shapeInfoProto.getCreateArgs(), ShapeCreateArgs.class));
            shapeModel.setShapeType(shapeInfoProto.getShapeType());
            shapeModel.setGroupId(shapeInfoProto.getGroupId());
            shapeModel.setStatus(shapeInfoProto.getShapeStatus());
            shapeModel.setRevisionId(shapeInfoProto.getRevisionId());
            shapeModel.setExtraAttributes((ShapeExtraBean) jSONUtils.parseObject(shapeInfoProto.getExtra(), ShapeExtraBean.class));
            ShapeResource shapeResource = (ShapeResource) jSONUtils.parseObject(shapeInfoProto.getResource(), ShapeResource.class);
            if (shapeResource != null) {
                shapeModel.setResourceId(shapeResource.getUniqueId());
            }
            shapeModel.setShapeLineStyle((ShapeLineStyle) jSONUtils.parseObject(shapeInfoProto.getLineStyle(), ShapeLineStyle.class));
            shapeModel.setInfoRevisionId(shapeInfoProto.getInfoRevisionId());
            shapeModel.setTagIdList(jSONUtils.parseListString(shapeInfoProto.getTagIdList()));
            shapeModel.setLinkIdList(jSONUtils.parseListString(shapeInfoProto.getLinkIdList()));
            shapeModel.setOptions((OptionsRepo) jSONUtils.parseObject(shapeInfoProto.getOptions(), OptionsRepo.class));
            if (StringKt.isNotBlank(shapeInfoProto.getConnectionBean())) {
                shapeModel.setShapeConnectionBean((ShapeConnectionBean) jSONUtils.parseObject(shapeInfoProto.getConnectionBean(), ShapeConnectionBean.class));
            }
            return shapeModel;
        }

        @NotNull
        public final List<ShapeModel> fromShapeInfoProtoList(@Nullable NoteShapeDocProto.ShapeInfoProtoList protoList, @NotNull Function1<? super NoteShapeDocProto.ShapeInfoProto, Boolean> filter) {
            Intrinsics.checkNotNullParameter(filter, "filter");
            ArrayList arrayList = new ArrayList();
            if (protoList == null) {
                return arrayList;
            }
            int protoCount = protoList.getProtoCount();
            for (int i = 0; i < protoCount; i++) {
                NoteShapeDocProto.ShapeInfoProto proto = protoList.getProto(i);
                Intrinsics.checkNotNull(proto);
                if (filter.invoke(proto).booleanValue()) {
                    arrayList.add(fromShapeInfoProto(proto));
                }
            }
            return arrayList;
        }

        public final void resetShapeModel(@Nullable ShapeModel shapeModel, @NotNull String newDocumentId, @NotNull String newPageId) {
            Intrinsics.checkNotNullParameter(newDocumentId, "newDocumentId");
            Intrinsics.checkNotNullParameter(newPageId, "newPageId");
            if (shapeModel == null) {
                return;
            }
            shapeModel.setPageUniqueId(newPageId);
            shapeModel.setDocumentUniqueId(newDocumentId);
            shapeModel.setUniqueId(UUIDUtils.INSTANCE.rawUUID());
            shapeModel.setGroupId(null);
        }

        @NotNull
        public final NoteShapeDocProto.ShapeInfoProtoList toShapeInfoList(@NotNull ResourceProvider resourceProvider, @NotNull List<ShapeModel> shapeModels) {
            Intrinsics.checkNotNullParameter(resourceProvider, "resourceProvider");
            Intrinsics.checkNotNullParameter(shapeModels, "shapeModels");
            ArrayList arrayList = new ArrayList();
            Iterator<ShapeModel> it2 = shapeModels.iterator();
            while (it2.hasNext()) {
                arrayList.add(toShapeInfoProto(it2.next(), resourceProvider));
            }
            NoteShapeDocProto.ShapeInfoProtoList build = NoteShapeDocProto.ShapeInfoProtoList.newBuilder().addAllProto(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        @NotNull
        public final NoteShapeDocProto.ShapeInfoProto toShapeInfoProto(@NotNull ShapeModel shapeModel, @Nullable ResourceProvider resourceProvider) {
            ResourceModel loadResourceModel;
            Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
            NoteShapeDocProto.ShapeInfoProto build = buildShapeInfoProto(shapeModel, (!StringKt.isNotBlank(shapeModel.getRevisionId()) || resourceProvider == null || (loadResourceModel = resourceProvider.loadResourceModel(shapeModel.getResourceId())) == null) ? null : ResourceModels.INSTANCE.toShapeResource(loadResourceModel)).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            return build;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteShapePBDocument(@NotNull ShapeDocumentArgs args) {
        super(args);
        Intrinsics.checkNotNullParameter(args, "args");
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    public void writeTo(@Nullable FileOutputStream fout) throws IOException {
        NoteShapeDocProto.ShapeInfoProtoList data = getData();
        Intrinsics.checkNotNull(data);
        data.writeTo(fout);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument
    @NotNull
    public NoteShapeDocProto.ShapeInfoProtoList parseFrom(@Nullable FileInputStream fin) throws IOException {
        NoteShapeDocProto.ShapeInfoProtoList parseFrom = NoteShapeDocProto.ShapeInfoProtoList.parseFrom(fin);
        Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(...)");
        return parseFrom;
    }
}
