package com.onyx.android.sdk.replicator.note.proto.doc.shape;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0006\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\"\u001a\u00020\u001d¢\u0006\u0004\b)\u0010*J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\u0019\u0010\t\u001a\u00028\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0018\u001a\u00020\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0016R\u001a\u0010\"\u001a\u00020\u001d8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0018\u0010\u000b\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;", "T", "", "Ljava/io/FileOutputStream;", "fout", "", "writeTo", "Ljava/io/FileInputStream;", "fin", "parseFrom", "(Ljava/io/FileInputStream;)Ljava/lang/Object;", "data", "setData", "(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;", "getData", "()Ljava/lang/Object;", "", "isSuccessful", "save", "saveExportRecord", "load", "checkArgsNotComplete", "", "dataFileDir", "dataFilePath", "dataZipFilePath", "pbDirPath", "documentId", "shapeFileDirPath", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "a", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "getArgs", "()Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "args", "b", Constants.OBJECT_SIG, "", "c", "Ljava/lang/Throwable;", "throwable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseShapePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShapePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BaseShapePBDocument<T> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ShapeDocumentArgs args;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public T data;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Throwable throwable;

    public BaseShapePBDocument(@NotNull ShapeDocumentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    public boolean checkArgsNotComplete() {
        if (StringUtils.isEmpty(this.args.getDocumentId())) {
            Debug.INSTANCE.m32044e(getClass(), "empty documentId", new Object[0]);
            return true;
        }
        if (StringUtils.isEmpty(this.args.getPageId())) {
            Debug.INSTANCE.m32044e(getClass(), "empty pageId", new Object[0]);
            return true;
        }
        if (StringUtils.isEmpty(this.args.getRevisionId())) {
            Debug.INSTANCE.m32044e(getClass(), "empty revisionId", new Object[0]);
            return true;
        }
        if (this.args.getCreateAt() > 0) {
            return false;
        }
        Debug.INSTANCE.m32044e(getClass(), "empty createAt", new Object[0]);
        return true;
    }

    @NotNull
    public final String dataFileDir() {
        return shapeFileDirPath(this.args.getPbDirPath(), this.args.getDocumentId());
    }

    @NotNull
    public final String dataFilePath() {
        Paths paths = Paths.INSTANCE;
        return paths.append(paths.toPath(dataFileDir()), ShapeDocumentUtils.INSTANCE.getPageShapeFileName(this.args)).toAbsolutePath().toString();
    }

    @NotNull
    public String dataZipFilePath() {
        return dataFilePath() + ShapeDocumentUtils.SHAPE_FILE_END;
    }

    @NotNull
    public final ShapeDocumentArgs getArgs() {
        return this.args;
    }

    @Nullable
    public T getData() {
        return this.data;
    }

    public final boolean isSuccessful() {
        return this.throwable == null;
    }

    @NotNull
    public BaseShapePBDocument<T> load() {
        FileInputStream fileInputStream;
        if (checkArgsNotComplete()) {
            return this;
        }
        String dataZipFilePath = dataZipFilePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!fileUtils.fileExist(dataZipFilePath)) {
            Debug.INSTANCE.m32044e(getClass(), "data zip file not exist: " + dataZipFilePath, new Object[0]);
            return this;
        }
        if (fileUtils.isEmpty(dataZipFilePath) && !fileUtils.isEmpty(dataFilePath())) {
            Debug.INSTANCE.m32044e(getClass(), "data zip file is empty and data file is exist", new Object[0]);
            return this;
        }
        ZipUtils.INSTANCE.decompress(dataZipFilePath, shapeFileDirPath(this.args.getPbDirPath(), this.args.getDocumentId()));
        String dataFilePath = dataFilePath();
        try {
            if (!fileUtils.fileExist(dataFilePath)) {
                Debug.INSTANCE.m32044e(getClass(), "data file not exist: " + dataFilePath, new Object[0]);
                return this;
            }
            try {
                fileInputStream = new FileInputStream(dataFilePath);
            } catch (Exception e) {
                Debug.INSTANCE.m32048e(e);
                fileUtils = FileUtils.INSTANCE;
            }
            try {
                this.data = parseFrom(fileInputStream);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileInputStream, null);
                fileUtils.deleteFile(dataFilePath);
                return this;
            } finally {
            }
        } catch (Throwable th) {
            FileUtils.INSTANCE.deleteFile(dataFilePath);
            throw th;
        }
    }

    public abstract T parseFrom(@Nullable FileInputStream fin) throws IOException;

    @NotNull
    public BaseShapePBDocument<T> save() {
        if (this.data == null) {
            Debug.INSTANCE.m32044e(getClass(), "empty data", new Object[0]);
            return this;
        }
        if (checkArgsNotComplete()) {
            return this;
        }
        String dataFilePath = dataFilePath();
        final String dataZipFilePath = dataZipFilePath();
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(dataFilePath);
        fileUtils.ensureFileExists(dataFilePath);
        try {
            Benchmark benchmark = new Benchmark();
            FileOutputStream fileOutputStream = new FileOutputStream(dataFilePath);
            try {
                writeTo(fileOutputStream);
                ZipUtils.INSTANCE.m72269zipFilesRgG5Fkc(new File[]{new File(dataFilePath)}, dataZipFilePath, (String) null);
                fileUtils.deleteFile(dataFilePath);
                benchmark.reportDebug(new Function0<String>(this) { // from class: com.onyx.android.sdk.replicator.note.proto.doc.shape.BaseShapePBDocument$save$1$1
                    final /* synthetic */ BaseShapePBDocument<T> this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                        this.this$0 = this;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final String invoke() {
                        return this.this$0.getClass().getSimpleName() + " save data zip file success:" + dataZipFilePath + ' ' + FileUtils.INSTANCE.getDisplayFileSize(dataZipFilePath);
                    }
                });
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
            } finally {
            }
        } catch (Exception e) {
            this.throwable = e;
            Debug.INSTANCE.m32043e(getClass(), "save data zip file fail:" + dataZipFilePath, e);
        }
        if (this.args.getSaveExportRecord()) {
            saveExportRecord();
        }
        return this;
    }

    public void saveExportRecord() {
        PBDocRecordProvider provider = this.args.getProvider();
        if (provider == null) {
            Debug.INSTANCE.m32044e(getClass(), "provider expected not null", new Object[0]);
            return;
        }
        PBDocRecordModel pBDocRecordModel = new PBDocRecordModel();
        pBDocRecordModel.setUniqueId(this.args.getRevisionId());
        pBDocRecordModel.setDocumentId(this.args.getDocumentId());
        pBDocRecordModel.setPageId(this.args.getPageId());
        pBDocRecordModel.setStatus(2);
        pBDocRecordModel.setTimeStamp(this.args.getCreateAt());
        provider.saveRecordModel(pBDocRecordModel);
    }

    @NotNull
    public BaseShapePBDocument<T> setData(@Nullable T data) {
        this.data = data;
        return this;
    }

    @NotNull
    public String shapeFileDirPath(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        StringBuilder sb = new StringBuilder();
        sb.append(SyncConstant.INSTANCE.docDirFilePath(pbDirPath, documentId));
        String str = File.separator;
        sb.append(str);
        sb.append("shape");
        sb.append(str);
        String sb2 = sb.toString();
        FileUtils.INSTANCE.mkdirs(sb2);
        return sb2;
    }

    public abstract void writeTo(@Nullable FileOutputStream fout) throws IOException;
}
