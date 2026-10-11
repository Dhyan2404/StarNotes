package com.onyx.android.sdk.replicator.note.proto.doc;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.proto.data.PBDocumentArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b)\u0010*J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00028\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00028\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tH&¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rH&J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fH&J\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0014\u001a\u00020\rH\u0016J\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0015\u001a\u00020\u000fJ\u0006\u0010\u0017\u001a\u00020\u000fJ\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0017\u0010\u001f\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\b\u0010#\u001a\u00020\u0006H\u0002R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010\u0015\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "T", "", "data", "Ljava/io/FileOutputStream;", "fout", "", "writeTo", "(Ljava/lang/Object;Ljava/io/FileOutputStream;)V", "Ljava/io/FileInputStream;", "fin", "parseFrom", "(Ljava/io/FileInputStream;)Ljava/lang/Object;", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "args", "", "getDataFilePath", CouchFieldKey.KEY_UNIQUE_ID, "getPBFileDirPath", "setArgs", "getArgs", "pbDirPath", "setPbDirPath", "getPbDirPath", "setData", "(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;", "getData", "()Ljava/lang/Object;", "save", "load", "saveData", "loadData", "(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/Object;", "", "checkArgsNotComplete", "a", "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;", "b", Constants.OBJECT_SIG, "c", Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBasePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BasePBDocument<T> {

    /* renamed from: a, reason: from kotlin metadata */
    public PBDocumentArgs args;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public T data;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String pbDirPath = SyncConstant.INSTANCE.appDocDir();

    /* renamed from: a */
    public final void m35402a() {
    }

    public boolean checkArgsNotComplete(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (StringUtils.isEmpty(args.getDocumentId())) {
            Debug.INSTANCE.m32044e(getClass(), "empty documentId", new Object[0]);
            return true;
        }
        if (!StringUtils.isEmpty(args.getRevisionId())) {
            return false;
        }
        Debug.INSTANCE.m32044e(getClass(), "empty revisionId", new Object[0]);
        return true;
    }

    @NotNull
    public PBDocumentArgs getArgs() {
        PBDocumentArgs pBDocumentArgs = this.args;
        if (pBDocumentArgs != null) {
            return pBDocumentArgs;
        }
        Intrinsics.throwUninitializedPropertyAccessException("args");
        return null;
    }

    @Nullable
    public final T getData() {
        return this.data;
    }

    @Nullable
    public final String getDataFilePath() {
        PBDocumentArgs pBDocumentArgs = this.args;
        if (pBDocumentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("args");
            pBDocumentArgs = null;
        }
        return getDataFilePath(pBDocumentArgs);
    }

    @Nullable
    public abstract String getDataFilePath(@NotNull PBDocumentArgs args);

    @Nullable
    public abstract String getPBFileDirPath(@Nullable String uniqueId);

    @NotNull
    public final String getPbDirPath() {
        return this.pbDirPath;
    }

    @NotNull
    public final BasePBDocument<T> load() {
        PBDocumentArgs pBDocumentArgs = this.args;
        if (pBDocumentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("args");
            pBDocumentArgs = null;
        }
        this.data = loadData(pBDocumentArgs);
        return this;
    }

    @Nullable
    public final T loadData(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (checkArgsNotComplete(args)) {
            return null;
        }
        String dataFilePath = getDataFilePath(args);
        if (!FileUtils.INSTANCE.fileExist(dataFilePath)) {
            Debug.INSTANCE.m32044e(getClass(), "data file not exist: " + dataFilePath, new Object[0]);
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(dataFilePath);
            try {
                T parseFrom = parseFrom(fileInputStream);
                CloseableKt.closeFinally(fileInputStream, null);
                return parseFrom;
            } finally {
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            return null;
        }
    }

    public abstract T parseFrom(@Nullable FileInputStream fin) throws IOException;

    @NotNull
    public final BasePBDocument<T> save() {
        PBDocumentArgs pBDocumentArgs = this.args;
        if (pBDocumentArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("args");
            pBDocumentArgs = null;
        }
        return saveData(pBDocumentArgs);
    }

    @NotNull
    public final BasePBDocument<T> saveData(@NotNull PBDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (this.data == null) {
            Debug.INSTANCE.m32044e(getClass(), "empty data", new Object[0]);
            return this;
        }
        if (checkArgsNotComplete(args)) {
            return this;
        }
        String dataFilePath = getDataFilePath(args);
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(dataFilePath);
        fileUtils.ensureFileExists(dataFilePath);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(dataFilePath);
            try {
                T t = this.data;
                Intrinsics.checkNotNull(t);
                writeTo(t, fileOutputStream);
                Debug.INSTANCE.m32035d(getClass(), "save data file:" + dataFilePath, new Object[0]);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
            } finally {
            }
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
        }
        if (args.getSaveExportRecord()) {
            m35402a();
        }
        return this;
    }

    @NotNull
    public BasePBDocument<T> setArgs(@Nullable PBDocumentArgs args) {
        Intrinsics.checkNotNull(args);
        this.args = args;
        return this;
    }

    @NotNull
    public final BasePBDocument<T> setData(T data) {
        this.data = data;
        return this;
    }

    @NotNull
    public final BasePBDocument<T> setPbDirPath(@NotNull String pbDirPath) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        this.pbDirPath = pbDirPath;
        return this;
    }

    public abstract void writeTo(T data, @Nullable FileOutputStream fout) throws IOException;
}
