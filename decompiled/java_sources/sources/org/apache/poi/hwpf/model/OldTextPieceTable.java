package org.apache.poi.hwpf.model;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.poi.hwpf.util.DoubleByteUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class OldTextPieceTable extends TextPieceTable {
    public OldTextPieceTable() {
    }

    @Override // org.apache.poi.hwpf.model.TextPieceTable
    public int getEncodingMultiplier(TextPiece textPiece) {
        Charset charset = textPiece.getPieceDescriptor().getCharset();
        return (charset == null || !DoubleByteUtil.DOUBLE_BYTE_CHARSETS.contains(charset)) ? 1 : 2;
    }

    @Override // org.apache.poi.hwpf.model.TextPieceTable
    public TextPiece newTextPiece(int i, int i2, byte[] bArr, PieceDescriptor pieceDescriptor) {
        return new OldTextPiece(i, i2, bArr, pieceDescriptor);
    }

    public OldTextPieceTable(byte[] bArr, byte[] bArr2, int i, int i2, int i3, Charset charset) {
        PlexOfCps plexOfCps = new PlexOfCps(bArr2, i, i2, PieceDescriptor.getSizeInBytes());
        int length = plexOfCps.length();
        PieceDescriptor[] pieceDescriptorArr = new PieceDescriptor[length];
        for (int i4 = 0; i4 < length; i4++) {
            pieceDescriptorArr[i4] = new PieceDescriptor(plexOfCps.getProperty(i4).getBytes(), 0, charset);
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
            this._textPieces.add(newTextPiece(start, end, IOUtils.safelyClone(bArr, filePosition2, (end - start) * ((pieceDescriptorArr[i6].isUnicode() || (charset != null && DoubleByteUtil.DOUBLE_BYTE_CHARSETS.contains(charset))) ? 2 : 1), TextPieceTable.getMaxRecordLength()), pieceDescriptorArr[i6]));
        }
        Collections.sort(this._textPieces);
        ArrayList<TextPiece> arrayList = new ArrayList<>(this._textPieces);
        this._textPiecesFCOrder = arrayList;
        arrayList.sort(TextPieceTable.byFilePosition());
    }
}
