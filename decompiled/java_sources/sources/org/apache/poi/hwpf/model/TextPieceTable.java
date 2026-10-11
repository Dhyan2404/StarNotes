package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Function;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.TextPiece;
import org.apache.poi.hwpf.model.TextPieceTable;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class TextPieceTable implements CharIndexTranslator {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) TextPieceTable.class);
    private static int MAX_RECORD_LENGTH = 100000000;
    int _cpMin;
    protected ArrayList<TextPiece> _textPieces;
    protected ArrayList<TextPiece> _textPiecesFCOrder;

    public TextPieceTable() {
        this._textPieces = new ArrayList<>();
        this._textPiecesFCOrder = new ArrayList<>();
    }

    public static Comparator<TextPiece> byFilePosition() {
        return Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.ydn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer lambda$byFilePosition$0;
                lambda$byFilePosition$0 = TextPieceTable.lambda$byFilePosition$0((TextPiece) obj);
                return lambda$byFilePosition$0;
            }
        });
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$byFilePosition$0(TextPiece textPiece) {
        return Integer.valueOf(textPiece.getPieceDescriptor().getFilePosition());
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public void add(TextPiece textPiece) {
        this._textPieces.add(textPiece);
        this._textPiecesFCOrder.add(textPiece);
        Collections.sort(this._textPieces);
        this._textPiecesFCOrder.sort(byFilePosition());
    }

    public int adjustForInsert(int i, int i2) {
        int size = this._textPieces.size();
        TextPiece textPiece = this._textPieces.get(i);
        textPiece.setEnd(textPiece.getEnd() + i2);
        while (true) {
            i++;
            if (i >= size) {
                return i2;
            }
            TextPiece textPiece2 = this._textPieces.get(i);
            textPiece2.setStart(textPiece2.getStart() + i2);
            textPiece2.setEnd(textPiece2.getEnd() + i2);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TextPieceTable)) {
            return false;
        }
        TextPieceTable textPieceTable = (TextPieceTable) obj;
        int size = textPieceTable._textPieces.size();
        if (size != this._textPieces.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!textPieceTable._textPieces.get(i).equals(this._textPieces.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.poi.hwpf.model.CharIndexTranslator
    public int getByteIndex(int i) {
        Iterator<TextPiece> it2 = this._textPieces.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            if (i >= next.getEnd()) {
                i2 = next.getPieceDescriptor().getFilePosition() + ((next.getEnd() - next.getStart()) * (next.isUnicode() ? 2 : 1));
                if (i == next.getEnd()) {
                    return i2;
                }
            } else if (i < next.getEnd()) {
                return next.getPieceDescriptor().getFilePosition() + ((i - next.getStart()) * (next.isUnicode() ? 2 : 1));
            }
        }
        return i2;
    }

    @Deprecated
    public int getCharIndex(int i) {
        return getCharIndex(i, 0);
    }

    @Override // org.apache.poi.hwpf.model.CharIndexTranslator
    public int[][] getCharIndexRanges(int i, int i2) {
        int max;
        int min;
        LinkedList linkedList = new LinkedList();
        Iterator<TextPiece> it2 = this._textPiecesFCOrder.iterator();
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            int filePosition = next.getPieceDescriptor().getFilePosition();
            if (i2 <= filePosition) {
                break;
            }
            int filePosition2 = next.getPieceDescriptor().getFilePosition() + next.bytesLength();
            if (i <= filePosition2 && (max = Math.max(filePosition, i)) <= (min = Math.min(filePosition2, i2))) {
                int encodingMultiplier = getEncodingMultiplier(next);
                int start = next.getStart() + ((max - filePosition) / encodingMultiplier);
                linkedList.add(new int[]{start, ((min - max) / encodingMultiplier) + start});
            }
        }
        return (int[][]) linkedList.toArray(new int[linkedList.size()]);
    }

    public int getCpMin() {
        return this._cpMin;
    }

    public int getEncodingMultiplier(TextPiece textPiece) {
        return textPiece.isUnicode() ? 2 : 1;
    }

    public StringBuilder getText() {
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        Iterator<TextPiece> it2 = this._textPieces.iterator();
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            String sb2 = next.getStringBuilder().toString();
            int length = sb2.length();
            if (length != next.getEnd() - next.getStart()) {
                LOG.atWarn().log("Text piece has boundaries [{}; {}) but length {}", Unbox.box(next.getStart()), Unbox.box(next.getEnd()), Unbox.box(next.getEnd() - next.getStart()));
            }
            sb.replace(next.getStart(), next.getStart() + length, sb2);
        }
        LOG.atDebug().log("Document text were rebuilt in {} ms ({} chars)", Unbox.box(System.currentTimeMillis() - currentTimeMillis), Unbox.box(sb.length()));
        return sb;
    }

    public List<TextPiece> getTextPieces() {
        return this._textPieces;
    }

    public int hashCode() {
        return this._textPieces.hashCode();
    }

    @Override // org.apache.poi.hwpf.model.CharIndexTranslator
    public boolean isIndexInTable(int i) {
        Iterator<TextPiece> it2 = this._textPiecesFCOrder.iterator();
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            int filePosition = next.getPieceDescriptor().getFilePosition();
            if (i <= next.bytesLength() + filePosition) {
                return filePosition <= i;
            }
        }
        return false;
    }

    @Override // org.apache.poi.hwpf.model.CharIndexTranslator
    public int lookIndexBackward(int i) {
        Iterator<TextPiece> it2 = this._textPiecesFCOrder.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            int filePosition = next.getPieceDescriptor().getFilePosition();
            if (i <= next.bytesLength() + filePosition) {
                return filePosition > i ? i2 : i;
            }
            i2 = next.bytesLength() + filePosition;
        }
        return i;
    }

    @Override // org.apache.poi.hwpf.model.CharIndexTranslator
    public int lookIndexForward(int i) {
        if (this._textPiecesFCOrder.isEmpty()) {
            throw new IllegalStateException("Text pieces table is empty");
        }
        int i2 = 0;
        if (this._textPiecesFCOrder.get(0).getPieceDescriptor().getFilePosition() > i) {
            return this._textPiecesFCOrder.get(0).getPieceDescriptor().getFilePosition();
        }
        if (this._textPiecesFCOrder.get(r0.size() - 1).getPieceDescriptor().getFilePosition() <= i) {
            return i;
        }
        int size = this._textPiecesFCOrder.size() - 1;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            TextPiece textPiece = this._textPiecesFCOrder.get(i3);
            int filePosition = textPiece.getPieceDescriptor().getFilePosition();
            if (filePosition < i) {
                i2 = i3 + 1;
            } else {
                if (filePosition <= i) {
                    return textPiece.getPieceDescriptor().getFilePosition();
                }
                size = i3 - 1;
            }
        }
        return this._textPiecesFCOrder.get(i2 + 1).getPieceDescriptor().getFilePosition();
    }

    public TextPiece newTextPiece(int i, int i2, byte[] bArr, PieceDescriptor pieceDescriptor) {
        return new TextPiece(i, i2, bArr, pieceDescriptor);
    }

    public byte[] writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        PlexOfCps plexOfCps = new PlexOfCps(PieceDescriptor.getSizeInBytes());
        Iterator<TextPiece> it2 = this._textPieces.iterator();
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            PieceDescriptor pieceDescriptor = next.getPieceDescriptor();
            if (byteArrayOutputStream.size() % 512 != 0) {
                byteArrayOutputStream.write(IOUtils.safelyAllocate(512 - r3, MAX_RECORD_LENGTH));
            }
            pieceDescriptor.setFilePosition(byteArrayOutputStream.size());
            byteArrayOutputStream.write(next.getRawBytes());
            plexOfCps.addProperty(new GenericPropertyNode(next.getStart(), next.getEnd(), pieceDescriptor.toByteArray()));
        }
        return plexOfCps.toByteArray();
    }

    @Deprecated
    public int getCharIndex(int i, int i2) {
        int lookIndexForward = lookIndexForward(i);
        Iterator<TextPiece> it2 = this._textPieces.iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            int filePosition = next.getPieceDescriptor().getFilePosition();
            int bytesLength = next.bytesLength();
            int i4 = filePosition + bytesLength;
            if (lookIndexForward >= filePosition && lookIndexForward <= i4) {
                bytesLength = (lookIndexForward <= filePosition || lookIndexForward >= i4) ? bytesLength - (i4 - lookIndexForward) : lookIndexForward - filePosition;
            }
            if (next.isUnicode()) {
                bytesLength /= 2;
            }
            i3 += bytesLength;
            if (lookIndexForward >= filePosition && lookIndexForward <= i4 && i3 >= i2) {
                break;
            }
        }
        return i3;
    }

    public TextPieceTable(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        this._textPieces = new ArrayList<>();
        this._textPiecesFCOrder = new ArrayList<>();
        PlexOfCps plexOfCps = new PlexOfCps(bArr2, i, i2, PieceDescriptor.getSizeInBytes());
        int length = plexOfCps.length();
        PieceDescriptor[] pieceDescriptorArr = new PieceDescriptor[length];
        for (int i4 = 0; i4 < length; i4++) {
            pieceDescriptorArr[i4] = new PieceDescriptor(plexOfCps.getProperty(i4).getBytes(), 0);
        }
        this._cpMin = pieceDescriptorArr[0].getFilePosition() - i3;
        for (int i5 = 0; i5 < length; i5++) {
            int filePosition = pieceDescriptorArr[i5].getFilePosition() - i3;
            if (filePosition < this._cpMin) {
                this._cpMin = filePosition;
            }
        }
        for (int i6 = 0; i6 < length; i6++) {
            int filePosition2 = pieceDescriptorArr[i6].getFilePosition();
            GenericPropertyNode property = plexOfCps.getProperty(i6);
            int start = property.getStart();
            int end = property.getEnd();
            this._textPieces.add(newTextPiece(start, end, IOUtils.safelyClone(bArr, filePosition2, (end - start) * (pieceDescriptorArr[i6].isUnicode() ? 2 : 1), MAX_RECORD_LENGTH), pieceDescriptorArr[i6]));
        }
        Collections.sort(this._textPieces);
        ArrayList<TextPiece> arrayList = new ArrayList<>(this._textPieces);
        this._textPiecesFCOrder = arrayList;
        arrayList.sort(byFilePosition());
    }

    public boolean isIndexInTable(int i, int i2) {
        Iterator<TextPiece> it2 = this._textPiecesFCOrder.iterator();
        while (it2.hasNext()) {
            TextPiece next = it2.next();
            int filePosition = next.getPieceDescriptor().getFilePosition();
            if (i < next.bytesLength() + filePosition) {
                return Math.max(i, filePosition) < Math.min(i2, filePosition + next.bytesLength());
            }
        }
        return false;
    }
}
