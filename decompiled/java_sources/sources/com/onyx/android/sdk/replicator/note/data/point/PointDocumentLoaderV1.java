package com.onyx.android.sdk.replicator.note.data.point;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.data.TinyPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sunia.HTREnginev2.gon;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0012H\u0002J.\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J(\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0016J(\u0010\u001c\u001a\u00020\u000e2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0002J(\u0010 \u001a\u00020\u00042\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0002¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoaderV1;", "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocumentLoader;", "()V", "loadLargeShapePoint", "", "channel", "Ljava/nio/channels/FileChannel;", "shapeRepo", "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;", "loadNormalShapePoint", "parse", "document", "Lcom/onyx/android/sdk/replicator/note/data/point/PointDocument;", gon.f71290o0, "", "count", "parseShapePoint", "shapeRepoList", "", "parseShapeRepo", "readPartTinyPoints", "Lcom/onyx/android/sdk/base/data/TinyPoint;", "length", "step", "readTinyPoint", "din", "Ljava/io/DataInputStream;", "save", "saveShapePoint", "byteBuffer", "Ljava/nio/ByteBuffer;", TypedValues.CycleType.S_WAVE_OFFSET, "saveShapeRepo", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PointDocumentLoaderV1 implements PointDocumentLoader {
    private final void loadLargeShapePoint(FileChannel channel, ShapeRepo shapeRepo) throws IOException {
        int coerceAtMost;
        channel.position(shapeRepo.getOffset());
        FileUtils fileUtils = FileUtils.INSTANCE;
        shapeRepo.setAttrA(fileUtils.readShort(channel));
        shapeRepo.setAttrB(fileUtils.readShort(channel));
        int length = shapeRepo.getLength() - 4;
        int i = length / 16;
        int pointCountBreakValue = PointDocumentUtils.INSTANCE.getPointCountBreakValue(i);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < length; i2 += PointConstant.MAX_POINT_READ_LENGTH_V1) {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(PointConstant.MAX_POINT_READ_LENGTH_V1, length - i2);
            List<TinyPoint> readPartTinyPoints = readPartTinyPoints(channel, coerceAtMost, pointCountBreakValue);
            Intrinsics.checkNotNull(readPartTinyPoints);
            arrayList.addAll(readPartTinyPoints);
        }
        shapeRepo.setTinyPointList(arrayList);
        if (pointCountBreakValue > 1) {
            Debug.INSTANCE.m32059w(Integer.TYPE, "large touch point count:" + i + ", render count: " + CollectionKt.getSize(arrayList), new Object[0]);
        }
    }

    private final void loadNormalShapePoint(FileChannel channel, ShapeRepo shapeRepo) throws IOException {
        channel.position(shapeRepo.getOffset());
        ByteBuffer allocate = ByteBuffer.allocate(shapeRepo.getLength());
        channel.read(allocate);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(allocate.array()));
        shapeRepo.setAttrA(dataInputStream.readShort());
        shapeRepo.setAttrB(dataInputStream.readShort());
        ArrayList arrayList = new ArrayList();
        int length = (shapeRepo.getLength() - 4) / 16;
        for (int i = 0; i < length; i++) {
            arrayList.add(readTinyPoint(dataInputStream));
        }
        shapeRepo.setTinyPointList(arrayList);
    }

    private final void parseShapePoint(FileChannel channel, List<ShapeRepo> shapeRepoList) throws IOException {
        for (ShapeRepo shapeRepo : shapeRepoList) {
            if ((shapeRepo.getLength() - 4) / 16 > 20000) {
                loadLargeShapePoint(channel, shapeRepo);
            } else {
                loadNormalShapePoint(channel, shapeRepo);
            }
        }
    }

    private final List<ShapeRepo> parseShapeRepo(PointDocument document, FileChannel channel, int start, int count) throws IOException {
        ArrayList arrayList = new ArrayList();
        int i = count + start;
        while (start < i) {
            channel.position(document.getXref() + (start * 44));
            ByteBuffer allocate = ByteBuffer.allocate(36);
            channel.read(allocate);
            byte[] array = allocate.array();
            Intrinsics.checkNotNullExpressionValue(array, "array(...)");
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            String str = new String(array, 0, 36, UTF_8);
            ByteBuffer allocate2 = ByteBuffer.allocate(4);
            channel.read(allocate2);
            int i2 = allocate2.getInt(0);
            ByteBuffer allocate3 = ByteBuffer.allocate(4);
            channel.read(allocate3);
            arrayList.add(new ShapeRepo().setShapeUniqueId(str).setOffset(i2).setLength(allocate3.getInt(0)));
            start++;
        }
        return arrayList;
    }

    private final List<TinyPoint> readPartTinyPoints(FileChannel channel, int length, int step) throws IOException {
        ArrayList arrayList = new ArrayList();
        int i = length / 16;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        channel.read(allocate);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(allocate.array()));
        int i2 = 0;
        while (i2 < i) {
            if (step > 1 && i2 > 0) {
                dataInputStream.skip(16 * (step - 1));
            }
            arrayList.add(readTinyPoint(dataInputStream));
            i2 += step;
        }
        return arrayList;
    }

    private final TinyPoint readTinyPoint(DataInputStream din) throws IOException {
        return new TinyPoint(din.readFloat(), din.readFloat(), din.readShort(), din.readShort(), din.readInt());
    }

    private final int saveShapePoint(List<ShapeRepo> shapeRepoList, ByteBuffer byteBuffer, int offset) {
        Intrinsics.checkNotNull(shapeRepoList);
        for (ShapeRepo shapeRepo : shapeRepoList) {
            shapeRepo.setOffset(offset);
            List<TinyPoint> tinyPointList = shapeRepo.getTinyPointList();
            Intrinsics.checkNotNull(tinyPointList);
            int size = (tinyPointList.size() * 16) + 4;
            shapeRepo.setLength(size);
            byteBuffer.putShort(shapeRepo.getAttrA());
            byteBuffer.putShort(shapeRepo.getAttrB());
            List<TinyPoint> tinyPointList2 = shapeRepo.getTinyPointList();
            Intrinsics.checkNotNull(tinyPointList2);
            for (TinyPoint tinyPoint : tinyPointList2) {
                byteBuffer.putFloat(tinyPoint.getX());
                byteBuffer.putFloat(tinyPoint.getY());
                byteBuffer.putShort(tinyPoint.getSize());
                byteBuffer.putShort(tinyPoint.getPressure());
                byteBuffer.putInt(tinyPoint.getTime());
            }
            offset += size;
        }
        return offset;
    }

    private final void saveShapeRepo(List<ShapeRepo> shapeRepoList, ByteBuffer byteBuffer, int offset) {
        Intrinsics.checkNotNull(shapeRepoList);
        for (ShapeRepo shapeRepo : shapeRepoList) {
            String shapeUniqueId = shapeRepo.getShapeUniqueId();
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            byte[] bytes = shapeUniqueId.getBytes(UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byteBuffer.put(bytes);
            byteBuffer.putInt(shapeRepo.getOffset());
            byteBuffer.putInt(shapeRepo.getLength());
        }
        byteBuffer.putInt(offset);
    }

    @Override // com.onyx.android.sdk.replicator.note.data.point.PointDocumentLoader
    public void parse(@NotNull PointDocument document) throws Exception {
        Intrinsics.checkNotNullParameter(document, "document");
        parse(document, 0, Integer.MAX_VALUE);
    }

    @Override // com.onyx.android.sdk.replicator.note.data.point.PointDocumentLoader
    public void save(@NotNull PointDocument document) throws Exception {
        Intrinsics.checkNotNullParameter(document, "document");
        Benchmark benchmark = new Benchmark();
        FileChannel channel = new FileOutputStream(document.getFilePath()).getChannel();
        try {
            List<ShapeRepo> shapeRepoList = document.getShapeRepoList();
            Intrinsics.checkNotNull(shapeRepoList);
            int size = shapeRepoList.size() * 44;
            Iterator<ShapeRepo> it2 = shapeRepoList.iterator();
            int i = 0;
            while (it2.hasNext()) {
                List<TinyPoint> tinyPointList = it2.next().getTinyPointList();
                Intrinsics.checkNotNull(tinyPointList);
                i += (tinyPointList.size() * 16) + 4;
            }
            ByteBuffer allocate = ByteBuffer.allocate(i + size + 76 + 4);
            allocate.clear();
            Intrinsics.checkNotNull(allocate);
            document.addHeaderToBuf(allocate);
            saveShapeRepo(shapeRepoList, allocate, saveShapePoint(shapeRepoList, allocate, 76));
            allocate.flip();
            while (allocate.hasRemaining()) {
                channel.write(allocate);
            }
            channel.force(true);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(channel, null);
            if (benchmark.duration() > 1000) {
                Debug.INSTANCE.m32044e(PointDocumentLoaderV1.class, "save point document use long time: " + benchmark.duration() + HttpMeasureConstants.f94668b, new Object[0]);
            }
            if (FileUtils.INSTANCE.getFileSize(document.getFilePath()) <= 0) {
                Debug.INSTANCE.m32044e(PointDocumentLoaderV1.class, "save point document, file size is zero. filePath = " + document.getFilePath(), new Object[0]);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(channel, th);
                throw th2;
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.data.point.PointDocumentLoader
    public void parse(@NotNull PointDocument document, int start, int count) throws Exception {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(document, "document");
        FileInputStream fileInputStream = new FileInputStream(document.getFilePath());
        try {
            long documentSize = (document.getDocumentSize() - document.getXref()) - 4;
            long j = 44;
            if (((int) (documentSize % j)) == 0) {
                int i = (int) (documentSize / j);
                FileChannel channel = fileInputStream.getChannel();
                try {
                    Intrinsics.checkNotNull(channel);
                    coerceAtMost = RangesKt___RangesKt.coerceAtMost(count, i);
                    List<ShapeRepo> parseShapeRepo = parseShapeRepo(document, channel, start, coerceAtMost);
                    parseShapePoint(channel, parseShapeRepo);
                    document.setShapeRepoList(parseShapeRepo);
                    CloseableKt.closeFinally(channel, null);
                    CloseableKt.closeFinally(fileInputStream, null);
                } finally {
                }
            } else {
                throw new Exception("error file data");
            }
        } finally {
        }
    }
}
