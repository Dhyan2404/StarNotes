package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.model.types.FibRgLw95AbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class FibRgLw95 extends FibRgLw95AbstractType implements FibRgLw {

    /* renamed from: org.apache.poi.hwpf.model.FibRgLw95$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195621 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType;

        static {
            int[] iArr = new int[SubdocumentType.values().length];
            $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType = iArr;
            try {
                iArr[SubdocumentType.MAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.FOOTNOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.MACRO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.ANNOTATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.ENDNOTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.TEXTBOX.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[SubdocumentType.HEADER_TEXTBOX.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public FibRgLw95() {
    }

    @Override // org.apache.poi.hwpf.model.FibRgLw
    public int getSubdocumentTextStreamLength(SubdocumentType subdocumentType) {
        switch (C195621.$SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[subdocumentType.ordinal()]) {
            case 1:
                return getCcpText();
            case 2:
                return getCcpFtn();
            case 3:
                return getCcpHdd();
            case 4:
                return getCcpMcr();
            case 5:
                return getCcpAtn();
            case 6:
                return getCcpEdn();
            case 7:
                return getCcpTxbx();
            case 8:
                return getCcpHdrTxbx();
            default:
                throw new UnsupportedOperationException("Unsupported: " + subdocumentType);
        }
    }

    @Override // org.apache.poi.hwpf.model.FibRgLw
    public void setSubdocumentTextStreamLength(SubdocumentType subdocumentType, int i) {
        switch (C195621.$SwitchMap$org$apache$poi$hwpf$model$SubdocumentType[subdocumentType.ordinal()]) {
            case 1:
                setCcpText(i);
                return;
            case 2:
                setCcpFtn(i);
                return;
            case 3:
                setCcpHdd(i);
                return;
            case 4:
                setCbMac(i);
                return;
            case 5:
                setCcpAtn(i);
                return;
            case 6:
                setCcpEdn(i);
                return;
            case 7:
                setCcpTxbx(i);
                return;
            case 8:
                setCcpHdrTxbx(i);
                return;
            default:
                throw new UnsupportedOperationException("Unsupported: " + subdocumentType);
        }
    }

    public FibRgLw95(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
