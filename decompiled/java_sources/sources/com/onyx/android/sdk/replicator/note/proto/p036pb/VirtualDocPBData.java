package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.ContentPaths;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.PageMarginConfig;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.proto.VirtualDocPageProto;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.PBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.VirtualDocPBDocument;
import com.sun.org.apache.bcel.internal.Constants;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J(\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J \u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J \u0010\"\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\"\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010$\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\"\u0010-\u001a\u00020'8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualDocPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToPBFromDB", "exportToDBFromPB", "exportToNote", "copyPBDataToDB", "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument;", "virtualDocPBDocument", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "argsList", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", C4921e.f26537n, "j", "virtualDocModel", "", "documentId", "m", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "b", "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "templateData", "a", "d", "c", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "exportNoteArgs", C6999h.f39688c, C6997f.f39671c, "e", "i", "dirPath", "Ljava/nio/file/Path;", "l", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class VirtualDocPBData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 10;

    /* renamed from: a */
    public final void m35518a(CopyNoteArgs copyNoteArgs, TemplateData templateData) {
        VirtualDocModel.Companion companion = VirtualDocModel.INSTANCE;
        String loadContentResourceRelativePath = companion.loadContentResourceRelativePath(templateData);
        if (loadContentResourceRelativePath == null) {
            return;
        }
        ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
        String srcDirFilePath = copyNoteArgs.getSrcDirFilePath();
        String srcDocId = copyNoteArgs.getSrcDocId();
        FileUtils fileUtils = FileUtils.INSTANCE;
        Path docResourceContentFilePath = resourcePaths.docResourceContentFilePath(srcDirFilePath, srcDocId, fileUtils.getFileName(loadContentResourceRelativePath));
        if (Files.exists(docResourceContentFilePath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            Path appDocResourceContentFilePath = resourcePaths.appDocResourceContentFilePath(copyNoteArgs.getDstDocId(), fileUtils.getFileName(docResourceContentFilePath.toAbsolutePath().toString()));
            Paths.copyFile$default(Paths.INSTANCE, docResourceContentFilePath, appDocResourceContentFilePath, false, 2, null);
            companion.updateContentResourceRelativePath(templateData, AppFilePaths.INSTANCE.filesDirRelativePath(appDocResourceContentFilePath.toAbsolutePath().toString()));
        }
    }

    /* renamed from: b */
    public final void m35519b(CopyNoteArgs copyNoteArgs, VirtualDocModel virtualDocModel) {
        TemplateData defaultTemplate = virtualDocModel.getDefaultTemplate();
        if (defaultTemplate == null) {
            return;
        }
        m35520c(copyNoteArgs, defaultTemplate);
        m35518a(copyNoteArgs, defaultTemplate);
        m35521d(copyNoteArgs, defaultTemplate);
    }

    /* renamed from: c */
    public final void m35520c(CopyNoteArgs copyNoteArgs, TemplateData templateData) {
        Path m35529l;
        Path m35529l2;
        if (!Intrinsics.areEqual(templateData.getContentType(), ContentConstants.TYPE_GEO_LAYOUT) || (m35529l = m35529l(copyNoteArgs.getSrcDirFilePath(), templateData, copyNoteArgs.getSrcDocId())) == null || (m35529l2 = m35529l(SyncConstant.INSTANCE.appDocDir(), templateData, copyNoteArgs.getDstDocId())) == null) {
            return;
        }
        templateData.setContentRelativePath(ContentPaths.INSTANCE.contentRelativePath(templateData.getContentType(), m35529l2.toAbsolutePath().toString()));
        if (Files.notExists(m35529l2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            Paths.copyFile$default(Paths.INSTANCE, m35529l, m35529l2, false, 2, null);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        VirtualDocModel m35528k;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        VirtualDocPBDocument virtualDocPBDocument = new VirtualDocPBDocument();
        virtualDocPBDocument.setPbDirPath(copyNoteArgs.getSrcDirFilePath());
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(virtualDocPBDocument.getPBFileDirPath(copyNoteArgs.getSrcDocId()));
        Debug.INSTANCE.m32035d(VirtualDocPBData.class, "copyPBDataToDB argsList size: " + loadDocPBArgsList.size(), new Object[0]);
        if (loadDocPBArgsList.isEmpty() || (m35528k = m35528k(pbDataContext, virtualDocPBDocument, loadDocPBArgsList)) == null) {
            return;
        }
        m35519b(copyNoteArgs, m35528k);
        m35528k.setUniqueId(copyNoteArgs.getDstDocId());
        String copyPageId = copyNoteArgs.getCopyPageId(m35528k.getViewportId());
        if (copyPageId == null) {
            copyPageId = "";
        }
        m35528k.setViewportId(copyPageId);
        String copyPageId2 = copyNoteArgs.getCopyPageId(m35528k.getCoverPageId());
        m35528k.setCoverPageId(copyPageId2 != null ? copyPageId2 : "");
        m35528k.getDocOptions().resetNotExportValues();
        virtualDocPBDocument.setPbDirPath(copyNoteArgs.getDstDirFilePath());
        m35530m(virtualDocPBDocument, m35528k, copyNoteArgs.getDstDocId());
        pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualDocModel(m35528k);
    }

    /* renamed from: d */
    public final void m35521d(CopyNoteArgs copyNoteArgs, TemplateData templateData) {
        boolean startsWith$default;
        if (ContentConstants.INSTANCE.isTemplatePDF(templateData.getContentType())) {
            String loadContentResourceRelativePath = VirtualDocModel.INSTANCE.loadContentResourceRelativePath(templateData);
            if (loadContentResourceRelativePath == null) {
                loadContentResourceRelativePath = templateData.getContentRelativePath();
            }
            Paths paths = Paths.INSTANCE;
            String obj = paths.append(CommonPaths.INSTANCE.docDir(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()), loadContentResourceRelativePath).toAbsolutePath().toString();
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (!fileUtils.isFileExist(obj)) {
                obj = ResourcePaths.INSTANCE.docResourceContentFilePath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId(), fileUtils.getFileName(loadContentResourceRelativePath)).toAbsolutePath().toString();
            }
            if (!fileUtils.isFileExist(obj)) {
                TemplatePaths templatePaths = TemplatePaths.INSTANCE;
                obj = paths.append(paths.append(paths.toPath(copyNoteArgs.getSrcDirFilePath()), copyNoteArgs.getSrcDocId()), templatePaths.templateResRelativePath(fileUtils.combinePath(templatePaths.docTemplateResDir(copyNoteArgs.getSrcDocId()).toAbsolutePath().toString(), fileUtils.getFileName(loadContentResourceRelativePath)))).toAbsolutePath().toString();
                Debug.INSTANCE.m32059w(VirtualDocPBData.class, "use compatible srcPath:" + obj, new Object[0]);
            }
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(loadContentResourceRelativePath, "document", false, 2, null);
            if (startsWith$default) {
                loadContentResourceRelativePath = TemplatePaths.INSTANCE.templateResRelativePath(AppFilePaths.INSTANCE.filesDirAbsolutePath(loadContentResourceRelativePath));
            }
            String docTemplateResAbsolutePath = TemplatePaths.INSTANCE.docTemplateResAbsolutePath(loadContentResourceRelativePath, copyNoteArgs.getDstDocId());
            templateData.setContentRelativePath(ContentPaths.INSTANCE.contentRelativePath(templateData.getContentType(), docTemplateResAbsolutePath));
            if (fileUtils.isFileExist(docTemplateResAbsolutePath) || !fileUtils.isFileExist(obj)) {
                return;
            }
            paths.copyFile(paths.toPath(obj), paths.toPath(docTemplateResAbsolutePath), true);
        }
    }

    /* renamed from: e */
    public final void m35522e(ExportNoteArgs exportNoteArgs, TemplateData templateData, String documentId) {
        String filesDirAbsolutePath;
        Paths paths;
        Path path;
        String loadContentResourceRelativePath = VirtualDocModel.INSTANCE.loadContentResourceRelativePath(templateData);
        if (loadContentResourceRelativePath == null || (filesDirAbsolutePath = AppFilePaths.INSTANCE.filesDirAbsolutePath(loadContentResourceRelativePath)) == null || (path = (paths = Paths.INSTANCE).toPath(filesDirAbsolutePath)) == null) {
            return;
        }
        Path path2 = !Files.exists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0)) ? paths.toPath(TemplatePaths.INSTANCE.templateResAbsolutePath(loadContentResourceRelativePath, documentId)) : path;
        if (Files.exists(path2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            Path docResourceContentFilePath = ResourcePaths.INSTANCE.docResourceContentFilePath(exportNoteArgs.getExportDirPath(), exportNoteArgs.getDocumentId(), FileUtils.INSTANCE.getFileName(path2.toAbsolutePath().toString()));
            if (Files.exists(docResourceContentFilePath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                return;
            }
            Paths.copyFile$default(paths, path2, docResourceContentFilePath, false, 2, null);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToDBFromPB(@NotNull PBDataContext pbDataContext) {
        VirtualDocModel m35528k;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        VirtualDocPBDocument virtualDocPBDocument = new VirtualDocPBDocument();
        List<PBDocumentArgs> loadDocPBArgsList = PBDocumentUtils.INSTANCE.loadDocPBArgsList(virtualDocPBDocument.getPBFileDirPath(documentId));
        if (loadDocPBArgsList.isEmpty() || (m35528k = m35528k(pbDataContext, virtualDocPBDocument, loadDocPBArgsList)) == null) {
            return;
        }
        VirtualDocModel m35527j = m35527j(pbDataContext);
        if (m35527j == null || m35528k.getUpdatedAt() > m35527j.getUpdatedAt()) {
            pbDataContext.getNoteProviderHolder().getVirtualModelProvider().saveVirtualDocModel(m35528k);
            Debug.INSTANCE.m32052i(VirtualDocPBData.class, "documentId = " + documentId + ", exportToDBFromPB ", new Object[0]);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        String documentId = pbDataContext.getDocumentId();
        VirtualDocPBDocument virtualDocPBDocument = new VirtualDocPBDocument();
        virtualDocPBDocument.setPbDirPath(exportNoteArgs.getExportDirPath());
        VirtualDocModel m35527j = m35527j(pbDataContext);
        if (m35527j == null) {
            return;
        }
        if (exportNoteArgs.getResetViewPortId()) {
            m35527j.setViewportId("");
        }
        m35523f(pbDataContext, m35527j);
        m35524g(pbDataContext, m35527j);
        m35530m(virtualDocPBDocument, m35527j, documentId);
        Debug.INSTANCE.m32052i(VirtualDocPBData.class, "documentId = " + documentId + ", exportToNote", new Object[0]);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToPBFromDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        String documentId = pbDataContext.getDocumentId();
        VirtualDocModel m35527j = m35527j(pbDataContext);
        if (m35527j == null) {
            return;
        }
        m35530m(new VirtualDocPBDocument(), m35527j, documentId);
        Debug.INSTANCE.m32052i(VirtualDocPBData.class, "documentId = " + documentId + ", exportToPBFromDB", new Object[0]);
    }

    /* renamed from: f */
    public final void m35523f(PBDataContext pbDataContext, VirtualDocModel virtualDocModel) {
        String templateResourceId;
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        String documentId = pbDataContext.getDocumentId();
        PageMarginConfig pageMarginConfig = virtualDocModel.getDocOptions().getPageMarginConfig();
        if (pageMarginConfig.getMargin().hasMargin() && (templateResourceId = pageMarginConfig.getStyle().getTemplateResourceId()) != null) {
            TemplatePaths templatePaths = TemplatePaths.INSTANCE;
            Path docPageMarginTemplateJsonPath = templatePaths.docPageMarginTemplateJsonPath(SyncConstant.INSTANCE.appDocDir(), documentId, templateResourceId);
            Path docPageMarginTemplateJsonPath2 = templatePaths.docPageMarginTemplateJsonPath(exportNoteArgs.getExportDirPath(), documentId, templateResourceId);
            if (Files.notExists(docPageMarginTemplateJsonPath2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                Paths.copyFile$default(Paths.INSTANCE, docPageMarginTemplateJsonPath, docPageMarginTemplateJsonPath2, false, 2, null);
            }
        }
    }

    /* renamed from: g */
    public final void m35524g(PBDataContext pbDataContext, VirtualDocModel virtualDocModel) {
        ExportNoteArgs exportNoteArgs;
        TemplateData defaultTemplate = virtualDocModel.getDefaultTemplate();
        if (defaultTemplate == null || (exportNoteArgs = pbDataContext.getExportNoteArgs()) == null) {
            return;
        }
        String documentId = pbDataContext.getDocumentId();
        m35525h(exportNoteArgs, defaultTemplate, documentId);
        m35522e(exportNoteArgs, defaultTemplate, documentId);
        m35526i(exportNoteArgs, defaultTemplate);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    /* renamed from: h */
    public final void m35525h(ExportNoteArgs exportNoteArgs, TemplateData templateData, String documentId) {
        Path m35529l;
        Path m35529l2 = m35529l(SyncConstant.INSTANCE.appDocDir(), templateData, documentId);
        if (m35529l2 == null || (m35529l = m35529l(exportNoteArgs.getExportDirPath(), templateData, documentId)) == null || !Files.notExists(m35529l, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            return;
        }
        Paths.copyFile$default(Paths.INSTANCE, m35529l2, m35529l, false, 2, null);
    }

    /* renamed from: i */
    public final void m35526i(ExportNoteArgs exportNoteArgs, TemplateData templateData) {
        if (ContentConstants.INSTANCE.isImportPDF(templateData.getContentType())) {
            return;
        }
        String documentId = exportNoteArgs.getDocumentId();
        String loadContentResourceRelativePath = VirtualDocModel.INSTANCE.loadContentResourceRelativePath(templateData);
        if (loadContentResourceRelativePath == null) {
            loadContentResourceRelativePath = templateData.getContentRelativePath();
        }
        String templateResAbsolutePath = TemplatePaths.INSTANCE.templateResAbsolutePath(loadContentResourceRelativePath, documentId);
        Paths paths = Paths.INSTANCE;
        String obj = paths.append(CommonPaths.INSTANCE.docDir(exportNoteArgs.getExportDirPath(), documentId), loadContentResourceRelativePath).toAbsolutePath().toString();
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (fileUtils.isFileExist(obj) || !fileUtils.isFileExist(templateResAbsolutePath)) {
            return;
        }
        paths.copyFile(paths.toPath(templateResAbsolutePath), paths.toPath(obj), true);
    }

    /* renamed from: j */
    public final VirtualDocModel m35527j(PBDataContext pbDataContext) {
        return pbDataContext.getNoteProviderHolder().getVirtualModelProvider().loadVirtualDocModel();
    }

    /* renamed from: k */
    public final VirtualDocModel m35528k(PBDataContext pbDataContext, VirtualDocPBDocument virtualDocPBDocument, List<PBDocumentArgs> argsList) {
        VirtualDocModel fromProto;
        String documentId = pbDataContext.getDocumentId();
        for (PBDocumentArgs pBDocumentArgs : argsList) {
            pBDocumentArgs.setDocumentId(documentId);
            VirtualDocPageProto.VirtualDoc data = virtualDocPBDocument.setArgs(pBDocumentArgs).load().getData();
            if (data != null && (fromProto = VirtualDocPBDocument.INSTANCE.fromProto(data)) != null) {
                return fromProto;
            }
        }
        return null;
    }

    /* renamed from: l */
    public final Path m35529l(String dirPath, TemplateData templateData, String documentId) {
        if (Intrinsics.areEqual(templateData.getContentType(), ContentConstants.TYPE_GEO_LAYOUT)) {
            return TemplatePaths.INSTANCE.docPageTemplateJsonPath(dirPath, documentId, documentId);
        }
        return null;
    }

    /* renamed from: m */
    public final void m35530m(VirtualDocPBDocument virtualDocPBDocument, VirtualDocModel virtualDocModel, String documentId) {
        virtualDocPBDocument.setArgs(new PBDocumentArgs().setDocumentId(documentId).setRevisionId(documentId)).setData(VirtualDocPBDocument.INSTANCE.toProto(virtualDocModel)).save();
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }
}
