package org.apache.poi.smtp;

/* loaded from: classes12.dex */
public interface SMTPCodec {

    /* renamed from: org.apache.poi.smtp.SMTPCodec$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196481 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding;

        static {
            int[] iArr = new int[ContentTransferEncoding.values().length];
            $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding = iArr;
            try {
                iArr[ContentTransferEncoding.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.BIT_7.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.BIT_8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.BASE64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.BINARY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.X_TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.QUOTED_PRINTABLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[ContentTransferEncoding.UNKNOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static SMTPCodec create(ContentTransferEncoding contentTransferEncoding) {
        int i = C196481.$SwitchMap$org$apache$poi$smtp$ContentTransferEncoding[contentTransferEncoding.ordinal()];
        if (i == 1) {
            return new EmptyCodec();
        }
        if (i == 4) {
            return new Base64Codec();
        }
        if (i == 7) {
            return new QuotedPrintableCodec();
        }
        throw new SMTPException(String.format("Unsupported ContentTransferEncoding: %s", contentTransferEncoding));
    }

    byte[] decode(String str) throws Exception;

    byte[] decode(byte[] bArr) throws Exception;
}
