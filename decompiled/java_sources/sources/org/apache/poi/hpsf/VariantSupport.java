package org.apache.poi.hpsf;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

/* loaded from: classes12.dex */
public class VariantSupport extends Variant {
    private static boolean logUnsupportedTypes;
    private static List<Long> unsupportedMessage;
    public static final int[] SUPPORTED_TYPES = {0, 2, 3, 20, 5, 64, 30, 31, 71, 11};
    private static final Logger LOG = LogManager.getLogger((Class<?>) VariantSupport.class);
    private static final byte[] paddingBytes = new byte[3];

    public static boolean isLogUnsupportedTypes() {
        return logUnsupportedTypes;
    }

    public static Object read(byte[] bArr, int i, int i2, long j, int i3) throws ReadingNotSupportedException, UnsupportedEncodingException {
        return read(new LittleEndianByteArrayInputStream(bArr, i), i2, j, i3);
    }

    public static void setLogUnsupportedTypes(boolean z) {
        logUnsupportedTypes = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0027. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int write(java.io.OutputStream r11, long r12, java.lang.Object r14, int r15) throws java.io.IOException, org.apache.poi.hpsf.WritingNotSupportedException {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hpsf.VariantSupport.write(java.io.OutputStream, long, java.lang.Object, int):int");
    }

    public static void writeUnsupportedTypeMessage(UnsupportedVariantTypeException unsupportedVariantTypeException) {
        if (isLogUnsupportedTypes()) {
            if (unsupportedMessage == null) {
                unsupportedMessage = new LinkedList();
            }
            Long valueOf = Long.valueOf(unsupportedVariantTypeException.getVariantType());
            if (unsupportedMessage.contains(valueOf)) {
                return;
            }
            LOG.atError().withThrowable(unsupportedVariantTypeException).log("Unsupported type");
            unsupportedMessage.add(valueOf);
        }
    }

    public boolean isSupportedType(int i) {
        for (int i2 : SUPPORTED_TYPES) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    public static Object read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream, int i, long j, int i2) throws ReadingNotSupportedException, UnsupportedEncodingException {
        int readIndex = littleEndianByteArrayInputStream.getReadIndex();
        int i3 = (int) j;
        TypedPropertyValue typedPropertyValue = new TypedPropertyValue(i3, null);
        try {
            try {
                typedPropertyValue.readValue(littleEndianByteArrayInputStream);
                if (i3 != 0) {
                    if (i3 == 11) {
                        return Boolean.valueOf(((VariantBool) typedPropertyValue.getValue()).getValue());
                    }
                    if (i3 == 64) {
                        return ((Filetime) typedPropertyValue.getValue()).getJavaValue();
                    }
                    if (i3 == 71) {
                        return ((ClipboardData) typedPropertyValue.getValue()).toByteArray();
                    }
                    if (i3 == 2) {
                        return Integer.valueOf(((Short) typedPropertyValue.getValue()).intValue());
                    }
                    if (i3 != 3 && i3 != 4 && i3 != 5) {
                        if (i3 == 30) {
                            return ((CodePageString) typedPropertyValue.getValue()).getJavaValue(i2);
                        }
                        if (i3 != 31) {
                            switch (i3) {
                                case 16:
                                case 17:
                                case 18:
                                case 19:
                                case 20:
                                case 21:
                                    break;
                                default:
                                    int readIndex2 = littleEndianByteArrayInputStream.getReadIndex() - readIndex;
                                    littleEndianByteArrayInputStream.setReadIndex(readIndex);
                                    byte[] safelyAllocate = IOUtils.safelyAllocate(readIndex2, CodePageString.getMaxRecordLength());
                                    littleEndianByteArrayInputStream.readFully(safelyAllocate, 0, readIndex2);
                                    throw new ReadingNotSupportedException(j, safelyAllocate);
                            }
                        } else {
                            return ((UnicodeString) typedPropertyValue.getValue()).toJavaString();
                        }
                    }
                }
                return typedPropertyValue.getValue();
            } catch (UnsupportedOperationException unused) {
                throw new ReadingNotSupportedException(j, IOUtils.toByteArray(littleEndianByteArrayInputStream, i, CodePageString.getMaxRecordLength()));
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
