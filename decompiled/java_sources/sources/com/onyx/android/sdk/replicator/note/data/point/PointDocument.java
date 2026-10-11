package com.onyx.android.sdk.replicator.note.data.point;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.HTREnginev2.gon;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003J\b\u0010\u0018\u001a\u00020\u0007H\u0002J\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ\u0006\u0010\u001c\u001a\u00020\u0011J\u0006\u0010\u001d\u001a\u00020\u0000J\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0011J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010$\u001a\u00020!H\u0002J\u0010\u0010%\u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0003J\u0010\u0010)\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003J\u0016\u0010*\u001a\u00020\u00002\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ\u0012\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0003H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;", "", "path", "", "(Ljava/lang/String;)V", "filePath", "loader", "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;", "magic", "", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_REVISION_ID, "shapeRepoList", "", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "version", "xref", "", "addHeaderToBuf", "Ljava/nio/ByteBuffer;", "byteBuffer", "getDocumentSize", "", "getFilePath", "getLoader", "getPageUniqueId", "getRevisionId", "getShapeRepoList", "getXref", "parse", gon.f71290o0, "count", "parseHeader", "", "fin", "Ljava/io/FileInputStream;", "parseMetadata", "parseXref", "save", "", "setPageUniqueId", "setRevisionId", "setShapeRepoList", "uuidByte", "", "uuid", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPointDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointDocument.kt\ncom/onyx/android/sdk/replicator/note/data/point/PointDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n1#2:160\n*E\n"})
/* loaded from: classes8.dex */
public final class PointDocument {

    @Nullable
    private String filePath;

    @Nullable
    private PointDocumentLoader loader;
    private short magic;

    @Nullable
    private String pageUniqueId;

    @Nullable
    private String revisionId;

    @Nullable
    private List<ShapeRepo> shapeRepoList;
    private short version = 1;
    private int xref;

    public PointDocument(@Nullable String str) {
        this.filePath = str;
    }

    private final PointDocumentLoader getLoader() {
        if (this.version == 1) {
            this.loader = new PointDocumentLoaderV1();
        }
        PointDocumentLoader pointDocumentLoader = this.loader;
        if (pointDocumentLoader != null) {
            Intrinsics.checkNotNull(pointDocumentLoader);
            return pointDocumentLoader;
        }
        throw new IllegalArgumentException(("error version:" + ((int) this.version)).toString());
    }

    private final void parseHeader(FileInputStream fin) throws IOException {
        byte[] bArr = new byte[76];
        fin.read(bArr, 0, 76);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.magic = dataInputStream.readShort();
        this.version = dataInputStream.readShort();
        byte[] bArr2 = new byte[36];
        dataInputStream.read(bArr2, 0, 36);
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        this.pageUniqueId = new String(bArr2, UTF_8);
        dataInputStream.read(bArr2, 0, 36);
        Charset UTF_82 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
        this.revisionId = new String(bArr2, UTF_82);
    }

    private final void parseMetadata() throws Exception {
        FileInputStream fileInputStream = new FileInputStream(this.filePath);
        try {
            parseHeader(fileInputStream);
            parseXref(fileInputStream);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileInputStream, null);
        } finally {
        }
    }

    private final void parseXref(FileInputStream fin) throws IOException {
        FileChannel channel = fin.getChannel();
        try {
            channel.position(getDocumentSize() - 4);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            channel.read(allocate);
            this.xref = allocate.getInt(0);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(channel, null);
        } finally {
        }
    }

    private final byte[] uuidByte(String uuid) {
        Intrinsics.checkNotNull(uuid);
        int length = 36 - uuid.length();
        if (length <= 0) {
            byte[] bytes = uuid.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        StringBuilder sb = new StringBuilder(uuid);
        for (int i = 0; i < length; i++) {
            sb.append(" ");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        byte[] bytes2 = sb2.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
        return bytes2;
    }

    @NotNull
    public final ByteBuffer addHeaderToBuf(@NotNull ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(byteBuffer, "byteBuffer");
        byteBuffer.putShort(this.magic);
        byteBuffer.putShort(this.version);
        byteBuffer.put(uuidByte(this.pageUniqueId));
        byteBuffer.put(uuidByte(this.revisionId));
        return byteBuffer;
    }

    public final long getDocumentSize() {
        return FileUtils.INSTANCE.getFileSize(this.filePath);
    }

    @Nullable
    public final String getFilePath() {
        return this.filePath;
    }

    @Nullable
    public final String getPageUniqueId() {
        return StringUtils.trim(this.pageUniqueId);
    }

    @Nullable
    public final String getRevisionId() {
        return StringUtils.trim(this.revisionId);
    }

    @Nullable
    public final List<ShapeRepo> getShapeRepoList() {
        return this.shapeRepoList;
    }

    public final int getXref() {
        return this.xref;
    }

    @NotNull
    public final PointDocument parse() throws Exception {
        return parse(0, Integer.MAX_VALUE);
    }

    public final boolean save() throws Exception {
        List<ShapeRepo> list = this.shapeRepoList;
        if (list == null || list.isEmpty()) {
            return false;
        }
        FileUtils.INSTANCE.ensureFileExists(this.filePath);
        getLoader().save(this);
        return true;
    }

    @NotNull
    public final PointDocument setPageUniqueId(@Nullable String pageUniqueId) {
        this.pageUniqueId = pageUniqueId;
        return this;
    }

    @NotNull
    public final PointDocument setRevisionId(@Nullable String revisionId) {
        this.revisionId = revisionId;
        return this;
    }

    @NotNull
    public final PointDocument setShapeRepoList(@Nullable List<ShapeRepo> shapeRepoList) {
        this.shapeRepoList = shapeRepoList;
        return this;
    }

    @NotNull
    public final PointDocument parse(int start, int count) throws Exception {
        if (getDocumentSize() <= 0) {
            Debug.INSTANCE.m32044e(PointDocument.class, "error document size:" + getDocumentSize(), new Object[0]);
        }
        parseMetadata();
        getLoader().parse(this, start, count);
        return this;
    }
}
