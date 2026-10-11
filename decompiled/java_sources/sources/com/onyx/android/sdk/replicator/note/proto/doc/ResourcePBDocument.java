package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.replicator.note.proto.ResourceDocProto;
import com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u0007\u001a\u00020\u0000J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/ResourcePBDocument;", "", "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;", "protoList", "setData", "getData", "save", "load", "", "c", "", "a", "", "b", "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "args", "Lcom/onyx/android/sdk/replicator/note/proto/ResourceDocProto$ResourceProtoList;", "data", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ResourcePBDocument {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ResourceDocumentArgs args;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public ResourceDocProto.ResourceProtoList data;

    public ResourcePBDocument(@NotNull ResourceDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    /* renamed from: a */
    public final boolean m35408a() {
        if (this.args.getDocumentId().length() == 0) {
            Debug.INSTANCE.m32044e(ResourcePBDocument.class, "empty documentId", new Object[0]);
            return true;
        }
        String revisionId = this.args.getRevisionId();
        if (revisionId == null || revisionId.length() == 0) {
            Debug.INSTANCE.m32044e(ResourcePBDocument.class, "empty revisionId", new Object[0]);
            return true;
        }
        if (this.args.getCreateAt() > 0) {
            return false;
        }
        Debug.INSTANCE.m32044e(ResourcePBDocument.class, "empty createAt", new Object[0]);
        return true;
    }

    /* renamed from: b */
    public final String m35409b() {
        return ResourcePBDocumentUtils.INSTANCE.resourcePbFilePath(this.args);
    }

    /* renamed from: c */
    public final void m35410c() {
    }

    @Nullable
    public final ResourceDocProto.ResourceProtoList getData() {
        return this.data;
    }

    @NotNull
    public final ResourcePBDocument load() {
        if (m35408a()) {
            return this;
        }
        String m35409b = m35409b();
        if (!FileUtils.INSTANCE.fileExist(m35409b)) {
            Debug.INSTANCE.m32044e(ResourcePBDocument.class, "data file not exist: " + m35409b, new Object[0]);
            return this;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m35409b);
            try {
                this.data = ResourceDocProto.ResourceProtoList.parseFrom(fileInputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileInputStream, null);
            } finally {
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
        return this;
    }

    @NotNull
    public final ResourcePBDocument save() {
        if (this.data == null) {
            Debug.INSTANCE.m32044e(ResourcePBDocument.class, "empty data", new Object[0]);
            return this;
        }
        if (m35408a()) {
            return this;
        }
        String m35409b = m35409b();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(m35409b);
        fileUtils.ensureFileExists(m35409b);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(m35409b);
            try {
                ResourceDocProto.ResourceProtoList resourceProtoList = this.data;
                Intrinsics.checkNotNull(resourceProtoList);
                resourceProtoList.writeTo(fileOutputStream);
                Debug.INSTANCE.m32035d(ResourcePBDocument.class, "save data file:" + m35409b, new Object[0]);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
            } finally {
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
        if (this.args.getSaveExportRecord()) {
            m35410c();
        }
        return this;
    }

    @NotNull
    public final ResourcePBDocument setData(@Nullable ResourceDocProto.ResourceProtoList protoList) {
        this.data = protoList;
        return this;
    }
}
