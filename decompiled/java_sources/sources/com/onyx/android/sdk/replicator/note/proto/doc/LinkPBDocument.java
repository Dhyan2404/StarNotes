package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.replicator.note.proto.LinkDataProto;
import com.onyx.android.sdk.replicator.note.proto.data.LinkDocumentArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u0007\u001a\u00020\u0000J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/LinkPBDocument;", "", "Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProtoList;", "protoList", "setData", "getData", "save", "load", "", "checkArgsNotComplete", "", "dataFilePath", "Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;", "a", "Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;", "args", "b", "Lcom/onyx/android/sdk/replicator/note/proto/LinkDataProto$LinkProtoList;", "data", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LinkPBDocument {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LinkDocumentArgs args;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public LinkDataProto.LinkProtoList data;

    public LinkPBDocument(@NotNull LinkDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    public final boolean checkArgsNotComplete() {
        if (this.args.getDocumentId().length() == 0) {
            Debug.INSTANCE.m32044e(LinkPBDocument.class, "empty documentId", new Object[0]);
            return true;
        }
        if (!(this.args.getRevisionId().length() == 0)) {
            return false;
        }
        Debug.INSTANCE.m32044e(LinkPBDocument.class, "empty revisionId", new Object[0]);
        return true;
    }

    @NotNull
    public final String dataFilePath() {
        return LinkDocuments.INSTANCE.linkPbFilePath(this.args);
    }

    @Nullable
    public final LinkDataProto.LinkProtoList getData() {
        return this.data;
    }

    @NotNull
    public final LinkPBDocument load() {
        if (checkArgsNotComplete()) {
            return this;
        }
        String dataFilePath = dataFilePath();
        if (!FileUtils.INSTANCE.fileExist(dataFilePath)) {
            Debug.INSTANCE.m32044e(LinkPBDocument.class, "data file not exist: " + dataFilePath, new Object[0]);
            return this;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(dataFilePath);
            try {
                this.data = LinkDataProto.LinkProtoList.parseFrom(fileInputStream);
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
    public final LinkPBDocument save() {
        if (this.data == null) {
            Debug.INSTANCE.m32044e(LinkPBDocument.class, "empty data", new Object[0]);
            return this;
        }
        if (checkArgsNotComplete()) {
            return this;
        }
        String dataFilePath = dataFilePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(dataFilePath);
        fileUtils.ensureFileExists(dataFilePath);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(dataFilePath);
            try {
                LinkDataProto.LinkProtoList linkProtoList = this.data;
                Intrinsics.checkNotNull(linkProtoList);
                linkProtoList.writeTo(fileOutputStream);
                Debug.INSTANCE.m32035d(LinkPBDocument.class, "save data file:" + dataFilePath, new Object[0]);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
            } finally {
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
        return this;
    }

    @NotNull
    public final LinkPBDocument setData(@Nullable LinkDataProto.LinkProtoList protoList) {
        this.data = protoList;
        return this;
    }
}
