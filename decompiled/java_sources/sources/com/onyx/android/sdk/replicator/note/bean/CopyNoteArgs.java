package com.onyx.android.sdk.replicator.note.bean;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.data.info.Association;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.extenstion.ShapeModelOptionsKt;
import com.onyx.android.sdk.replicator.note.proto.data.ExtraInfoBean;
import com.onyx.android.sdk.replicator.note.proto.doc.ShapePBDocumentUtils;
import com.onyx.android.sdk.replicator.note.utils.ResourceCopyUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u000e\u0010l\u001a\u00020j2\u0006\u0010k\u001a\u00020RJ\u0016\u0010m\u001a\u00020j2\u0006\u0010n\u001a\u00020\u00132\u0006\u0010o\u001a\u00020\u0013J\u0018\u0010p\u001a\u00020j2\u0006\u0010k\u001a\u00020R2\u0006\u0010q\u001a\u00020rH\u0002J\u0010\u0010s\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u0010\u0010t\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u0018\u0010u\u001a\u00020j2\u0006\u0010k\u001a\u00020R2\u0006\u0010v\u001a\u00020\u0000H\u0002J\u0018\u0010w\u001a\u00020j2\u0006\u0010k\u001a\u00020R2\u0006\u0010v\u001a\u00020\u0000H\u0002J\u0010\u0010x\u001a\u00020j2\u0006\u0010k\u001a\u00020RH\u0002J\u000e\u0010y\u001a\u00020\u00132\u0006\u0010z\u001a\u00020\u0013J\u001c\u0010{\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010|2\f\u0010}\u001a\b\u0012\u0004\u0012\u00020\u00130|J\u000e\u0010~\u001a\u00020\u00132\u0006\u0010\u007f\u001a\u00020\u0013J\u0010\u0010\u0080\u0001\u001a\u00020\u00132\u0007\u0010\u0081\u0001\u001a\u00020\u0013J\u001e\u0010\u0082\u0001\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010|2\r\u0010\u0083\u0001\u001a\b\u0012\u0004\u0012\u00020\u00130|J\u0011\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00132\u0006\u0010z\u001a\u00020\u0013J\u0014\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00132\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0013J\u0011\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00132\u0006\u0010n\u001a\u00020\u0013J\u0007\u0010\u0088\u0001\u001a\u00020\u0006J\u0007\u0010\u0089\u0001\u001a\u00020jJ\u0011\u0010\u008a\u0001\u001a\u00020j2\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010,\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010.\"\u0004\b3\u00100R\u001c\u00104\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010.\"\u0004\b6\u00100R\u001c\u00107\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010.\"\u0004\b9\u00100R \u0010:\u001a\b\u0012\u0004\u0012\u00020<0;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001a\u0010G\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\b\"\u0004\bI\u0010\nR&\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010\u0016\"\u0004\bL\u0010\u0018R&\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130NX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010\u0016\"\u0004\bP\u0010\u0018R \u0010Q\u001a\b\u0012\u0004\u0012\u00020R0;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010>\"\u0004\bT\u0010@R(\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010\u0016\"\u0004\bW\u0010\u0018R\u001d\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\bY\u0010\u0016R\u001a\u0010Z\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010.\"\u0004\b\\\u00100R\u001a\u0010]\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010.\"\u0004\b_\u00100R&\u0010`\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010\u0016\"\u0004\bb\u0010\u0018R \u0010c\u001a\b\u0012\u0004\u0012\u00020R0;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010>\"\u0004\be\u0010@R\u001c\u0010f\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u0010.\"\u0004\bh\u00100¨\u0006\u008d\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "", "()V", "abort", "Ljava/util/concurrent/atomic/AtomicBoolean;", "copyGlobalPage", "", "getCopyGlobalPage", Constants.BOOLEAN_VALUE_SIG, "setCopyGlobalPage", "(Z)V", "copyPageRect", "Landroid/graphics/RectF;", "getCopyPageRect", "()Landroid/graphics/RectF;", "setCopyPageRect", "(Landroid/graphics/RectF;)V", "copyPageScaleMap", "", "", "", "getCopyPageScaleMap", "()Ljava/util/Map;", "setCopyPageScaleMap", "(Ljava/util/Map;)V", "copyToPageIndex", "", "getCopyToPageIndex", "()Ljava/lang/Integer;", "setCopyToPageIndex", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "docNote", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getDocNote", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setDocNote", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "dstAssociation", "Lcom/onyx/android/sdk/replicator/note/data/info/Association;", "getDstAssociation", "()Lcom/onyx/android/sdk/replicator/note/data/info/Association;", "setDstAssociation", "(Lcom/onyx/android/sdk/replicator/note/data/info/Association;)V", "dstDirFilePath", "getDstDirFilePath", "()Ljava/lang/String;", "setDstDirFilePath", "(Ljava/lang/String;)V", "dstDocId", "getDstDocId", "setDstDocId", "dstGroupId", "getDstGroupId", "setDstGroupId", "dstParentId", "getDstParentId", "setDstParentId", "excerptCollectionList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getExcerptCollectionList", "()Ljava/util/List;", "setExcerptCollectionList", "(Ljava/util/List;)V", "extraInfoBean", "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "getExtraInfoBean", "()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;", "setExtraInfoBean", "(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)V", "generateUniqueContentFile", "getGenerateUniqueContentFile", "setGenerateUniqueContentFile", "linkIdCopyMap", "getLinkIdCopyMap", "setLinkIdCopyMap", "pageIdCopyMap", "", "getPageIdCopyMap", "setPageIdCopyMap", "pendingLinkShapeModelList", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "getPendingLinkShapeModelList", "setPendingLinkShapeModelList", "resourceIdCopyMap", "getResourceIdCopyMap", "setResourceIdCopyMap", "shapeIdCopyMap", "getShapeIdCopyMap", "srcDirFilePath", "getSrcDirFilePath", "setSrcDirFilePath", "srcDocId", "getSrcDocId", "setSrcDocId", "tagIdCopyMap", "getTagIdCopyMap", "setTagIdCopyMap", "updateConnectionShapeModelList", "getUpdateConnectionShapeModelList", "setUpdateConnectionShapeModelList", Constant.TAG_USER_ID, "getUserId", "setUserId", "addConnectDataShapeModel", "", "shapeModel", "addPendingShapeModel", "addShapeId", "srcShapeId", "dstShapeId", "addShapeLinkBeanShapeModel", "linkBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "copyExcerptShapeData", "copyLinkShapeData", "copyLinkShapeShapeListData", "copyNoteArgs", "copyShapeConnectionData", "copyShapeModelExtraData", "ensureCopyLinkId", "srcLinkId", "ensureCopyLinkIdList", "", "srcLinkIds", "ensureCopyResourceId", "srcResourceId", "ensureCopyTagId", "srcTagId", "ensureCopyTagIdList", "srcTagIds", "getCopyLinkId", "getCopyPageId", "srcPageId", "getCopyShapeId", "isAbort", "setAbort", "updateAndSavePendingShapeModels", "noteProviderHolder", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCopyNoteArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1855#2,2:241\n1855#2,2:243\n1477#2:245\n1502#2,3:246\n1505#2,3:256\n1855#2,2:261\n1603#2,9:263\n1855#2:272\n1856#2:274\n1612#2:275\n372#3,7:249\n215#4,2:259\n1#5:273\n*S KotlinDebug\n*F\n+ 1 CopyNoteArgs.kt\ncom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs\n*L\n137#1:241,2\n138#1:243,2\n141#1:245\n141#1:246,3\n141#1:256,3\n159#1:261,2\n177#1:263,9\n177#1:272\n177#1:274\n177#1:275\n141#1:249,7\n142#1:259,2\n177#1:273\n*E\n"})
/* loaded from: classes8.dex */
public final class CopyNoteArgs {

    @NotNull
    private final AtomicBoolean abort;
    private boolean copyGlobalPage;

    @Nullable
    private RectF copyPageRect;

    @NotNull
    private Map<String, Float> copyPageScaleMap;

    @Nullable
    private Integer copyToPageIndex;

    @Nullable
    private SyncNoteModel docNote;

    @Nullable
    private Association dstAssociation;

    @NotNull
    private String dstDirFilePath;

    @Nullable
    private String dstGroupId;

    @Nullable
    private String dstParentId;

    @NotNull
    private List<ExcerptCollectionModel> excerptCollectionList;

    @Nullable
    private ExtraInfoBean extraInfoBean;
    private boolean generateUniqueContentFile;

    @NotNull
    private Map<String, String> linkIdCopyMap;

    @NotNull
    private Map<String, String> pageIdCopyMap;

    @NotNull
    private List<ShapeModel> pendingLinkShapeModelList;

    @NotNull
    private Map<String, String> resourceIdCopyMap;

    @NotNull
    private final Map<String, String> shapeIdCopyMap;

    @NotNull
    private String srcDirFilePath;

    @NotNull
    private Map<String, String> tagIdCopyMap;

    @NotNull
    private List<ShapeModel> updateConnectionShapeModelList;

    @Nullable
    private String userId;

    @NotNull
    private String srcDocId = "";

    @NotNull
    private String dstDocId = UUIDUtils.INSTANCE.rawUUID();

    public CopyNoteArgs() {
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        this.srcDirFilePath = syncConstant.appDocDir();
        this.dstDirFilePath = syncConstant.appDocDir();
        this.abort = new AtomicBoolean(false);
        this.excerptCollectionList = new ArrayList();
        this.pageIdCopyMap = new LinkedHashMap();
        this.shapeIdCopyMap = new LinkedHashMap();
        this.resourceIdCopyMap = new LinkedHashMap();
        this.tagIdCopyMap = new LinkedHashMap();
        this.linkIdCopyMap = new LinkedHashMap();
        this.updateConnectionShapeModelList = new ArrayList();
        this.pendingLinkShapeModelList = new ArrayList();
        this.copyPageScaleMap = new LinkedHashMap();
        this.generateUniqueContentFile = true;
    }

    private final void addConnectDataShapeModel(ShapeModel shapeModel) {
        if (shapeModel.hasShapeConnectData()) {
            this.updateConnectionShapeModelList.add(shapeModel);
        }
    }

    private final void addShapeLinkBeanShapeModel(ShapeModel shapeModel, ShapeLinkBean linkBean) {
        LinkDocBean docBean = linkBean.getDocBean();
        if (CollectionKt.isNonBlank(docBean != null ? docBean.getShapeIdList() : null)) {
            this.pendingLinkShapeModelList.add(shapeModel);
        }
    }

    private final void copyExcerptShapeData(ShapeModel shapeModel) {
        ExcerptInfoBean excerptInfoBean = ShapeModelOptionsKt.getExcerptInfoBean(shapeModel);
        if (excerptInfoBean != null) {
            excerptInfoBean.setUniqueId(shapeModel.getUniqueId());
            excerptInfoBean.setImgId(ensureCopyResourceId(excerptInfoBean.getImgId()));
            ShapeModelOptionsKt.setExcerptInfoBean(shapeModel, excerptInfoBean);
        }
    }

    private final void copyLinkShapeData(ShapeModel shapeModel) {
        String key;
        LinkDocBean docBean;
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) jSONUtils.parseObject(shapeModel.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null || (key = shapeLinkBean.getKey()) == null) {
            return;
        }
        int hashCode = key.hashCode();
        if (hashCode == -668646663) {
            if (key.equals(ShapeLinkType.LINK_PAGE_NUMBER)) {
                Map<String, String> map = this.pageIdCopyMap;
                String value = shapeLinkBean.getValue();
                shapeLinkBean.setValue(map.get(value != null ? value : ""));
                shapeModel.setText(jSONUtils.toJson(shapeLinkBean));
                return;
            }
            return;
        }
        if (hashCode != 2402290) {
            if (hashCode == 62628790 && key.equals("AUDIO")) {
                AudioInfoBean audioInfoBean = (AudioInfoBean) jSONUtils.parseObject(shapeLinkBean.getValue(), AudioInfoBean.class);
                if (audioInfoBean != null) {
                    String audioPath = audioInfoBean.getAudioPath();
                    if (audioPath != null) {
                        LinkDocBean docBean2 = shapeLinkBean.getDocBean();
                        r6 = docBean2 != null ? docBean2.getDocumentId() : null;
                        r6 = StringsKt__StringsJVMKt.replace$default(audioPath, r6 == null ? "" : r6, shapeModel.getDocumentUniqueId(), false, 4, (Object) null);
                    }
                    audioInfoBean.setAudioPath(r6);
                }
                shapeLinkBean.setValue(jSONUtils.toJson(audioInfoBean));
                LinkDocBean docBean3 = shapeLinkBean.getDocBean();
                if (docBean3 != null) {
                    docBean3.setDocumentId(shapeModel.getDocumentUniqueId());
                }
                shapeModel.setText(jSONUtils.toJson(shapeLinkBean));
                return;
            }
            return;
        }
        if (key.equals("NOTE")) {
            String str = this.srcDocId;
            LinkDocBean docBean4 = shapeLinkBean.getDocBean();
            if (Intrinsics.areEqual(str, docBean4 != null ? docBean4.getDocumentId() : null)) {
                LinkDocBean docBean5 = shapeLinkBean.getDocBean();
                if (docBean5 != null) {
                    docBean5.setDocumentId(shapeModel.getDocumentUniqueId());
                }
                Map<String, String> map2 = this.pageIdCopyMap;
                LinkDocBean docBean6 = shapeLinkBean.getDocBean();
                String str2 = map2.get(docBean6 != null ? docBean6.getPageId() : null);
                if (str2 != null && (docBean = shapeLinkBean.getDocBean()) != null) {
                    docBean.setPageId(str2);
                }
                addShapeLinkBeanShapeModel(shapeModel, shapeLinkBean);
            }
            shapeModel.setText(jSONUtils.toJson(shapeLinkBean));
        }
    }

    private final void copyLinkShapeShapeListData(ShapeModel shapeModel, CopyNoteArgs copyNoteArgs) {
        LinkDocBean docBean;
        List<String> shapeIdList;
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shapeModel.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null || !Intrinsics.areEqual(shapeLinkBean.getKey(), "NOTE") || (docBean = shapeLinkBean.getDocBean()) == null || (shapeIdList = docBean.getShapeIdList()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = shapeIdList.iterator();
        while (it2.hasNext()) {
            String str = copyNoteArgs.shapeIdCopyMap.get((String) it2.next());
            if (str != null) {
                arrayList.add(str);
            }
        }
        LinkDocBean docBean2 = shapeLinkBean.getDocBean();
        if (docBean2 != null) {
            docBean2.setShapeIdList(arrayList);
        }
        shapeModel.setText(JSONUtils.INSTANCE.toJson(shapeLinkBean));
    }

    private final void copyShapeConnectionData(ShapeModel shapeModel, CopyNoteArgs copyNoteArgs) {
        ShapeSourceBean shapeSrcBean;
        List<ShapeReferenceBean> referenceShapeBeanList;
        ShapeReferenceBean shapeReferenceBean;
        ShapeConnectionBean shapeConnectionBean = shapeModel.getShapeConnectionBean();
        if (shapeConnectionBean != null && (shapeReferenceBean = shapeConnectionBean.getShapeReferenceBean()) != null) {
            String copyShapeId = copyNoteArgs.getCopyShapeId(shapeReferenceBean.getShapeId());
            if (copyShapeId == null) {
                copyShapeId = "";
            }
            shapeReferenceBean.setShapeId(copyShapeId);
            String copyPageId = copyNoteArgs.getCopyPageId(shapeReferenceBean.getPageId());
            if (copyPageId == null) {
                copyPageId = "";
            }
            shapeReferenceBean.setPageId(copyPageId);
        }
        ShapeConnectionBean shapeConnectionBean2 = shapeModel.getShapeConnectionBean();
        if (shapeConnectionBean2 == null || (shapeSrcBean = shapeConnectionBean2.getShapeSrcBean()) == null || (referenceShapeBeanList = shapeSrcBean.getReferenceShapeBeanList()) == null) {
            return;
        }
        for (ShapeReferenceBean shapeReferenceBean2 : referenceShapeBeanList) {
            String copyShapeId2 = copyNoteArgs.getCopyShapeId(shapeReferenceBean2.getShapeId());
            if (copyShapeId2 == null) {
                copyShapeId2 = "";
            }
            shapeReferenceBean2.setShapeId(copyShapeId2);
            String copyPageId2 = copyNoteArgs.getCopyPageId(shapeReferenceBean2.getPageId());
            if (copyPageId2 == null) {
                copyPageId2 = "";
            }
            shapeReferenceBean2.setPageId(copyPageId2);
        }
    }

    private final void copyShapeModelExtraData(ShapeModel shapeModel) {
        copyExcerptShapeData(shapeModel);
        if (shapeModel.getShapeType() == 33) {
            copyLinkShapeData(shapeModel);
        }
    }

    public final void addPendingShapeModel(@NotNull ShapeModel shapeModel) {
        Intrinsics.checkNotNullParameter(shapeModel, "shapeModel");
        addConnectDataShapeModel(shapeModel);
        copyShapeModelExtraData(shapeModel);
    }

    public final void addShapeId(@NotNull String srcShapeId, @NotNull String dstShapeId) {
        Intrinsics.checkNotNullParameter(srcShapeId, "srcShapeId");
        Intrinsics.checkNotNullParameter(dstShapeId, "dstShapeId");
        this.shapeIdCopyMap.put(srcShapeId, dstShapeId);
    }

    @NotNull
    public final String ensureCopyLinkId(@NotNull String srcLinkId) {
        Intrinsics.checkNotNullParameter(srcLinkId, "srcLinkId");
        boolean z = true;
        if (srcLinkId.length() == 0) {
            return srcLinkId;
        }
        String str = this.linkIdCopyMap.get(srcLinkId);
        if (str != null && str.length() != 0) {
            z = false;
        }
        if (!z) {
            return str;
        }
        String rawUUID = UUIDUtils.INSTANCE.rawUUID();
        this.linkIdCopyMap.put(srcLinkId, rawUUID);
        return rawUUID;
    }

    @Nullable
    public final List<String> ensureCopyLinkIdList(@NotNull List<String> srcLinkIds) {
        Intrinsics.checkNotNullParameter(srcLinkIds, "srcLinkIds");
        if (srcLinkIds.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = srcLinkIds.iterator();
        while (it2.hasNext()) {
            arrayList.add(ensureCopyLinkId(it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public final String ensureCopyResourceId(@NotNull String srcResourceId) {
        Intrinsics.checkNotNullParameter(srcResourceId, "srcResourceId");
        boolean z = true;
        if (srcResourceId.length() == 0) {
            return srcResourceId;
        }
        String str = this.resourceIdCopyMap.get(srcResourceId);
        if (str != null && str.length() != 0) {
            z = false;
        }
        if (!z) {
            return str;
        }
        String copyResourceId = ResourceCopyUtils.INSTANCE.copyResourceId(srcResourceId);
        this.resourceIdCopyMap.put(srcResourceId, copyResourceId);
        return copyResourceId;
    }

    @NotNull
    public final String ensureCopyTagId(@NotNull String srcTagId) {
        Intrinsics.checkNotNullParameter(srcTagId, "srcTagId");
        boolean z = true;
        if (srcTagId.length() == 0) {
            return srcTagId;
        }
        String str = this.tagIdCopyMap.get(srcTagId);
        if (str != null && str.length() != 0) {
            z = false;
        }
        if (!z) {
            return str;
        }
        String rawUUID = UUIDUtils.INSTANCE.rawUUID();
        this.tagIdCopyMap.put(srcTagId, rawUUID);
        return rawUUID;
    }

    @Nullable
    public final List<String> ensureCopyTagIdList(@NotNull List<String> srcTagIds) {
        Intrinsics.checkNotNullParameter(srcTagIds, "srcTagIds");
        if (srcTagIds.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = srcTagIds.iterator();
        while (it2.hasNext()) {
            arrayList.add(ensureCopyTagId(it2.next()));
        }
        return arrayList;
    }

    public final boolean getCopyGlobalPage() {
        return this.copyGlobalPage;
    }

    @Nullable
    public final String getCopyLinkId(@NotNull String srcLinkId) {
        Intrinsics.checkNotNullParameter(srcLinkId, "srcLinkId");
        return this.linkIdCopyMap.get(srcLinkId);
    }

    @Nullable
    public final String getCopyPageId(@Nullable String srcPageId) {
        return this.pageIdCopyMap.get(srcPageId);
    }

    @Nullable
    public final RectF getCopyPageRect() {
        return this.copyPageRect;
    }

    @NotNull
    public final Map<String, Float> getCopyPageScaleMap() {
        return this.copyPageScaleMap;
    }

    @Nullable
    public final String getCopyShapeId(@NotNull String srcShapeId) {
        Intrinsics.checkNotNullParameter(srcShapeId, "srcShapeId");
        return this.shapeIdCopyMap.get(srcShapeId);
    }

    @Nullable
    public final Integer getCopyToPageIndex() {
        return this.copyToPageIndex;
    }

    @Nullable
    public final SyncNoteModel getDocNote() {
        return this.docNote;
    }

    @Nullable
    public final Association getDstAssociation() {
        return this.dstAssociation;
    }

    @NotNull
    public final String getDstDirFilePath() {
        return this.dstDirFilePath;
    }

    @NotNull
    public final String getDstDocId() {
        return this.dstDocId;
    }

    @Nullable
    public final String getDstGroupId() {
        return this.dstGroupId;
    }

    @Nullable
    public final String getDstParentId() {
        return this.dstParentId;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @Nullable
    public final ExtraInfoBean getExtraInfoBean() {
        return this.extraInfoBean;
    }

    public final boolean getGenerateUniqueContentFile() {
        return this.generateUniqueContentFile;
    }

    @NotNull
    public final Map<String, String> getLinkIdCopyMap() {
        return this.linkIdCopyMap;
    }

    @NotNull
    public final Map<String, String> getPageIdCopyMap() {
        return this.pageIdCopyMap;
    }

    @NotNull
    public final List<ShapeModel> getPendingLinkShapeModelList() {
        return this.pendingLinkShapeModelList;
    }

    @NotNull
    public final Map<String, String> getResourceIdCopyMap() {
        return this.resourceIdCopyMap;
    }

    @NotNull
    public final Map<String, String> getShapeIdCopyMap() {
        return this.shapeIdCopyMap;
    }

    @NotNull
    public final String getSrcDirFilePath() {
        return this.srcDirFilePath;
    }

    @NotNull
    public final String getSrcDocId() {
        return this.srcDocId;
    }

    @NotNull
    public final Map<String, String> getTagIdCopyMap() {
        return this.tagIdCopyMap;
    }

    @NotNull
    public final List<ShapeModel> getUpdateConnectionShapeModelList() {
        return this.updateConnectionShapeModelList;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public final boolean isAbort() {
        return this.abort.get();
    }

    public final void setAbort() {
        this.abort.set(true);
    }

    public final void setCopyGlobalPage(boolean z) {
        this.copyGlobalPage = z;
    }

    public final void setCopyPageRect(@Nullable RectF rectF) {
        this.copyPageRect = rectF;
    }

    public final void setCopyPageScaleMap(@NotNull Map<String, Float> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.copyPageScaleMap = map;
    }

    public final void setCopyToPageIndex(@Nullable Integer num) {
        this.copyToPageIndex = num;
    }

    public final void setDocNote(@Nullable SyncNoteModel syncNoteModel) {
        this.docNote = syncNoteModel;
    }

    public final void setDstAssociation(@Nullable Association association) {
        this.dstAssociation = association;
    }

    public final void setDstDirFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dstDirFilePath = str;
    }

    public final void setDstDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.dstDocId = str;
    }

    public final void setDstGroupId(@Nullable String str) {
        this.dstGroupId = str;
    }

    public final void setDstParentId(@Nullable String str) {
        this.dstParentId = str;
    }

    public final void setExcerptCollectionList(@NotNull List<ExcerptCollectionModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.excerptCollectionList = list;
    }

    public final void setExtraInfoBean(@Nullable ExtraInfoBean extraInfoBean) {
        this.extraInfoBean = extraInfoBean;
    }

    public final void setGenerateUniqueContentFile(boolean z) {
        this.generateUniqueContentFile = z;
    }

    public final void setLinkIdCopyMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.linkIdCopyMap = map;
    }

    public final void setPageIdCopyMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.pageIdCopyMap = map;
    }

    public final void setPendingLinkShapeModelList(@NotNull List<ShapeModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pendingLinkShapeModelList = list;
    }

    public final void setResourceIdCopyMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.resourceIdCopyMap = map;
    }

    public final void setSrcDirFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.srcDirFilePath = str;
    }

    public final void setSrcDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.srcDocId = str;
    }

    public final void setTagIdCopyMap(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.tagIdCopyMap = map;
    }

    public final void setUpdateConnectionShapeModelList(@NotNull List<ShapeModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.updateConnectionShapeModelList = list;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }

    public final void updateAndSavePendingShapeModels(@NotNull NoteProviderHolder noteProviderHolder) {
        List distinct;
        Intrinsics.checkNotNullParameter(noteProviderHolder, "noteProviderHolder");
        Iterator<T> it2 = this.updateConnectionShapeModelList.iterator();
        while (it2.hasNext()) {
            copyShapeConnectionData((ShapeModel) it2.next(), this);
        }
        Iterator<T> it3 = this.pendingLinkShapeModelList.iterator();
        while (it3.hasNext()) {
            copyLinkShapeShapeListData((ShapeModel) it3.next(), this);
        }
        distinct = CollectionsKt___CollectionsKt.distinct(CollectionKt.mergeList(this.updateConnectionShapeModelList, this.pendingLinkShapeModelList));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : distinct) {
            String pageUniqueId = ((ShapeModel) obj).getPageUniqueId();
            if (pageUniqueId == null) {
                pageUniqueId = "";
            }
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            ShapePBDocumentUtils.INSTANCE.saveToShapeFile(noteProviderHolder, this.dstDocId, (String) entry.getKey(), "", (List) entry.getValue());
        }
        this.updateConnectionShapeModelList.clear();
        this.pendingLinkShapeModelList.clear();
    }
}
