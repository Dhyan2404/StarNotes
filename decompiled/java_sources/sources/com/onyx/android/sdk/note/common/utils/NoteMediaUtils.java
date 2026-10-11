package com.onyx.android.sdk.note.common.utils;

import android.content.Context;
import android.os.Environment;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.utils.AESEncryptUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.utils.NoteMediaUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b4\u00105J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007J\u0018\u0010\u000f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u0007J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0007J\u0016\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002J\u0006\u0010\u001d\u001a\u00020\u0002J\u001e\u0010 \u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0002J\u001a\u0010!\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002J\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u001e\u0010&\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010%\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010)\u001a\u00020(2\u0006\u0010'\u001a\u00020#H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010+\u001a\u00020\u0002H\u0002R\u001c\u0010/\u001a\n ,*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00101\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u0010.R\u0014\u00102\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010.R\u0014\u00103\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010.¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;", "", "", "documentId", "getRecordOutputPath", "path", "getRecordIdFromPath", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "audioShape", "getAudioTextPath", "getLatestAudioTextPath", "", "deleteOldAudioTextFiles", "Landroid/content/Context;", "context", "deleteAudioTextFiles", "backupDir", "shapeId", "getBackupAudioTextPath", "shape", "", "audioTextExist", "audioFileExit", "noteAbsolutePath", "audioTitle", "getRecordExportPath", "getRecordOutputFileName", "getRecordExportFileName", "getRecordExportTargetPath", "getRecordSuffixName", "audioTextPath", "audioText", "encryptAudioText", "decryptAudioText", "", "Ljava/io/File;", "d", "fileDir", C6997f.f39671c, "file", "", "i", "e", "c", "kotlin.jvm.PlatformType", "a", Constants.STRING_SIG, "MEDIA_EXPORT_ROOT_PATH", "b", "RECORD_SUFFIX_NAME", "RECORD_TEXT_PREFIX_NAME", "RECORD_TEXT_SUFFIX_NAME", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteMediaUtils {

    @NotNull
    public static final NoteMediaUtils INSTANCE = new NoteMediaUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final String MEDIA_EXPORT_ROOT_PATH;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String RECORD_SUFFIX_NAME = ".mp3";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String RECORD_TEXT_PREFIX_NAME = "shape-";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String RECORD_TEXT_SUFFIX_NAME = ".rec";

    static {
        File externalFilesDir = ResManager.INSTANCE.getAppContext().getExternalFilesDir(Environment.DIRECTORY_MUSIC);
        Intrinsics.checkNotNull(externalFilesDir);
        MEDIA_EXPORT_ROOT_PATH = externalFilesDir.getAbsolutePath();
    }

    /* renamed from: g */
    public static final boolean m34022g(String prefixName, File file, String str) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(prefixName, "$prefixName");
        Intrinsics.checkNotNull(str);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, prefixName, false, 2, null);
        return startsWith$default;
    }

    /* renamed from: h */
    public static final int m34023h(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    public final boolean audioFileExit(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(shape);
        if (resource == null) {
            return false;
        }
        return FileUtils.INSTANCE.fileExist(resource.getPath());
    }

    public final boolean audioTextExist(@Nullable Shape shape) {
        if (shape == null) {
            return false;
        }
        return FileUtils.INSTANCE.fileExist(getLatestAudioTextPath(shape));
    }

    /* renamed from: c */
    public final String m34024c() {
        return UUIDUtils.INSTANCE.shortUUID();
    }

    /* renamed from: d */
    public final List<File> m34025d(Shape audioShape) {
        return m34027f(ResourcePaths.INSTANCE.appResourceDataDir(audioShape.getDocumentUniqueId()).toAbsolutePath().toString(), audioShape.getShapeUniqueId());
    }

    @Nullable
    public final String decryptAudioText(@NotNull Shape audioShape, @Nullable String audioTextPath) {
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        String readContentOfFile = FileUtils.INSTANCE.readContentOfFile(audioTextPath);
        if (readContentOfFile.length() == 0) {
            return "";
        }
        String str = audioShape.getDocumentUniqueId() + audioShape.getShapeUniqueId();
        AESEncryptUtils aESEncryptUtils = AESEncryptUtils.INSTANCE;
        return aESEncryptUtils.decrypt(aESEncryptUtils.ensureAesSecretKeyLen(str), readContentOfFile);
    }

    public final void deleteAudioTextFiles(@Nullable Context context, @NotNull Shape audioShape) {
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        Iterator<File> it2 = m34025d(audioShape).iterator();
        while (it2.hasNext()) {
            FileUtils.INSTANCE.deleteFile(it2.next());
        }
    }

    public final void deleteOldAudioTextFiles(@NotNull Shape audioShape) {
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        List<File> m34025d = m34025d(audioShape);
        int size = m34025d.size() - 1;
        for (int i = 0; i < size; i++) {
            FileUtils.INSTANCE.deleteFile(m34025d.get(i));
        }
    }

    /* renamed from: e */
    public final String m34026e(String shapeId) {
        return "shape-" + shapeId;
    }

    public final void encryptAudioText(@NotNull Shape audioShape, @NotNull String audioTextPath, @NotNull String audioText) {
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        Intrinsics.checkNotNullParameter(audioTextPath, "audioTextPath");
        Intrinsics.checkNotNullParameter(audioText, "audioText");
        String str = audioShape.getDocumentUniqueId() + audioShape.getShapeUniqueId();
        AESEncryptUtils aESEncryptUtils = AESEncryptUtils.INSTANCE;
        FileUtils.INSTANCE.appendContentToFile(String.valueOf(aESEncryptUtils.encrypt(aESEncryptUtils.ensureAesSecretKeyLen(str), audioText)), new File(audioTextPath));
    }

    /* renamed from: f */
    public final List<File> m34027f(String fileDir, String shapeId) {
        final String m34026e = m34026e(shapeId);
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(fileDir, new FilenameFilter() { // from class: com.sunia.HTREnginev2.uyj
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m34022g;
                m34022g = NoteMediaUtils.m34022g(m34026e, file, str);
                return m34022g;
            }
        });
        final NoteMediaUtils$getAudioTextInDir$1 noteMediaUtils$getAudioTextInDir$1 = new Function2<File, File, Integer>() { // from class: com.onyx.android.sdk.note.common.utils.NoteMediaUtils$getAudioTextInDir$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(@NotNull File o1, @NotNull File o2) {
                long m34028i;
                long m34028i2;
                Intrinsics.checkNotNullParameter(o1, "o1");
                Intrinsics.checkNotNullParameter(o2, "o2");
                NoteMediaUtils noteMediaUtils = NoteMediaUtils.INSTANCE;
                m34028i = noteMediaUtils.m34028i(o1);
                m34028i2 = noteMediaUtils.m34028i(o2);
                return Integer.valueOf((int) (m34028i - m34028i2));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(listAllFiles, new Comparator() { // from class: com.sunia.HTREnginev2.vyj
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m34023h;
                m34023h = NoteMediaUtils.m34023h(Function2.this, obj, obj2);
                return m34023h;
            }
        });
        return listAllFiles;
    }

    @Nullable
    public final String getAudioTextPath(@NotNull Shape audioShape) {
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        return getAudioTextPath(audioShape.getDocumentUniqueId(), audioShape.getShapeUniqueId());
    }

    @Nullable
    public final String getBackupAudioTextPath(@NotNull String backupDir, @NotNull String shapeId) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(backupDir, "backupDir");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) m34027f(backupDir, shapeId));
        File file = (File) lastOrNull;
        return file == null ? "" : file.getAbsolutePath();
    }

    @NotNull
    public final String getLatestAudioTextPath(@NotNull Shape audioShape) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(audioShape, "audioShape");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) m34025d(audioShape));
        File file = (File) lastOrNull;
        if (file == null) {
            return "";
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String getRecordExportFileName(@NotNull String audioTitle) {
        Intrinsics.checkNotNullParameter(audioTitle, "audioTitle");
        return FileUtils.INSTANCE.getValidFileName(audioTitle, ".mp3");
    }

    @NotNull
    public final String getRecordExportPath(@NotNull String noteAbsolutePath, @NotNull String audioTitle) {
        Intrinsics.checkNotNullParameter(noteAbsolutePath, "noteAbsolutePath");
        Intrinsics.checkNotNullParameter(audioTitle, "audioTitle");
        return getRecordExportTargetPath(noteAbsolutePath) + File.separator + getRecordExportFileName(audioTitle);
    }

    @NotNull
    public final String getRecordExportTargetPath(@NotNull String noteAbsolutePath) {
        Intrinsics.checkNotNullParameter(noteAbsolutePath, "noteAbsolutePath");
        StringBuilder sb = new StringBuilder();
        sb.append(MEDIA_EXPORT_ROOT_PATH);
        String str = File.separator;
        sb.append(StringUtils.prependIfMissing(noteAbsolutePath, str, str));
        return sb.toString();
    }

    @NotNull
    public final String getRecordIdFromPath(@NotNull String path) {
        String nameWithoutExtension;
        Intrinsics.checkNotNullParameter(path, "path");
        nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(new File(path));
        return nameWithoutExtension;
    }

    @NotNull
    public final String getRecordOutputFileName(@NotNull String audioTitle) {
        Intrinsics.checkNotNullParameter(audioTitle, "audioTitle");
        return audioTitle + ".mp3";
    }

    @NotNull
    public final String getRecordOutputPath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return Paths.INSTANCE.append(ResourcePaths.INSTANCE.appResourceDataDir(documentId), getRecordOutputFileName(m34024c())).toAbsolutePath().toString();
    }

    @NotNull
    public final String getRecordSuffixName() {
        return ".mp3";
    }

    /* renamed from: i */
    public final long m34028i(File file) {
        int lastIndexOf$default;
        String baseName = FilenameUtils.getBaseName(file.getAbsolutePath());
        Intrinsics.checkNotNullExpressionValue(baseName, "getBaseName(...)");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) baseName, "-", 0, false, 6, (Object) null);
        MathUtils mathUtils = MathUtils.INSTANCE;
        String substring = baseName.substring(lastIndexOf$default + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return mathUtils.parseLong(substring);
    }

    @Nullable
    public final String getAudioTextPath(@Nullable String documentId, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Paths paths = Paths.INSTANCE;
        ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
        Intrinsics.checkNotNull(documentId);
        return paths.append(resourcePaths.appResourceDataDir(documentId), m34026e(shapeId) + '-' + System.currentTimeMillis() + RECORD_TEXT_SUFFIX_NAME).toAbsolutePath().toString();
    }
}
