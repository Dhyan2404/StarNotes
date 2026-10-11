package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/ThumbnailData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "", "exportToNote", "copyPBDataToDB", "a", "b", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nThumbnailData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThumbnailData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ThumbnailData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1855#2,2:98\n1855#2,2:100\n*S KotlinDebug\n*F\n+ 1 ThumbnailData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ThumbnailData\n*L\n51#1:98,2\n80#1:100,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ThumbnailData extends BasePBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 13;

    /* renamed from: a */
    public final void m35490a(PBDataContext pbDataContext) {
        String nameWithoutExtension;
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        Benchmark benchmark = new Benchmark();
        String srcDocId = copyNoteArgs.getSrcDocId();
        String dstDocId = copyNoteArgs.getDstDocId();
        String obj = CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString();
        Paths paths = Paths.INSTANCE;
        int i = 0;
        int i2 = 0;
        for (File file : paths.listFiles(paths.append(paths.toPath(copyNoteArgs.getSrcDirFilePath()), srcDocId), false)) {
            Map<String, String> pageIdCopyMap = copyNoteArgs.getPageIdCopyMap();
            nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(file);
            String str = pageIdCopyMap.get(nameWithoutExtension);
            if (str != null) {
                i++;
                Path pageThumbnailPath = ThumbnailPaths.INSTANCE.pageThumbnailPath(obj, dstDocId, str);
                Paths paths2 = Paths.INSTANCE;
                Path path = file.toPath();
                Intrinsics.checkNotNullExpressionValue(path, "toPath(...)");
                if (Paths.copyFile$default(paths2, path, pageThumbnailPath, false, 2, null)) {
                    i2++;
                }
            }
        }
        benchmark.report(AnyKt.toSimpleNameString(this), "copyPBDataToDB, copyPageThumbnails documentId = " + dstDocId + ", page count:" + i + ", success count:" + i2);
    }

    /* renamed from: b */
    public final void m35491b(PBDataContext pbDataContext) {
        List<String> pageIdList;
        String nameWithoutExtension;
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null || (pageIdList = exportNoteArgs.getPageIdList()) == null || pageIdList.isEmpty()) {
            return;
        }
        Benchmark benchmark = new Benchmark();
        String documentId = pbDataContext.getDocumentId();
        Paths paths = Paths.INSTANCE;
        int i = 0;
        int i2 = 0;
        for (File file : paths.listFiles(paths.append(CommonPaths.INSTANCE.appDocDir(), documentId), false)) {
            nameWithoutExtension = FilesKt__UtilsKt.getNameWithoutExtension(file);
            if (pageIdList.contains(nameWithoutExtension)) {
                i++;
                Path pageThumbnailPath = ThumbnailPaths.INSTANCE.pageThumbnailPath(exportNoteArgs.getExportDirPath(), documentId, nameWithoutExtension);
                Paths paths2 = Paths.INSTANCE;
                Path path = file.toPath();
                Intrinsics.checkNotNullExpressionValue(path, "toPath(...)");
                if (Paths.copyFile$default(paths2, path, pageThumbnailPath, false, 2, null)) {
                    i2++;
                }
            }
        }
        benchmark.report(AnyKt.toSimpleNameString(this), "exportToNote, copyPageThumbnails documentId = " + documentId + ", page count:" + i + ", success count:" + i2);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void copyPBDataToDB(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteArgs copyNoteArgs = pbDataContext.getCopyNoteArgs();
        if (copyNoteArgs == null) {
            return;
        }
        Paths paths = Paths.INSTANCE;
        ThumbnailPaths thumbnailPaths = ThumbnailPaths.INSTANCE;
        boolean copyFile$default = Paths.copyFile$default(paths, thumbnailPaths.thumbnailPath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()), thumbnailPaths.appThumbnailPath(copyNoteArgs.getDstDocId()), false, 2, null);
        Debug.INSTANCE.m32052i(ThumbnailData.class, "documentId = " + copyNoteArgs.getDstDocId() + ", copyPBDataToDB: " + copyFile$default, new Object[0]);
        m35490a(pbDataContext);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BasePBData, com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void exportToNote(@NotNull PBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteArgs exportNoteArgs = pbDataContext.getExportNoteArgs();
        if (exportNoteArgs == null) {
            return;
        }
        final String documentId = pbDataContext.getDocumentId();
        String ifEmpty = StringKt.ifEmpty(exportNoteArgs.getExportThumbnailPath(), new Function0<String>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.ThumbnailData$exportToNote$filePath$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return ThumbnailPaths.INSTANCE.appThumbnailPath(documentId).toAbsolutePath().toString();
            }
        });
        Paths paths = Paths.INSTANCE;
        boolean copyFile$default = Paths.copyFile$default(paths, paths.toPath(ifEmpty), ThumbnailPaths.INSTANCE.thumbnailPath(exportNoteArgs.getExportDirPath(), documentId), false, 2, null);
        Debug.INSTANCE.m32052i(ThumbnailData.class, "documentId = " + documentId + ", exportToNote: " + copyFile$default, new Object[0]);
        m35491b(pbDataContext);
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.PBData
    public void setType(int i) {
        this.type = i;
    }
}
