package org.apache.poi.hwmf.usermodel;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hwmf.record.HwmfEscape;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfRecord;

/* loaded from: classes12.dex */
public class HwmfEmbeddedIterator implements Iterator<HwmfEmbedded> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Object current;
    private final Deque<Iterator<?>> iterStack;

    public HwmfEmbeddedIterator(HwmfPicture hwmfPicture) {
        this(hwmfPicture.getRecords().iterator());
    }

    private HwmfEmbedded checkHwmfEscapeRecord() {
        if (!(this.current instanceof HwmfEscape)) {
            return null;
        }
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        hwmfEmbedded.setEmbeddedType(HwmfEmbeddedType.EMF);
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            do {
                try {
                    HwmfEscape.WmfEscapeEMF wmfEscapeEMF = (HwmfEscape.WmfEscapeEMF) ((HwmfEscape) this.current).getEscapeData();
                    unsynchronizedByteArrayOutputStream.write(wmfEscapeEMF.getEmfData());
                    this.current = null;
                    if (wmfEscapeEMF.getRemainingBytes() <= 0 || !hasNext()) {
                        break;
                    }
                } finally {
                }
            } while (this.current instanceof HwmfEscape);
            hwmfEmbedded.setData(unsynchronizedByteArrayOutputStream.toByteArray());
            unsynchronizedByteArrayOutputStream.close();
            return hwmfEmbedded;
        } catch (IOException unused) {
            return null;
        }
    }

    private HwmfEmbedded checkHwmfImageRecord() {
        Object obj = this.current;
        if (!(obj instanceof HwmfFill.HwmfImageRecord)) {
            return null;
        }
        this.current = null;
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        hwmfEmbedded.setEmbeddedType(HwmfEmbeddedType.BMP);
        hwmfEmbedded.setData(((HwmfFill.HwmfImageRecord) obj).getBMPData());
        return hwmfEmbedded;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.iterStack.isEmpty()) {
            return false;
        }
        if (this.current != null) {
            return true;
        }
        do {
            Iterator<?> peek = this.iterStack.peek();
            while (peek.hasNext()) {
                Object next = peek.next();
                if (next instanceof HwmfFill.HwmfImageRecord) {
                    this.current = next;
                    return true;
                }
                if (next instanceof HwmfEscape) {
                    HwmfEscape hwmfEscape = (HwmfEscape) next;
                    if (hwmfEscape.getEscapeFunction() == HwmfEscape.EscapeFunction.META_ESCAPE_ENHANCED_METAFILE && ((HwmfEscape.WmfEscapeEMF) hwmfEscape.getEscapeData()).isValid()) {
                        this.current = next;
                        return true;
                    }
                }
            }
            this.iterStack.pop();
        } while (!this.iterStack.isEmpty());
        return false;
    }

    public HwmfEmbeddedIterator(Iterator<HwmfRecord> it2) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.iterStack = arrayDeque;
        arrayDeque.add(it2);
    }

    @Override // java.util.Iterator
    public HwmfEmbedded next() {
        HwmfEmbedded checkHwmfImageRecord = checkHwmfImageRecord();
        if (checkHwmfImageRecord != null) {
            return checkHwmfImageRecord;
        }
        HwmfEmbedded checkHwmfEscapeRecord = checkHwmfEscapeRecord();
        if (checkHwmfEscapeRecord != null) {
            return checkHwmfEscapeRecord;
        }
        throw new NoSuchElementException("no further embedded emf records found.");
    }
}
