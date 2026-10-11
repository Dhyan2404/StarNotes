package org.apache.poi.hmef.dev;

import com.bumptech.glide.load.engine.GlideException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.hmef.attribute.MAPIAttribute;
import org.apache.poi.hmef.attribute.TNEFAttribute;
import org.apache.poi.hmef.attribute.TNEFDateAttribute;
import org.apache.poi.hmef.attribute.TNEFProperty;
import org.apache.poi.hmef.attribute.TNEFStringAttribute;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class HMEFDumper {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;
    private InputStream inp;
    private boolean truncatePropertyData;

    public HMEFDumper(InputStream inputStream) throws IOException {
        this.inp = inputStream;
        int readInt = LittleEndian.readInt(inputStream);
        if (readInt == 574529400) {
            LittleEndian.readUShort(inputStream);
            return;
        }
        throw new IllegalArgumentException("TNEF signature not detected in file, expected 574529400 but got " + readInt);
    }

    private void dump() throws IOException {
        int i = 0;
        while (true) {
            int read = this.inp.read();
            if (read == -1) {
                return;
            }
            TNEFAttribute create = TNEFAttribute.create(this.inp);
            if (read == 2 && create.getProperty() == TNEFProperty.ID_ATTACHRENDERDATA) {
                i++;
                System.out.println();
                System.out.println("Attachment # " + i);
                System.out.println();
            }
            System.out.println("Level " + read + " : Type " + create.getType() + " : ID " + create.getProperty());
            if (create instanceof TNEFStringAttribute) {
                System.out.println(GlideException.C1935a.f14609h + GlideException.C1935a.f14609h + GlideException.C1935a.f14609h + ((TNEFStringAttribute) create).getString());
            }
            if (create instanceof TNEFDateAttribute) {
                System.out.println(GlideException.C1935a.f14609h + GlideException.C1935a.f14609h + GlideException.C1935a.f14609h + ((TNEFDateAttribute) create).getDate());
            }
            System.out.println(GlideException.C1935a.f14609h + "Data of length " + create.getData().length);
            if (create.getData().length > 0) {
                int length = create.getData().length;
                if (this.truncatePropertyData) {
                    length = Math.min(create.getData().length, 48);
                }
                int i2 = length / 16;
                if (i2 == 0) {
                    i2 = 1;
                }
                int i3 = 0;
                while (i3 < i2) {
                    int i4 = i3 * 16;
                    byte[] safelyClone = IOUtils.safelyClone(create.getData(), i4, i3 == i2 + (-1) ? length - i4 : 16, MAX_RECORD_LENGTH);
                    System.out.print(GlideException.C1935a.f14609h + HexDump.dump(safelyClone, 0L, 0));
                    i3++;
                }
            }
            System.out.println();
            if (create.getProperty() == TNEFProperty.ID_MAPIPROPERTIES || create.getProperty() == TNEFProperty.ID_ATTACHMENT) {
                for (MAPIAttribute mAPIAttribute : MAPIAttribute.create(create)) {
                    System.out.println(GlideException.C1935a.f14609h + GlideException.C1935a.f14609h + mAPIAttribute);
                }
                System.out.println();
            }
        }
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void main(String[] strArr) throws Exception {
        boolean z = true;
        if (strArr.length < 1) {
            throw new IllegalArgumentException("Filename must be given");
        }
        for (String str : strArr) {
            if (str.equalsIgnoreCase("--full")) {
                z = false;
            } else {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    HMEFDumper hMEFDumper = new HMEFDumper(fileInputStream);
                    hMEFDumper.setTruncatePropertyData(z);
                    hMEFDumper.dump();
                    fileInputStream.close();
                } finally {
                }
            }
        }
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public void setTruncatePropertyData(boolean z) {
        this.truncatePropertyData = z;
    }
}
