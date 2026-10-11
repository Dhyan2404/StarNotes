package com.onyx.android.sdk.universal.p042ui.data;

import android.graphics.Bitmap;
import android.graphics.RectF;
import androidx.annotation.WorkerThread;
import com.bumptech.glide.Glide;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ColorTheme;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateData;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.ImageAttr;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.ResourceAttr;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.bean.PaperBean;
import com.onyx.android.sdk.replicator.note.bean.SizeFormat;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverPaperExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.doc.VirtualPageConfig;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b=\u0010>J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0002J \u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J \u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0018\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u001e\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J \u0010\u001f\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010 \u001a\u0004\u0018\u00010\u0015*\u0004\u0018\u00010\u0002J\f\u0010!\u001a\u00020\u0004*\u0004\u0018\u00010\u0015J\u000e\u0010#\u001a\u0004\u0018\u00010\u0015*\u0004\u0018\u00010\"J\u001c\u0010$\u001a\u00020\u0002*\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\u0004J\"\u0010'\u001a\u00020%*\u00020%2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010)\u001a\u0004\u0018\u00010\u0015*\u0004\u0018\u00010(J\u001a\u0010+\u001a\u0004\u0018\u00010\u0015*\u0004\u0018\u00010*2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\u000e\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004J\u001a\u0010/\u001a\u0004\u0018\u00010.*\u0004\u0018\u00010*2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\f\u00100\u001a\u0004\u0018\u00010\u0019*\u00020(J\f\u00101\u001a\u00020\u0012*\u0004\u0018\u00010*J\f\u00102\u001a\u00020\u0012*\u0004\u0018\u00010(J\u0010\u00104\u001a\u00020*2\u0006\u00103\u001a\u00020\u0004H\u0007J\u0018\u00105\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J \u00108\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u00107\u001a\u0002062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010:\u001a\u00020\u00102\b\u00109\u001a\u0004\u0018\u00010\u0004J\u000e\u0010:\u001a\u00020\u00102\u0006\u0010<\u001a\u00020;¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/Templates;", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;", "pageConfig", "", "e", CouchFieldKey.KEY_CONTENT_TYPE, "contentPath", C6997f.f39671c, EditorConstants.ARGS_DOC_ID, CouchFieldKey.KEY_TOC_PAGE_ID, "content", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;", "templateResourceWrapper", Constants.ATTRNAME_FORMAT, "", "orientation", "Landroid/graphics/RectF;", C6999h.f39688c, "documentId", "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;", "templateJsonBean", "", "b", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "c", "a", "d", "saveTemplateToFileIfNeed", "getTemplateFilePath", "pageConfigToTemplateJson", "getTemplateResourceType", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "getDefaultTemplate", "updatePageConfigByTemplate", "Lcom/onyx/android/sdk/data/common/data/template/TemplateData;", "contentPageSize", "updateByTemplateJson", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "coverModelToJsonBean", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModelToJsonBean", "resourceType", "getContentTypeFromResourceType", "Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;", "toPaperBean", "loadGeoLayoutFromCoverModel", "paperTemplateRect", "coverTemplateRect", "path", "createTemplateModeByDecodeImage", "copyTemplateToDocumentDir", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "copyVirtualPageTemplateAndUpdateConfig", "thumbnailRelativePath", "loadResourceColor", "Landroid/graphics/Bitmap;", "bitmap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Templates.kt\ncom/onyx/android/sdk/universal/ui/data/Templates\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,452:1\n1#2:453\n98#3,4:454\n98#3,4:458\n98#3,4:462\n*S KotlinDebug\n*F\n+ 1 Templates.kt\ncom/onyx/android/sdk/universal/ui/data/Templates\n*L\n341#1:454,4\n374#1:458,4\n395#1:462,4\n*E\n"})
/* loaded from: classes8.dex */
public final class Templates {

    @NotNull
    public static final Templates INSTANCE = new Templates();

    public static /* synthetic */ TemplateJsonBean templateModelToJsonBean$default(Templates templates, TemplateModel templateModel, GeoLayout geoLayout, int i, Object obj) {
        if ((i & 1) != 0) {
            geoLayout = null;
        }
        return templates.templateModelToJsonBean(templateModel, geoLayout);
    }

    public static /* synthetic */ PaperBean toPaperBean$default(Templates templates, TemplateModel templateModel, GeoLayout geoLayout, int i, Object obj) {
        if ((i & 1) != 0) {
            geoLayout = null;
        }
        return templates.toPaperBean(templateModel, geoLayout);
    }

    /* renamed from: a */
    public final void m41594a(String documentId, TemplateJsonBean templateJsonBean, GeoLayout geoLayout) {
        String resName;
        ResourceAttr resourceAttr = geoLayout.getProperties().getResourceAttr();
        if (resourceAttr == null || (resName = resourceAttr.getResName()) == null) {
            return;
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        ResManager resManager = ResManager.INSTANCE;
        String fileNameInAssets$default = FileUtils.fileNameInAssets$default(fileUtils, resManager.getAppContext(), resName, null, 4, null);
        if (fileNameInAssets$default.length() == 0) {
            return;
        }
        Paths paths = Paths.INSTANCE;
        String obj = paths.append(TemplatePaths.INSTANCE.docTemplateResDir(documentId), fileNameInAssets$default).toAbsolutePath().toString();
        if (fileUtils.isFileExist(obj)) {
            return;
        }
        fileUtils.copyAssetsFile(resManager.getAppContext(), fileNameInAssets$default, obj);
        geoLayout.getProperties().setLayoutType(FileExtensionUtils.INSTANCE.isSvgFile(fileNameInAssets$default) ? GeoConstant.LayoutVector : GeoConstant.LayoutImage);
        Properties properties = geoLayout.getProperties();
        ImageAttr imageAttr = new ImageAttr();
        imageAttr.setRelativePath(paths.relativePath(obj, CommonPaths.INSTANCE.appDocDir(documentId).toAbsolutePath().toString()));
        properties.setImageAttr(imageAttr);
        String json = JSONUtils.INSTANCE.toJson(geoLayout);
        if (json == null) {
            json = "";
        }
        templateJsonBean.setGeoContent(json);
    }

    /* renamed from: b */
    public final void m41595b(String documentId, TemplateJsonBean templateJsonBean) {
        String layoutType;
        GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(templateJsonBean.getGeoContent());
        if (parseGeoLayout == null || (layoutType = parseGeoLayout.getProperties().getLayoutType()) == null) {
            return;
        }
        int hashCode = layoutType.hashCode();
        if (hashCode != -636039119) {
            if (hashCode == -409183783) {
                if (layoutType.equals(GeoConstant.LayoutResVector)) {
                    m41594a(documentId, templateJsonBean, parseGeoLayout);
                    return;
                }
                return;
            } else if (hashCode != 2122487085 || !layoutType.equals(GeoConstant.LayoutVector)) {
                return;
            }
        } else if (!layoutType.equals(GeoConstant.LayoutImage)) {
            return;
        }
        m41596c(documentId, templateJsonBean, parseGeoLayout);
    }

    /* renamed from: c */
    public final void m41596c(String documentId, TemplateJsonBean templateJsonBean, GeoLayout geoLayout) {
        String relativePath = templateJsonBean.getRelativePath();
        TemplatePaths templatePaths = TemplatePaths.INSTANCE;
        String searchTemplatePath = templatePaths.searchTemplatePath(documentId, relativePath);
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!fileUtils.isFileExist(searchTemplatePath)) {
            ImageAttr imageAttr = geoLayout.getProperties().getImageAttr();
            relativePath = imageAttr != null ? imageAttr.getRelativePath() : null;
            if (relativePath == null) {
                relativePath = "";
            }
            searchTemplatePath = templatePaths.searchTemplatePath(documentId, relativePath);
            if (!fileUtils.isFileExist(searchTemplatePath)) {
                Debug.INSTANCE.m32059w(Templates.class, "srcAbsolutePath not exist:" + searchTemplatePath, new Object[0]);
                return;
            }
        }
        String docTemplateResAbsolutePath = templatePaths.docTemplateResAbsolutePath(relativePath, documentId);
        boolean isFileExist = fileUtils.isFileExist(docTemplateResAbsolutePath);
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            debug.m32035d(Templates.class, "image docTemplateFile:" + docTemplateResAbsolutePath + " ,exist:" + isFileExist, new Object[0]);
        }
        if (isFileExist) {
            return;
        }
        onyx.org.apache.commons.io.FileUtils.copyFile(new File(searchTemplatePath), new File(docTemplateResAbsolutePath));
    }

    public final void copyTemplateToDocumentDir(@NotNull String documentId, @Nullable TemplateJsonBean templateJsonBean) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        if (templateJsonBean == null || ContentConstants.INSTANCE.isImportPDF(templateJsonBean.getContentType())) {
            return;
        }
        String contentType = templateJsonBean.getContentType();
        if (Intrinsics.areEqual(contentType, "pdf")) {
            m41597d(documentId, templateJsonBean);
        } else if (Intrinsics.areEqual(contentType, ContentConstants.TYPE_GEO_LAYOUT)) {
            m41595b(documentId, templateJsonBean);
        }
    }

    public final void copyVirtualPageTemplateAndUpdateConfig(@NotNull String documentId, @NotNull VirtualPage virtualPage, @Nullable TemplateJsonBean templateJsonBean) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        if (templateJsonBean == null) {
            return;
        }
        copyTemplateToDocumentDir(documentId, templateJsonBean);
        String templateResAbsolutePath = Intrinsics.areEqual(templateJsonBean.getContentType(), "pdf") ? TemplatePaths.INSTANCE.templateResAbsolutePath(templateJsonBean.getRelativePath(), documentId) : virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
        if (FileUtils.INSTANCE.fileExist(templateResAbsolutePath)) {
            virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().setContentPath(templateResAbsolutePath);
            virtualPage.updateBoxExtraInfo();
        }
    }

    @Nullable
    public final TemplateJsonBean coverModelToJsonBean(@Nullable CoverModel coverModel) {
        if (coverModel == null) {
            return null;
        }
        TemplateJsonBean templateJsonBean = new TemplateJsonBean();
        templateJsonBean.setUniqueId(coverModel.getUniqueId());
        templateJsonBean.setRelativePath(coverModel.getTemplateResourceWrapper().getCurRelativePath());
        Templates templates = INSTANCE;
        templateJsonBean.setContentType(templates.getContentTypeFromResourceType(coverModel.getTemplateResourceWrapper().getCurResourceType()));
        String json = JSONUtils.INSTANCE.toJson(templates.loadGeoLayoutFromCoverModel(coverModel));
        if (json == null) {
            json = "";
        }
        templateJsonBean.setGeoContent(json);
        String contentPageId = coverModel.getContentPageId();
        if (contentPageId.length() == 0) {
            contentPageId = coverModel.getUniqueId();
        }
        templateJsonBean.setContentPageId(contentPageId);
        TemplateResourceModel curResource = coverModel.getTemplateResourceWrapper().getCurResource();
        String uniqueId = curResource != null ? curResource.getUniqueId() : null;
        templateJsonBean.setResourceId(uniqueId != null ? uniqueId : "");
        templateJsonBean.setSizeFormat(coverModel.getSizeFormat());
        templateJsonBean.setColorTheme(ColorTheme.INSTANCE.getThemeFromColor(coverModel.getTemplateResourceWrapper().getCurFillColor()));
        return templateJsonBean;
    }

    @NotNull
    public final RectF coverTemplateRect(@Nullable CoverModel coverModel) {
        return coverModel == null ? new RectF() : m41601h(coverModel.getTemplateResourceWrapper(), coverModel.getSizeFormat(), coverModel.getOrientation());
    }

    @WorkerThread
    @NotNull
    public final TemplateModel createTemplateModeByDecodeImage(@NotNull String path) {
        List<String> mutableListOf;
        List<TemplateResourceModel> mutableListOf2;
        Intrinsics.checkNotNullParameter(path, "path");
        Size size = new Size(0, 0, 3, null);
        BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(path, size);
        RectF rectF = size.toRectF();
        FileUtils fileUtils = FileUtils.INSTANCE;
        String fileName = fileUtils.getFileName(path);
        TemplateResourceModel templateResourceModel = new TemplateResourceModel();
        UUIDUtils uUIDUtils = UUIDUtils.INSTANCE;
        templateResourceModel.setUniqueId(uUIDUtils.shortUUID());
        templateResourceModel.setSource(1);
        templateResourceModel.setRelativePath(AppFilePaths.INSTANCE.filesDirRelativePath(path));
        templateResourceModel.setResourceType(TemplateResourceConstant.TYPE_PICTURE);
        templateResourceModel.setThumbnailRelativePath(path);
        templateResourceModel.setResRect(RectFKt.copy(rectF));
        templateResourceModel.setFillColor(INSTANCE.loadResourceColor(path));
        TemplateModel templateModel = new TemplateModel();
        templateModel.setUniqueId(uUIDUtils.shortUUID());
        templateModel.setTitle(fileUtils.getFileBaseName(fileName));
        templateModel.setCategoryId("CUSTOM");
        templateModel.setContentPageId(templateModel.getUniqueId());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel.getUniqueId());
        templateModel.setResourceIdList(mutableListOf);
        templateModel.setSource(1);
        templateModel.setOrientation(RectKt.getOrientation(rectF).getValue());
        templateModel.setTemplateResourceWrapper(new TemplateResourceWrapper());
        templateModel.getTemplateResourceWrapper().setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(templateModel.getCategoryId(), templateModel.getUniqueId()));
        TemplateResourceWrapper templateResourceWrapper = templateModel.getTemplateResourceWrapper();
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(templateResourceModel);
        templateResourceWrapper.setResourceList(mutableListOf2);
        templateModel.setSizeFormat(SizeFormat.CUSTOM.name());
        return templateModel;
    }

    /* renamed from: d */
    public final void m41597d(String documentId, TemplateJsonBean templateJsonBean) {
        boolean isBlank;
        String replace$default;
        String relativePath = templateJsonBean.getRelativePath();
        isBlank = StringsKt__StringsJVMKt.isBlank(relativePath);
        if (isBlank) {
            return;
        }
        TemplatePaths templatePaths = TemplatePaths.INSTANCE;
        String docTemplateResAbsolutePath = templatePaths.docTemplateResAbsolutePath(relativePath, documentId);
        FileUtils fileUtils = FileUtils.INSTANCE;
        boolean isFileExist = fileUtils.isFileExist(docTemplateResAbsolutePath);
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            debug.m32035d(Templates.class, "pdf docTemplateFile:" + docTemplateResAbsolutePath + " ,exist:" + isFileExist, new Object[0]);
        }
        if (isFileExist) {
            return;
        }
        String templateResAbsolutePath = templatePaths.templateResAbsolutePath(relativePath);
        if (!fileUtils.isFileExist(templateResAbsolutePath)) {
            replace$default = StringsKt__StringsJVMKt.replace$default(relativePath, SyncConstant.LOCAL_TEMPLATE_RES_NAME, SyncConstant.LOCAL_COVER_RES_NAME, false, 4, (Object) null);
            templateResAbsolutePath = templatePaths.templateResAbsolutePath(replace$default);
        }
        try {
            File file = new File(templateResAbsolutePath);
            if (!file.exists()) {
                debug.m32059w(Templates.class, "pdf srcTemplateFile not exist:" + templateResAbsolutePath, new Object[0]);
                return;
            }
            File file2 = new File(docTemplateResAbsolutePath + NameUtil.USCORE);
            File file3 = new File(docTemplateResAbsolutePath);
            onyx.org.apache.commons.io.FileUtils.copyFile(file, file2);
            if (file.length() != file2.length()) {
                fileUtils.deleteFile(file2);
                return;
            }
            file2.renameTo(file3);
            if (debug.getDebug()) {
                debug.m32035d(Templates.class, "pdf docTemplateFile copy done:" + file3, new Object[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public final String m41598e(VirtualPageConfig pageConfig) {
        return m41599f(pageConfig.getContentType(), pageConfig.getContentPath());
    }

    /* renamed from: f */
    public final String m41599f(String contentType, String contentPath) {
        return Intrinsics.areEqual(contentType, "pdf") ? true : Intrinsics.areEqual(contentType, ContentConstants.TYPE_IMPORT_PDF) ? "" : FileUtils.INSTANCE.readContentOfFileSafely(contentPath);
    }

    /* renamed from: g */
    public final String m41600g(String docId, String pageId, String content) {
        File asFile = Paths.INSTANCE.asFile(TemplatePaths.INSTANCE.appDocPageTemplateJsonPath(docId, pageId));
        asFile.delete();
        if (content == null) {
            return "";
        }
        asFile.createNewFile();
        FilesKt__FileReadWriteKt.writeText$default(asFile, content, null, 2, null);
        String absolutePath = asFile.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
    @NotNull
    public final String getContentTypeFromResourceType(@NotNull String resourceType) {
        String str;
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        switch (resourceType.hashCode()) {
            case -820387517:
                str = "vector";
                resourceType.equals(str);
                return ContentConstants.TYPE_GEO_LAYOUT;
            case -577741570:
                str = TemplateResourceConstant.TYPE_PICTURE;
                resourceType.equals(str);
                return ContentConstants.TYPE_GEO_LAYOUT;
            case 110834:
                return !resourceType.equals("pdf") ? ContentConstants.TYPE_GEO_LAYOUT : "pdf";
            case 2124767295:
                str = TemplateResourceConstant.TYPE_DYNAMIC;
                resourceType.equals(str);
                return ContentConstants.TYPE_GEO_LAYOUT;
            default:
                return ContentConstants.TYPE_GEO_LAYOUT;
        }
    }

    @Nullable
    public final TemplateJsonBean getDefaultTemplate(@Nullable VirtualDocModel virtualDocModel) {
        TemplateData defaultTemplate;
        if (virtualDocModel == null || (defaultTemplate = virtualDocModel.getDefaultTemplate()) == null) {
            return null;
        }
        TemplateJsonBean templateJsonBean = new TemplateJsonBean();
        templateJsonBean.setUniqueId(defaultTemplate.getContentId());
        templateJsonBean.setContentType(defaultTemplate.getContentType());
        AppFilePaths appFilePaths = AppFilePaths.INSTANCE;
        templateJsonBean.setRelativePath(appFilePaths.filesDirRelativePath(defaultTemplate.getContentRelativePath()));
        templateJsonBean.setContentPageId(defaultTemplate.getContentPageId());
        templateJsonBean.setResourceId(defaultTemplate.getResourceId());
        templateJsonBean.setSizeFormat(defaultTemplate.getSizeFormat());
        templateJsonBean.setColorTheme(defaultTemplate.getColorTheme());
        templateJsonBean.setGeoContent(INSTANCE.m41599f(defaultTemplate.getContentType(), appFilePaths.filesDirAbsolutePath(defaultTemplate.getContentRelativePath())));
        return templateJsonBean;
    }

    @NotNull
    public final String getTemplateFilePath(@Nullable TemplateJsonBean templateJsonBean, @NotNull String docId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        if (templateJsonBean == null) {
            return m41600g(docId, pageId, "");
        }
        String contentType = templateJsonBean.getContentType();
        return Intrinsics.areEqual(contentType, "pdf") ? TemplatePaths.INSTANCE.templateResAbsolutePath(templateJsonBean.getRelativePath(), docId) : Intrinsics.areEqual(contentType, ContentConstants.TYPE_IMPORT_PDF) ? AppFilePaths.INSTANCE.filesDirAbsolutePath(templateJsonBean.getRelativePath()) : m41600g(docId, pageId, templateJsonBean.getGeoContent());
    }

    @NotNull
    public final String getTemplateResourceType(@Nullable TemplateJsonBean templateJsonBean) {
        if (templateJsonBean == null) {
            return "";
        }
        if (ContentConstants.INSTANCE.isPDF(templateJsonBean.getContentType())) {
            return "pdf";
        }
        GeoLayout parseGeoLayout = GeoFactory.INSTANCE.parseGeoLayout(templateJsonBean.getGeoContent());
        if (parseGeoLayout == null) {
            return "";
        }
        String layoutType = parseGeoLayout.getProperties().getLayoutType();
        if (layoutType != null) {
            int hashCode = layoutType.hashCode();
            if (hashCode != -636039119) {
                if (hashCode != -409183783) {
                    if (hashCode == 2122487085 && layoutType.equals(GeoConstant.LayoutVector)) {
                        return TemplateResourceConstant.TYPE_PICTURE;
                    }
                } else if (layoutType.equals(GeoConstant.LayoutResVector)) {
                    return "vector";
                }
            } else if (layoutType.equals(GeoConstant.LayoutImage)) {
                return TemplateResourceConstant.TYPE_PICTURE;
            }
        }
        return TemplateResourceConstant.TYPE_DYNAMIC;
    }

    /* renamed from: h */
    public final RectF m41601h(TemplateResourceWrapper templateResourceWrapper, String format, int orientation) {
        SizeF sizeF = new SizeF(0.0f, 0.0f, 3, null);
        if (SizeFormat.INSTANCE.safetyValueOf(format) != SizeFormat.CUSTOM) {
            Orientation.Companion companion = Orientation.INSTANCE;
            sizeF.setWidth(companion.isPortrait(orientation) ? r5.getSize().getWidth() : r5.getSize().getHeight());
            sizeF.setHeight(companion.isPortrait(orientation) ? r5.getSize().getHeight() : r5.getSize().getWidth());
            return new RectF(0.0f, 0.0f, sizeF.getWidth(), sizeF.getHeight());
        }
        SizeFormat sizeFormat = SizeFormat.f45503A4;
        sizeF.setWidth(templateResourceWrapper.getCurResRect().width());
        sizeF.setHeight(templateResourceWrapper.getCurResRect().height());
        sizeF.setHeight((sizeFormat.getSize().getWidth() / sizeF.getWidth()) * sizeF.getHeight());
        sizeF.setWidth(sizeFormat.getSize().getWidth());
        return new RectF(0.0f, 0.0f, sizeF.getWidth(), sizeF.getHeight());
    }

    @Nullable
    public final GeoLayout loadGeoLayoutFromCoverModel(@NotNull CoverModel coverModel) {
        GeoLayout geoLayout;
        boolean endsWith;
        Intrinsics.checkNotNullParameter(coverModel, "<this>");
        String curRelativePath = coverModel.getTemplateResourceWrapper().getCurRelativePath();
        String curResourceType = coverModel.getTemplateResourceWrapper().getCurResourceType();
        if (Intrinsics.areEqual(curResourceType, "vector")) {
            geoLayout = GeoLayout.INSTANCE.createResVectorGeoLayout(coverModel.getTemplateResourceWrapper().getCurResName());
        } else if (Intrinsics.areEqual(curResourceType, TemplateResourceConstant.TYPE_PICTURE)) {
            if (CoverPaperExtKt.isCloud(coverModel)) {
                endsWith = StringsKt__StringsJVMKt.endsWith(curRelativePath, FileTypeConstant.SVG, true);
                if (endsWith) {
                    geoLayout = GeoLayout.INSTANCE.createVectorGeoLayout(curRelativePath);
                }
            }
            geoLayout = GeoLayout.INSTANCE.createImageGeoLayout(curRelativePath);
        } else {
            geoLayout = null;
        }
        if (geoLayout == null) {
            return null;
        }
        Properties properties = geoLayout.getProperties();
        FillAttr fillAttr = new FillAttr();
        fillAttr.setColor(coverModel.getTemplateResourceWrapper().getCurFillColor());
        properties.setFillAttr(fillAttr);
        return geoLayout;
    }

    public final int loadResourceColor(@Nullable String thumbnailRelativePath) {
        if (thumbnailRelativePath == null || thumbnailRelativePath.length() == 0) {
            return 0;
        }
        try {
            Bitmap bitmap = Glide.with(ResManager.INSTANCE.getAppContext()).asBitmap().load(TemplatePaths.INSTANCE.templateResAbsolutePath(thumbnailRelativePath)).submit().get();
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            Intrinsics.checkNotNull(bitmap);
            return colorUtils.isColorDark(bitmap) ? -16777216 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Nullable
    public final TemplateJsonBean pageConfigToTemplateJson(@Nullable VirtualPageConfig virtualPageConfig) {
        if (virtualPageConfig == null) {
            return null;
        }
        TemplateJsonBean templateJsonBean = new TemplateJsonBean();
        templateJsonBean.setUniqueId(virtualPageConfig.getContentId());
        templateJsonBean.setContentType(virtualPageConfig.getContentType());
        templateJsonBean.setRelativePath(AppFilePaths.INSTANCE.filesDirRelativePath(virtualPageConfig.getContentPath()));
        templateJsonBean.setContentPageId(virtualPageConfig.getContentPageId());
        templateJsonBean.setSizeFormat(virtualPageConfig.getSizeFormat().name());
        templateJsonBean.setColorTheme(virtualPageConfig.getColorTheme());
        templateJsonBean.setGeoContent(INSTANCE.m41598e(virtualPageConfig));
        return templateJsonBean;
    }

    @NotNull
    public final RectF paperTemplateRect(@Nullable TemplateModel templateModel) {
        return templateModel == null ? new RectF() : m41601h(templateModel.getTemplateResourceWrapper(), templateModel.getSizeFormat(), templateModel.getOrientation());
    }

    @NotNull
    public final String saveTemplateToFileIfNeed(@Nullable TemplateJsonBean templateJsonBean, @NotNull String docId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return getTemplateFilePath(templateJsonBean, docId, pageId);
    }

    @Nullable
    public final TemplateJsonBean templateModelToJsonBean(@Nullable TemplateModel templateModel, @Nullable GeoLayout geoLayout) {
        if (templateModel == null) {
            return null;
        }
        TemplateJsonBean templateJsonBean = new TemplateJsonBean();
        templateJsonBean.setUniqueId(templateModel.getUniqueId());
        templateJsonBean.setRelativePath(templateModel.getTemplateResourceWrapper().getCurRelativePath());
        templateJsonBean.setContentType(INSTANCE.getContentTypeFromResourceType(templateModel.getTemplateResourceWrapper().getCurResourceType()));
        String json = JSONUtils.INSTANCE.toJson(TemplateModel.Companion.loadGeoLayoutFromTemplateModel$default(TemplateModel.INSTANCE, templateModel, geoLayout, false, 2, null));
        if (json == null) {
            json = "";
        }
        templateJsonBean.setGeoContent(json);
        String contentPageId = templateModel.getContentPageId();
        if (contentPageId.length() == 0) {
            contentPageId = templateModel.getUniqueId();
        }
        templateJsonBean.setContentPageId(contentPageId);
        TemplateResourceModel curResource = templateModel.getTemplateResourceWrapper().getCurResource();
        String uniqueId = curResource != null ? curResource.getUniqueId() : null;
        templateJsonBean.setResourceId(uniqueId != null ? uniqueId : "");
        templateJsonBean.setSizeFormat(templateModel.getSizeFormat());
        templateJsonBean.setColorTheme(ColorTheme.INSTANCE.getThemeFromColor(templateModel.getTemplateResourceWrapper().getCurFillColor()));
        return templateJsonBean;
    }

    @Nullable
    public final PaperBean toPaperBean(@Nullable TemplateModel templateModel, @Nullable GeoLayout geoLayout) {
        TemplateJsonBean templateModelToJsonBean = templateModelToJsonBean(templateModel, geoLayout);
        if (templateModelToJsonBean == null) {
            return null;
        }
        RectF paperTemplateRect = paperTemplateRect(templateModel);
        if (paperTemplateRect.isEmpty()) {
            return null;
        }
        return new PaperBean(templateModelToJsonBean, paperTemplateRect);
    }

    @NotNull
    public final TemplateData updateByTemplateJson(@NotNull TemplateData templateData, @NotNull TemplateJsonBean templateJsonBean, @NotNull RectF contentPageSize, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(templateData, "<this>");
        Intrinsics.checkNotNullParameter(templateJsonBean, "templateJsonBean");
        Intrinsics.checkNotNullParameter(contentPageSize, "contentPageSize");
        Intrinsics.checkNotNullParameter(docId, "docId");
        templateData.setContentId(templateJsonBean.getUniqueId());
        templateData.setContentPageId(templateJsonBean.getContentPageId());
        templateData.setContentType(templateJsonBean.getContentType());
        templateData.setContentPageSize(contentPageSize);
        templateData.setContentRelativePath(AppFilePaths.INSTANCE.filesDirRelativePath(getTemplateFilePath(templateJsonBean, docId, docId)));
        templateData.setResourceId(templateJsonBean.getResourceId());
        templateData.setSizeFormat(templateJsonBean.getSizeFormat());
        templateData.setColorTheme(templateJsonBean.getColorTheme());
        return templateData;
    }

    @NotNull
    public final VirtualPageConfig updatePageConfigByTemplate(@NotNull VirtualPageConfig virtualPageConfig, @Nullable TemplateJsonBean templateJsonBean, @NotNull String docId) {
        String str;
        String str2;
        String uniqueId;
        Intrinsics.checkNotNullParameter(virtualPageConfig, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        virtualPageConfig.setContentPath(INSTANCE.getTemplateFilePath(templateJsonBean, docId, virtualPageConfig.getPageId()));
        String str3 = "";
        if (templateJsonBean == null || (str = templateJsonBean.getContentPageId()) == null) {
            str = "";
        }
        virtualPageConfig.setContentPageId(str);
        if (templateJsonBean == null || (str2 = templateJsonBean.getContentType()) == null) {
            str2 = "";
        }
        virtualPageConfig.setContentType(str2);
        if (templateJsonBean != null && (uniqueId = templateJsonBean.getUniqueId()) != null) {
            str3 = uniqueId;
        }
        virtualPageConfig.setContentId(str3);
        virtualPageConfig.setColorTheme(templateJsonBean != null ? templateJsonBean.getColorTheme() : 0);
        virtualPageConfig.setSizeFormat(SizeFormat.INSTANCE.safetyValueOf(templateJsonBean != null ? templateJsonBean.getSizeFormat() : null));
        return virtualPageConfig;
    }

    public final int loadResourceColor(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        try {
            return ColorUtils.INSTANCE.isColorDark(bitmap) ? -16777216 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }
}
