package com.onyx.android.sdk.note.extension;

import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.replicator.note.p035db.ResourceProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"loadAndSaveResource", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", CouchFieldKey.KEY_LOCAL_PATH, "", "documentId", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ResourceModelKt {
    @NotNull
    public static final ResourceModel loadAndSaveResource(@NotNull NoteDocument noteDocument, @NotNull final String localPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        FileUtils fileUtils = FileUtils.INSTANCE;
        String computeFullMD5Safely = fileUtils.computeFullMD5Safely(localPath);
        Intrinsics.checkNotNull(computeFullMD5Safely);
        final String combine = fileUtils.combine(ResourcePaths.INSTANCE.appResourceDataFilePath(documentId, computeFullMD5Safely).toAbsolutePath().toString(), fileUtils.getFileExtension(localPath));
        Intrinsics.checkNotNull(combine);
        ResourceProvider noteResourceProvider = noteDocument.getProviderHolder().getNoteResourceProvider();
        boolean fileExist = fileUtils.fileExist(combine);
        ResourceModel loadFromPath = fileExist ? noteResourceProvider.loadFromPath(documentId, combine) : null;
        if (loadFromPath != null) {
            if (!(loadFromPath.getUniqueId().length() == 0)) {
                return loadFromPath;
            }
            noteResourceProvider.saveResourceModel(loadFromPath);
            return loadFromPath;
        }
        BooleanKt.takeIfFalse(Boolean.valueOf(fileExist), new Function0<Unit>() { // from class: com.onyx.android.sdk.note.extension.ResourceModelKt$loadAndSaveResource$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FilesKt__UtilsKt.copyTo$default(new File(localPath), new File(combine), false, 0, 6, null);
            }
        });
        ResourceModel resourceModel = new ResourceModel();
        resourceModel.setLocalPath(combine);
        resourceModel.setDocumentId(documentId);
        resourceModel.setType(0);
        noteResourceProvider.saveResourceModel(resourceModel);
        return resourceModel;
    }
}
