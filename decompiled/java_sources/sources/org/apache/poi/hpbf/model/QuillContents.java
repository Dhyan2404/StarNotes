package org.apache.poi.hpbf.model;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.nio.charset.Charset;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpbf.model.qcbits.QCBit;
import org.apache.poi.hpbf.model.qcbits.QCPLCBit;
import org.apache.poi.hpbf.model.qcbits.QCTextBit;
import org.apache.poi.hpbf.model.qcbits.UnknownQCBit;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class QuillContents extends HPBFPart {
    private static final Logger LOG = LogManager.getLogger((Class<?>) QuillContents.class);
    private static final String[] PATH = {"Quill", "QuillSub", "CONTENTS"};
    private final QCBit[] bits;

    public QuillContents(DirectoryNode directoryNode) throws IOException {
        super(directoryNode, PATH);
        byte[] data = getData();
        String str = new String(data, 0, 8, LocaleUtil.CHARSET_1252);
        if (!str.equals("CHNKINK ")) {
            throw new IllegalArgumentException("Expecting 'CHNKINK ' but was '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
        this.bits = new QCBit[20];
        for (int i = 0; i < 20; i++) {
            int i2 = (i * 24) + 32;
            if (data[i2] == 24 && data[i2 + 1] == 0) {
                Charset charset = LocaleUtil.CHARSET_1252;
                String str2 = new String(data, i2 + 2, 4, charset);
                int uShort = LittleEndian.getUShort(data, i2 + 6);
                int uShort2 = LittleEndian.getUShort(data, i2 + 8);
                int uShort3 = LittleEndian.getUShort(data, i2 + 10);
                String str3 = new String(data, i2 + 12, 4, charset);
                int uInt = (int) LittleEndian.getUInt(data, i2 + 16);
                byte[] safelyClone = IOUtils.safelyClone(data, uInt, (int) LittleEndian.getUInt(data, i2 + 20), EscherPart.getMaxRecordLength());
                if (str3.equals("TEXT")) {
                    this.bits[i] = new QCTextBit(str2, str3, safelyClone);
                } else if (str3.equals("PLC ")) {
                    try {
                        this.bits[i] = QCPLCBit.createQCPLCBit(str2, str3, safelyClone);
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        LOG.atWarn().log("Unable to read Quill Contents PLC Bit record. Ignoring this record.");
                        this.bits[i] = new UnknownQCBit(str2, str3, safelyClone);
                    }
                } else {
                    this.bits[i] = new UnknownQCBit(str2, str3, safelyClone);
                }
                this.bits[i].setOptA(uShort);
                this.bits[i].setOptB(uShort2);
                this.bits[i].setOptC(uShort3);
                this.bits[i].setDataOffset(uInt);
            }
        }
    }

    @Override // org.apache.poi.hpbf.model.HPBFPart
    public void generateData() {
        throw new IllegalStateException("Not done yet!");
    }

    public QCBit[] getBits() {
        return this.bits;
    }
}
