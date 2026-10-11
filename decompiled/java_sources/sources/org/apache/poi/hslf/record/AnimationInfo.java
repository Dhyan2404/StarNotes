package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class AnimationInfo extends RecordContainer {
    private byte[] _header;
    private AnimationInfoAtom animationAtom;

    public AnimationInfo(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof AnimationInfoAtom) {
            this.animationAtom = (AnimationInfoAtom) record;
        } else {
            Record.LOG.atError().log("First child record wasn't a AnimationInfoAtom, was of type {}", Unbox.box(record.getRecordType()));
        }
    }

    public AnimationInfoAtom getAnimationInfoAtom() {
        return this.animationAtom;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.AnimationInfo.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }

    public AnimationInfo() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        this._children = r0;
        AnimationInfoAtom animationInfoAtom = new AnimationInfoAtom();
        this.animationAtom = animationInfoAtom;
        Record[] recordArr = {animationInfoAtom};
    }
}
