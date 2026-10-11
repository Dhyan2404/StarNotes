package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.LinkedList;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.io.HWPFFileSystem;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public class ComplexFileTable {
    private static final byte GRPPRL_TYPE = 1;
    private static final byte TEXT_PIECE_TABLE_TYPE = 2;
    private SprmBuffer[] _grpprls;
    protected TextPieceTable _tpt;

    public ComplexFileTable() {
        this._tpt = new TextPieceTable();
    }

    public SprmBuffer[] getGrpprls() {
        return this._grpprls;
    }

    public TextPieceTable getTextPieceTable() {
        return this._tpt;
    }

    public TextPieceTable newTextPieceTable(byte[] bArr, byte[] bArr2, int i, int i2, int i3, Charset charset) {
        return new TextPieceTable(bArr, bArr2, i, i2, i3);
    }

    @Deprecated
    public void writeTo(HWPFFileSystem hWPFFileSystem) throws IOException {
        writeTo(hWPFFileSystem.getStream("WordDocument"), hWPFFileSystem.getStream("1Table"));
    }

    public ComplexFileTable(byte[] bArr, byte[] bArr2, int i, int i2, Charset charset) throws IOException {
        LinkedList linkedList = new LinkedList();
        while (bArr2[i] == 1) {
            int i3 = i + 1;
            short s = LittleEndian.getShort(bArr2, i3);
            int i4 = i3 + 2;
            byte[] safelyClone = IOUtils.safelyClone(bArr2, i4, s, HWPFDocument.getMaxRecordLength());
            i = i4 + s;
            linkedList.add(new SprmBuffer(safelyClone, false, 0));
        }
        this._grpprls = (SprmBuffer[]) linkedList.toArray(new SprmBuffer[0]);
        if (bArr2[i] == 2) {
            int i5 = i + 1;
            this._tpt = newTextPieceTable(bArr, bArr2, i5 + 4, LittleEndian.getInt(bArr2, i5), i2, charset);
        } else {
            throw new IOException("The text piece table is corrupted, expected byte value 2 but had " + ((int) bArr2[i]));
        }
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream, ByteArrayOutputStream byteArrayOutputStream2) throws IOException {
        byteArrayOutputStream2.write(2);
        byte[] writeTo = this._tpt.writeTo(byteArrayOutputStream);
        byte[] bArr = new byte[4];
        LittleEndian.putInt(bArr, 0, writeTo.length);
        byteArrayOutputStream2.write(bArr);
        byteArrayOutputStream2.write(writeTo);
    }

    public ComplexFileTable(byte[] bArr, byte[] bArr2, int i, int i2) throws IOException {
        this(bArr, bArr2, i, i2, StringUtil.WIN_1252);
    }
}
