package com.onyx.android.sdk.replicator.note.utils;

import android.graphics.Rect;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.note.data.background.NoteBackground;
import com.onyx.android.sdk.replicator.note.data.info.Association;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.data.info.NoteDeviceInfo;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.line.StraightLineStyle;
import com.onyx.android.sdk.replicator.note.data.page.NotePageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.data.pen.NotePenInfo;
import com.onyx.android.sdk.replicator.note.data.pen.PenInfo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.data.style.StyleAttr;
import com.onyx.android.sdk.replicator.note.data.thumbnail.ThumbnailRes;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0017\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\fJ\u001a\u0010\u0018\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils;", "", "()V", "createLinkModel", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", EditorConstants.ARGS_DOC_ID, "", CouchFieldKey.KEY_TOC_PAGE_ID, "createNoteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", Constant.TAG_USER_ID, "createResourceModel", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "createShapeModel", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "createTagModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "createVirtualPageModel", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "equalTestLinkModel", "", Constant.SRC_TAG, "dst", "equalTestResourceModel", "equalTestShapeModel", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteTestDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTestDataUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/NoteTestDataUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteTestDataUtils {

    @NotNull
    public static final NoteTestDataUtils INSTANCE = new NoteTestDataUtils();

    @NotNull
    public final LinkModel createLinkModel(@NotNull String docId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        LinkModel linkModel = new LinkModel();
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        linkModel.setUniqueId(uUIDUtils.rawUUID());
        linkModel.setDocumentId(docId);
        linkModel.setPageUniqueId(pageId);
        linkModel.setTargetPageId(uUIDUtils.rawUUID());
        linkModel.setTargetDocId(uUIDUtils.rawUUID());
        linkModel.setTitle(uUIDUtils.rawUUID());
        linkModel.setRemark(uUIDUtils.rawUUID());
        linkModel.setPath(uUIDUtils.rawUUID());
        linkModel.setExtra("");
        linkModel.setContent(uUIDUtils.rawUUID());
        linkModel.setBoundingRect(new RectF(1.0f, 2.0f, 3.0f, 4.0f));
        return linkModel;
    }

    @NotNull
    public final SyncNoteModel createNoteModel(@NotNull String docId, @NotNull String userId) {
        List<String> mutableListOf;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        SyncNoteModel syncNoteModel = new SyncNoteModel();
        syncNoteModel.setUniqueId(docId);
        syncNoteModel.setUser(userId);
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        syncNoteModel.setParentUniqueId(uUIDUtils.rawUUID());
        syncNoteModel.setTitle(uUIDUtils.rawUUID());
        syncNoteModel.setType(1);
        PenInfo penInfo = new PenInfo(0.0f, 0.0f, 0, 0, null, 31, null);
        Random.Companion companion = Random.INSTANCE;
        penInfo.setStrokeWidth(companion.nextFloat());
        NotePenInfo notePenInfo = new NotePenInfo();
        notePenInfo.setFillColor(-256);
        penInfo.setPenData(notePenInfo);
        syncNoteModel.setPenInfo(penInfo);
        NotePageInfo notePageInfo = new NotePageInfo();
        notePageInfo.setDefaultPageRect(new Rect(1, 2, 3, 4));
        syncNoteModel.setNotePageInfo(notePageInfo);
        NoteBackground noteBackground = new NoteBackground();
        noteBackground.setUseDocBKGround(true);
        syncNoteModel.setNoteBackground(noteBackground);
        syncNoteModel.setPageNameList(new PageNameList());
        syncNoteModel.setRichTextPageNameList(new PageNameList());
        syncNoteModel.setRemovePageList(new PageNameList());
        syncNoteModel.setSubPageName(uUIDUtils.rawUUID());
        Encryption encryption = new Encryption(0, null, 3, null);
        encryption.setDigest(uUIDUtils.rawUUID());
        syncNoteModel.setEncryption(encryption);
        Association association = new Association(null, 0, 3, null);
        association.setAssociationId(uUIDUtils.rawUUID());
        syncNoteModel.setAssociation(association);
        NoteDeviceInfo noteDeviceInfo = new NoteDeviceInfo();
        noteDeviceInfo.setSize(new SizeF(0.0f, 0.0f, 3, null));
        noteDeviceInfo.setDeviceName(uUIDUtils.rawUUID());
        syncNoteModel.setDeviceInfo(noteDeviceInfo);
        ThumbnailRes thumbnailRes = new ThumbnailRes(0, null, null, 7, null);
        thumbnailRes.setValue(uUIDUtils.rawUUID());
        syncNoteModel.setThumbnailRes(thumbnailRes);
        syncNoteModel.setPosition(1);
        syncNoteModel.setTotal(0);
        syncNoteModel.setSource(uUIDUtils.rawUUID());
        syncNoteModel.setStatus(1);
        syncNoteModel.setNotePointSize(companion.nextLong());
        syncNoteModel.setNoteSyncStatus(1);
        syncNoteModel.setFavorite(0);
        syncNoteModel.setAssociateDate(uUIDUtils.rawUUID());
        syncNoteModel.setVersion(1);
        syncNoteModel.setGroupId(uUIDUtils.rawUUID());
        syncNoteModel.setActiveScene(0);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(uUIDUtils.rawUUID());
        syncNoteModel.setTagIdList(mutableListOf);
        StyleAttr styleAttr = new StyleAttr();
        styleAttr.setColor(-16776961);
        syncNoteModel.setStyle(styleAttr);
        syncNoteModel.setOrderIndex(companion.nextFloat());
        return syncNoteModel;
    }

    @NotNull
    public final ResourceModel createResourceModel(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        ResourceModel resourceModel = new ResourceModel();
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        resourceModel.setUniqueId(uUIDUtils.rawUUID());
        resourceModel.m72387setDocumentId(docId);
        resourceModel.m72392setTitle(uUIDUtils.rawUUID());
        resourceModel.setRelativePath(File.separator + docId);
        String obj = Paths.INSTANCE.append(ResourcePaths.INSTANCE.resourceDataDir(SyncConstant.INSTANCE.getFILES_PATH(), docId), resourceModel.getRelativePath()).toAbsolutePath().toString();
        FileUtils.INSTANCE.ensureFileExists(obj);
        resourceModel.m72388setLocalPath(obj);
        resourceModel.m72391setStatus(0);
        return resourceModel;
    }

    @NotNull
    public final ShapeModel createShapeModel(@NotNull String docId, @NotNull String pageId) {
        List<String> listOf;
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        ShapeModel shapeModel = new ShapeModel();
        shapeModel.setDocumentUniqueId(docId);
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        shapeModel.setUniqueId(uUIDUtils.rawUUID());
        shapeModel.setPageUniqueId(pageId);
        Random.Companion companion = Random.INSTANCE;
        shapeModel.setShapeType(companion.nextInt(0, 100));
        shapeModel.setShapeCreateArgs(new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null));
        shapeModel.setShapeBoundingRect(new RectF(1.0f, 2.0f, 3.0f, 4.0f));
        shapeModel.setMatrixValues(new MatrixValues(new float[]{1.0f, 2.0f, 3.0f}));
        ShapeTextStyle shapeTextStyle = new ShapeTextStyle();
        shapeTextStyle.setOrientation(companion.nextInt(0, 100));
        shapeTextStyle.setPointScale(companion.nextFloat());
        shapeModel.setTextStyle(shapeTextStyle);
        ShapeLineStyle shapeLineStyle = new ShapeLineStyle();
        shapeLineStyle.setLineStyle(new StraightLineStyle());
        shapeModel.setShapeLineStyle(shapeLineStyle);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(uUIDUtils.rawUUID());
        shapeModel.setLinkIdList(listOf);
        return shapeModel;
    }

    @NotNull
    public final SyncTagModel createTagModel(@NotNull String docId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        SyncTagModel syncTagModel = new SyncTagModel();
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        syncTagModel.setUniqueId(uUIDUtils.rawUUID());
        syncTagModel.setDocumentId(docId);
        syncTagModel.setParentId(uUIDUtils.rawUUID());
        syncTagModel.setPageUniqueId(pageId);
        syncTagModel.setContent(uUIDUtils.rawUUID());
        syncTagModel.setStatus(0);
        syncTagModel.setModeType(1);
        syncTagModel.setType(0);
        syncTagModel.setStyle(new StyleAttr());
        syncTagModel.setOrderIndex(-1.0f);
        return syncTagModel;
    }

    @NotNull
    public final VirtualPageModel createVirtualPageModel(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        VirtualPageModel virtualPageModel = new VirtualPageModel();
        virtualPageModel.setUniqueId(pageId);
        virtualPageModel.setOrderIndex(0.0f);
        virtualPageModel.setStatus(0);
        virtualPageModel.setPageSize(new RectF());
        virtualPageModel.setPageSizeWithMargin(new RectF());
        virtualPageModel.setContentPageSize(new RectF());
        virtualPageModel.setContentType(ContentConstants.TYPE_GEO_LAYOUT);
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        virtualPageModel.setContentRelativePath(uUIDUtils.rawUUID());
        virtualPageModel.setContentPageId(uUIDUtils.rawUUID());
        virtualPageModel.setContentId(uUIDUtils.rawUUID());
        virtualPageModel.setCreatedAt(System.currentTimeMillis());
        virtualPageModel.setUpdatedAt(System.currentTimeMillis());
        virtualPageModel.setRevisionId("");
        return virtualPageModel;
    }

    public final boolean equalTestLinkModel(@Nullable LinkModel src, @Nullable LinkModel dst) {
        boolean equals$default;
        boolean equals$default2;
        boolean equals$default3;
        boolean equals$default4;
        boolean equals$default5;
        boolean equals$default6;
        boolean equals$default7;
        boolean equals$default8;
        boolean equals$default9;
        boolean equals$default10;
        if (src == null || dst == null || !src.getUniqueId().equals(dst.getUniqueId())) {
            return false;
        }
        equals$default = StringsKt__StringsJVMKt.equals$default(src.getDocumentId(), dst.getDocumentId(), false, 2, null);
        if (!equals$default) {
            return false;
        }
        equals$default2 = StringsKt__StringsJVMKt.equals$default(src.getPageUniqueId(), dst.getPageUniqueId(), false, 2, null);
        if (!equals$default2) {
            return false;
        }
        equals$default3 = StringsKt__StringsJVMKt.equals$default(src.getTargetPageId(), dst.getTargetPageId(), false, 2, null);
        if (!equals$default3) {
            return false;
        }
        equals$default4 = StringsKt__StringsJVMKt.equals$default(src.getTargetDocId(), dst.getTargetDocId(), false, 2, null);
        if (!equals$default4) {
            return false;
        }
        equals$default5 = StringsKt__StringsJVMKt.equals$default(src.getTitle(), dst.getTitle(), false, 2, null);
        if (!equals$default5) {
            return false;
        }
        equals$default6 = StringsKt__StringsJVMKt.equals$default(src.getRemark(), dst.getRemark(), false, 2, null);
        if (!equals$default6) {
            return false;
        }
        equals$default7 = StringsKt__StringsJVMKt.equals$default(src.getPath(), dst.getPath(), false, 2, null);
        if (!equals$default7) {
            return false;
        }
        equals$default8 = StringsKt__StringsJVMKt.equals$default(src.getExtra(), dst.getExtra(), false, 2, null);
        if (!equals$default8) {
            return false;
        }
        equals$default9 = StringsKt__StringsJVMKt.equals$default(src.getContent(), dst.getContent(), false, 2, null);
        if (!equals$default9) {
            return false;
        }
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        equals$default10 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getBoundingRect()), jSONUtils.toJson(dst.getBoundingRect()), false, 2, null);
        return equals$default10;
    }

    public final boolean equalTestResourceModel(@Nullable ResourceModel src, @Nullable ResourceModel dst) {
        boolean equals$default;
        boolean equals$default2;
        boolean equals$default3;
        if (src == null || dst == null || !src.getUniqueId().equals(dst.getUniqueId())) {
            return false;
        }
        equals$default = StringsKt__StringsJVMKt.equals$default(src.getDocumentId(), dst.getDocumentId(), false, 2, null);
        if (!equals$default) {
            return false;
        }
        equals$default2 = StringsKt__StringsJVMKt.equals$default(src.getTitle(), dst.getTitle(), false, 2, null);
        if (!equals$default2) {
            return false;
        }
        equals$default3 = StringsKt__StringsJVMKt.equals$default(src.getLocalPath(), dst.getLocalPath(), false, 2, null);
        return equals$default3;
    }

    public final boolean equalTestShapeModel(@Nullable ShapeModel src, @Nullable ShapeModel dst) {
        boolean equals$default;
        boolean equals$default2;
        boolean equals$default3;
        boolean equals$default4;
        boolean equals$default5;
        boolean equals$default6;
        boolean equals$default7;
        if (src == null || dst == null || !Intrinsics.areEqual(src.getDocumentUniqueId(), dst.getDocumentUniqueId()) || !Intrinsics.areEqual(src.getUniqueId(), dst.getUniqueId())) {
            return false;
        }
        equals$default = StringsKt__StringsJVMKt.equals$default(src.getPageUniqueId(), dst.getPageUniqueId(), false, 2, null);
        if (!equals$default || src.getShapeType() != dst.getShapeType()) {
            return false;
        }
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        equals$default2 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getShapeCreateArgs()), jSONUtils.toJson(dst.getShapeCreateArgs()), false, 2, null);
        if (!equals$default2) {
            return false;
        }
        equals$default3 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getBoundingRect()), jSONUtils.toJson(dst.getBoundingRect()), false, 2, null);
        if (!equals$default3) {
            return false;
        }
        equals$default4 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getMatrixValues()), jSONUtils.toJson(dst.getMatrixValues()), false, 2, null);
        if (!equals$default4) {
            return false;
        }
        equals$default5 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getTextStyle()), jSONUtils.toJson(dst.getTextStyle()), false, 2, null);
        if (!equals$default5) {
            return false;
        }
        equals$default6 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getShapeLineStyle()), jSONUtils.toJson(dst.getShapeLineStyle()), false, 2, null);
        if (!equals$default6) {
            return false;
        }
        equals$default7 = StringsKt__StringsJVMKt.equals$default(jSONUtils.toJson(src.getLinkIdList()), jSONUtils.toJson(dst.getLinkIdList()), false, 2, null);
        return equals$default7;
    }
}
