package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.path.PathsKt__PathUtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0007J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u001e\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\u0016\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0004J\u0016\u0010\u001a\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004J\u0016\u0010\u001c\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\u00042\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070 2\u0006\u0010\u001d\u001a\u00020\u0004J\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\"2\u0006\u0010\f\u001a\u00020\u0004J\u0016\u0010#\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u001e\u0010$\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0018\u0010%\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u001e\u0010&\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0012\u0010'\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004J\n\u0010(\u001a\u00020\u0007*\u00020\u0007J\n\u0010)\u001a\u00020\u0007*\u00020\u0007J\n\u0010*\u001a\u00020\u0004*\u00020\u0004J\u0012\u0010*\u001a\u00020\u0004*\u00020\u00042\u0006\u0010+\u001a\u00020\u0004J\n\u0010,\u001a\u00020\u0004*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/TemplatePaths;", "", "()V", "MARGIN_TEMPLATE_SUFFIX", "", "TEMPLATE_SUFFIX", "appCurUserNoteTemplateResDir", "Ljava/nio/file/Path;", "appCurUserNoteTemplateResPath", "title", "appCurUserNoteTemplateThumbnailResDir", "appDocPageMarginTemplateJsonPath", "documentId", "templateResourceId", "appDocPageTemplateJsonPath", CouchFieldKey.KEY_TOC_PAGE_ID, "appDocTemplateJsonDir", "appUserNoteTemplateResDir", Constant.TAG_USER_ID, "appUserNoteTemplateResPath", "appUserNoteTemplateThumbnailResDir", "appUserNoteTemplateThumbnailResPath", "docPageMarginTemplateJsonPath", "dirPath", "docPageTemplateJsonPath", "docTemplateJsonDir", "docTemplateResDir", HuaweiYunQueryArgs.FILE_NAME, "searchTemplatePath", "resRelativePath", "templatePathByDirList", "dirPathList", "", "templatePathDirList", "", "userNoteTemplateResDir", "userNoteTemplateResPath", "userNoteTemplateThumbnailResDir", "userNoteTemplateThumbnailResPath", "docTemplateResAbsolutePath", "template", SyncConstant.LOCAL_TEMPLATE_RES_NAME, "templateResAbsolutePath", EditorConstants.ARGS_DOC_ID, "templateResRelativePath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTemplatePaths.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplatePaths.kt\ncom/onyx/android/sdk/data/common/path/TemplatePaths\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1#2:182\n1549#3:183\n1620#3,3:184\n288#3,2:187\n*S KotlinDebug\n*F\n+ 1 TemplatePaths.kt\ncom/onyx/android/sdk/data/common/path/TemplatePaths\n*L\n172#1:183\n172#1:184,3\n173#1:187,2\n*E\n"})
/* loaded from: classes7.dex */
public final class TemplatePaths {

    @NotNull
    public static final TemplatePaths INSTANCE = new TemplatePaths();

    @NotNull
    private static final String MARGIN_TEMPLATE_SUFFIX = "margin_template_suffix";

    @NotNull
    private static final String TEMPLATE_SUFFIX = "template_json";

    private TemplatePaths() {
    }

    private final Path userNoteTemplateThumbnailResDir(String dirPath, String userId) {
        Path createDirectories = Files.createDirectories(CommonPaths.INSTANCE.thumbnail(userNoteTemplateResDir(dirPath, userId)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appCurUserNoteTemplateResDir() {
        return appUserNoteTemplateResDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path appCurUserNoteTemplateResPath(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return appUserNoteTemplateResPath(AccountDataBundle.INSTANCE.getSyncUserId(), title);
    }

    @NotNull
    public final Path appCurUserNoteTemplateThumbnailResDir() {
        return appUserNoteTemplateThumbnailResDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path appDocPageMarginTemplateJsonPath(@NotNull String documentId, @NotNull String templateResourceId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(templateResourceId, "templateResourceId");
        return docPageMarginTemplateJsonPath(SyncConstant.INSTANCE.appDocDir(), documentId, templateResourceId);
    }

    @NotNull
    public final Path appDocPageTemplateJsonPath(@NotNull String documentId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return docPageTemplateJsonPath(SyncConstant.INSTANCE.appDocDir(), documentId, pageId);
    }

    @NotNull
    public final Path appDocTemplateJsonDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return docTemplateJsonDir(CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString(), documentId);
    }

    @NotNull
    public final Path appUserNoteTemplateResDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return userNoteTemplateResDir(AppFilePaths.INSTANCE.appFilesPath(), userId);
    }

    @NotNull
    public final Path appUserNoteTemplateResPath(@NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(appUserNoteTemplateResDir(userId), title);
    }

    @NotNull
    public final Path appUserNoteTemplateThumbnailResDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return userNoteTemplateThumbnailResDir(AppFilePaths.INSTANCE.appFilesPath(), userId);
    }

    @NotNull
    public final Path appUserNoteTemplateThumbnailResPath(@NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(appUserNoteTemplateThumbnailResDir(userId), title);
    }

    @NotNull
    public final Path docPageMarginTemplateJsonPath(@NotNull String dirPath, @NotNull String documentId, @NotNull String templateResourceId) {
        Path createParentDirectories;
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(templateResourceId, "templateResourceId");
        createParentDirectories = PathsKt__PathUtilsKt.createParentDirectories(Paths.INSTANCE.append(docTemplateJsonDir(dirPath, documentId), templateResourceId + ".margin_template_suffix"), new FileAttribute[0]);
        return createParentDirectories;
    }

    @NotNull
    public final Path docPageTemplateJsonPath(@NotNull String dirPath, @NotNull String documentId, @NotNull String pageId) {
        Path createParentDirectories;
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        createParentDirectories = PathsKt__PathUtilsKt.createParentDirectories(Paths.INSTANCE.append(docTemplateJsonDir(dirPath, documentId), pageId + ".template_json"), new FileAttribute[0]);
        return createParentDirectories;
    }

    @NotNull
    public final Path docTemplateJsonDir(@NotNull String dirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.json(template(commonPaths.docDir(dirPath, documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final String docTemplateResAbsolutePath(@NotNull String str, @NotNull String documentId) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "document", false, 2, null);
        if (startsWith$default) {
            str = templateResRelativePath(AppFilePaths.INSTANCE.filesDirAbsolutePath(str));
        }
        return Paths.INSTANCE.absolutePath(str, CommonPaths.INSTANCE.appDocDir(documentId).toAbsolutePath().toString());
    }

    @NotNull
    public final Path docTemplateResDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(templateRes(commonPaths.note(commonPaths.appDocDir(documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final String searchTemplatePath(@NotNull String documentId, @NotNull String resRelativePath) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(resRelativePath, "resRelativePath");
        return templatePathByDirList(templatePathDirList(documentId), resRelativePath);
    }

    @NotNull
    public final Path template(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "template");
    }

    @NotNull
    public final String templatePathByDirList(@NotNull List<? extends Path> dirPathList, @NotNull final String resRelativePath) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(dirPathList, "dirPathList");
        Intrinsics.checkNotNullParameter(resRelativePath, "resRelativePath");
        List<? extends Path> list = dirPathList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Paths.INSTANCE.append((Path) it2.next(), resRelativePath).toAbsolutePath().toString());
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            }
            obj = it3.next();
            if (FileUtils.INSTANCE.isFileExist((String) obj)) {
                break;
            }
        }
        return (String) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<String>() { // from class: com.onyx.android.sdk.data.common.path.TemplatePaths$templatePathByDirList$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return AppFilePaths.INSTANCE.filesDirAbsolutePath(resRelativePath);
            }
        });
    }

    @NotNull
    public final List<Path> templatePathDirList(@NotNull String documentId) {
        List<Path> mutableListOf;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(commonPaths.appDocDir(documentId), commonPaths.currentUserDir());
        return mutableListOf;
    }

    @NotNull
    public final Path templateRes(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, SyncConstant.LOCAL_TEMPLATE_RES_NAME);
    }

    @NotNull
    public final String templateResAbsolutePath(@NotNull String str) {
        boolean startsWith$default;
        boolean startsWith$default2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "/note/", false, 2, null);
        if (!startsWith$default) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str, "note/", false, 2, null);
            if (!startsWith$default2) {
                return Paths.INSTANCE.absolutePath(str, AppFilePaths.INSTANCE.getFILES_PATH());
            }
        }
        String obj = CommonPaths.INSTANCE.currentUserDir().toAbsolutePath().toString();
        String absolutePath = Paths.INSTANCE.absolutePath(str, obj);
        if ((str.length() == 0) || Intrinsics.areEqual(absolutePath, obj)) {
            Debug.INSTANCE.m32045e(str.getClass(), new Exception("use userDir(" + absolutePath + ") as templateResAbsolutePath!!!"));
        }
        return absolutePath;
    }

    @NotNull
    public final String templateResRelativePath(@NotNull String str) {
        boolean startsWith$default;
        String substringAfter$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        String obj = commonPaths.appDocDir().toAbsolutePath().toString();
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, obj, false, 2, null);
        if (!startsWith$default) {
            return Paths.INSTANCE.relativePath(str, commonPaths.currentUserDir().toAbsolutePath().toString());
        }
        String relativePath = Paths.INSTANCE.relativePath(str, obj);
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        substringAfter$default = StringsKt__StringsKt.substringAfter$default(relativePath, separator, (String) null, 2, (Object) null);
        return substringAfter$default;
    }

    @NotNull
    public final Path userNoteTemplateResDir(@NotNull String dirPath, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Path createDirectories = Files.createDirectories(templateRes(CommonPaths.INSTANCE.userNoteDir(dirPath, userId)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path userNoteTemplateResPath(@NotNull String dirPath, @NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(userNoteTemplateResDir(dirPath, userId), title);
    }

    @NotNull
    public final Path userNoteTemplateThumbnailResPath(@NotNull String dirPath, @NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(userNoteTemplateThumbnailResDir(dirPath, userId), title);
    }

    @NotNull
    public final Path docTemplateResDir(@NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(docTemplateResDir(documentId), fileName);
    }

    @NotNull
    public final String templateResAbsolutePath(@NotNull final String str, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(docId, "docId");
        String docTemplateResAbsolutePath = docTemplateResAbsolutePath(str, docId);
        if (!FileUtils.INSTANCE.isFileExist(docTemplateResAbsolutePath)) {
            docTemplateResAbsolutePath = null;
        }
        return (String) AnyKt.getOrElse(docTemplateResAbsolutePath, new Function0<String>() { // from class: com.onyx.android.sdk.data.common.path.TemplatePaths$templateResAbsolutePath$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return TemplatePaths.INSTANCE.templateResAbsolutePath(str);
            }
        });
    }
}
