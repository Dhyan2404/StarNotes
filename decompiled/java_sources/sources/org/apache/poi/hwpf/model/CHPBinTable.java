package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.CHPBinTable;
import org.apache.poi.hwpf.model.CHPX;
import org.apache.poi.hwpf.model.io.HWPFFileSystem;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.sprm.SprmIterator;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class CHPBinTable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) CHPBinTable.class);
    protected List<CHPX> _textRuns;

    public CHPBinTable() {
        this._textRuns = new ArrayList();
    }

    private static int binarySearch(List<CHPX> list, int i) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            int start = list.get(i3).getStart();
            if (start < i) {
                i2 = i3 + 1;
            } else {
                if (start <= i) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$rebuild$0(Map map, CHPX chpx, CHPX chpx2) {
        return ((Integer) map.get(chpx)).compareTo((Integer) map.get(chpx2));
    }

    public void adjustForDelete(int i, int i2, int i3) {
        int size = this._textRuns.size();
        int i4 = i2 + i3;
        CHPX chpx = this._textRuns.get(i);
        int i5 = i;
        while (chpx.getEnd() < i4) {
            i5++;
            chpx = this._textRuns.get(i5);
        }
        if (i == i5) {
            CHPX chpx2 = this._textRuns.get(i5);
            chpx2.setEnd((chpx2.getEnd() - i4) + i2);
        } else {
            this._textRuns.get(i).setEnd(i2);
            while (true) {
                i++;
                if (i >= i5) {
                    break;
                }
                CHPX chpx3 = this._textRuns.get(i);
                chpx3.setStart(i2);
                chpx3.setEnd(i2);
            }
            CHPX chpx4 = this._textRuns.get(i5);
            chpx4.setEnd((chpx4.getEnd() - i4) + i2);
        }
        while (true) {
            i5++;
            if (i5 >= size) {
                return;
            }
            CHPX chpx5 = this._textRuns.get(i5);
            chpx5.setStart(chpx5.getStart() - i3);
            chpx5.setEnd(chpx5.getEnd() - i3);
        }
    }

    public void adjustForInsert(int i, int i2) {
        int size = this._textRuns.size();
        CHPX chpx = this._textRuns.get(i);
        chpx.setEnd(chpx.getEnd() + i2);
        while (true) {
            i++;
            if (i >= size) {
                return;
            }
            CHPX chpx2 = this._textRuns.get(i);
            chpx2.setStart(chpx2.getStart() + i2);
            chpx2.setEnd(chpx2.getEnd() + i2);
        }
    }

    public List<CHPX> getTextRuns() {
        return this._textRuns;
    }

    public void insert(int i, int i2, SprmBuffer sprmBuffer) {
        CHPX chpx = new CHPX(0, 0, sprmBuffer);
        chpx.setStart(i2);
        chpx.setEnd(i2);
        if (i == this._textRuns.size()) {
            this._textRuns.add(chpx);
            return;
        }
        CHPX chpx2 = this._textRuns.get(i);
        if (chpx2.getStart() >= i2) {
            this._textRuns.add(i, chpx);
            return;
        }
        CHPX chpx3 = new CHPX(0, 0, chpx2.getSprmBuf());
        chpx3.setStart(i2);
        chpx3.setEnd(chpx2.getEnd());
        chpx2.setEnd(i2);
        this._textRuns.add(i + 1, chpx);
        this._textRuns.add(i + 2, chpx3);
    }

    public void rebuild(ComplexFileTable complexFileTable) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        if (complexFileTable != null) {
            SprmBuffer[] grpprls = complexFileTable.getGrpprls();
            for (TextPiece textPiece : complexFileTable.getTextPieceTable().getTextPieces()) {
                PropertyModifier prm = textPiece.getPieceDescriptor().getPrm();
                if (prm.isComplex()) {
                    short igrpprl = prm.getIgrpprl();
                    if (igrpprl < 0 || igrpprl >= grpprls.length) {
                        LOG.atWarn().log("{}'s PRM references to unknown grpprl", textPiece);
                    } else {
                        SprmBuffer sprmBuffer = grpprls[igrpprl];
                        SprmIterator it2 = sprmBuffer.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (it2.next().getType() == 2) {
                                    z = true;
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (z) {
                            this._textRuns.add(new CHPX(textPiece.getStart(), textPiece.getEnd(), sprmBuffer.copy()));
                        }
                    }
                }
            }
            LOG.atDebug().log("Merged with CHPX from complex file table in {} ms ({} elements in total)", Unbox.box(System.currentTimeMillis() - currentTimeMillis), Unbox.box(this._textRuns.size()));
            currentTimeMillis = System.currentTimeMillis();
        }
        ArrayList arrayList = new ArrayList(this._textRuns);
        arrayList.sort(PropertyNode.StartComparator);
        LOG.atDebug().log("CHPX sorted by start position in {} ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis));
        long currentTimeMillis2 = System.currentTimeMillis();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<CHPX> it3 = this._textRuns.iterator();
        int i = 0;
        while (it3.hasNext()) {
            identityHashMap.put(it3.next(), Integer.valueOf(i));
            i++;
        }
        Comparator comparator = new Comparator() { // from class: com.sunia.HTREnginev2.g20
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$rebuild$0;
                lambda$rebuild$0 = CHPBinTable.lambda$rebuild$0(identityHashMap, (CHPX) obj, (CHPX) obj2);
                return lambda$rebuild$0;
            }
        };
        LOG.atDebug().log("CHPX's order map created in {} ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis2));
        long currentTimeMillis3 = System.currentTimeMillis();
        HashSet hashSet = new HashSet();
        for (CHPX chpx : this._textRuns) {
            hashSet.add(Integer.valueOf(chpx.getStart()));
            hashSet.add(Integer.valueOf(chpx.getEnd()));
        }
        hashSet.remove(0);
        ArrayList arrayList2 = new ArrayList(hashSet);
        Collections.sort(arrayList2);
        LOG.atDebug().log("Texts CHPX boundaries collected in {} ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis3));
        long currentTimeMillis4 = System.currentTimeMillis();
        LinkedList linkedList = new LinkedList();
        Iterator it4 = arrayList2.iterator();
        int i2 = 0;
        while (it4.hasNext()) {
            int intValue = ((Integer) it4.next()).intValue();
            int abs = Math.abs(binarySearch(arrayList, intValue));
            while (abs >= arrayList.size()) {
                abs--;
            }
            while (abs > 0 && ((CHPX) arrayList.get(abs)).getStart() >= intValue) {
                abs--;
            }
            LinkedList linkedList2 = new LinkedList();
            while (abs < arrayList.size()) {
                CHPX chpx2 = (CHPX) arrayList.get(abs);
                if (intValue < chpx2.getStart()) {
                    break;
                }
                if (Math.max(i2, chpx2.getStart()) < Math.min(intValue, chpx2.getEnd())) {
                    linkedList2.add(chpx2);
                }
                abs++;
            }
            if (linkedList2.isEmpty()) {
                LOG.atWarn().log("Text piece [{}; {}) has no CHPX. Creating new one.", Unbox.box(i2), Unbox.box(intValue));
                linkedList.add(new CHPX(i2, intValue, new SprmBuffer(0)));
            } else {
                if (linkedList2.size() == 1) {
                    CHPX chpx3 = (CHPX) linkedList2.get(0);
                    if (chpx3.getStart() == i2 && chpx3.getEnd() == intValue) {
                        linkedList.add(chpx3);
                    }
                }
                linkedList2.sort(comparator);
                SprmBuffer sprmBuffer2 = new SprmBuffer(0);
                Iterator it5 = linkedList2.iterator();
                while (it5.hasNext()) {
                    sprmBuffer2.append(((CHPX) it5.next()).getGrpprl(), 0);
                }
                linkedList.add(new CHPX(i2, intValue, sprmBuffer2));
            }
            i2 = intValue;
        }
        this._textRuns = new ArrayList(linkedList);
        LOG.atDebug().log("CHPX rebuilt in {} ms ({} elements)", Unbox.box(System.currentTimeMillis() - currentTimeMillis4), Unbox.box(this._textRuns.size()));
        long currentTimeMillis5 = System.currentTimeMillis();
        Iterator<CHPX> it6 = this._textRuns.iterator();
        CHPX chpx4 = null;
        while (it6.hasNext()) {
            CHPX next = it6.next();
            if (chpx4 != null && chpx4.getEnd() == next.getStart() && Arrays.equals(chpx4.getGrpprl(), next.getGrpprl())) {
                chpx4.setEnd(next.getEnd());
                it6.remove();
            } else {
                chpx4 = next;
            }
        }
        LOG.atDebug().log("CHPX compacted in {} ms ({} elements)", Unbox.box(System.currentTimeMillis() - currentTimeMillis5), Unbox.box(this._textRuns.size()));
    }

    @Deprecated
    public void writeTo(HWPFFileSystem hWPFFileSystem, int i, CharIndexTranslator charIndexTranslator) throws IOException {
        writeTo(hWPFFileSystem.getStream("WordDocument"), hWPFFileSystem.getStream("1Table"), i, charIndexTranslator);
    }

    public CHPBinTable(byte[] bArr, byte[] bArr2, int i, int i2, int i3, TextPieceTable textPieceTable) {
        this(bArr, bArr2, i, i2, textPieceTable);
    }

    public CHPBinTable(byte[] bArr, byte[] bArr2, int i, int i2, CharIndexTranslator charIndexTranslator) {
        this._textRuns = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        PlexOfCps plexOfCps = new PlexOfCps(bArr2, i, i2, 4);
        int length = plexOfCps.length();
        for (int i3 = 0; i3 < length; i3++) {
            for (CHPX chpx : new CHPFormattedDiskPage(bArr, LittleEndian.getInt(plexOfCps.getProperty(i3).getBytes()) * 512, charIndexTranslator).getCHPXs()) {
                if (chpx != null) {
                    this._textRuns.add(chpx);
                }
            }
        }
        Logger logger = LOG;
        logger.atDebug().log("CHPX FKPs loaded in {} ms ({} elements)", Unbox.box(System.currentTimeMillis() - currentTimeMillis), Unbox.box(this._textRuns.size()));
        if (this._textRuns.isEmpty()) {
            logger.atWarn().log("CHPX FKPs are empty");
            this._textRuns.add(new CHPX(0, 0, new SprmBuffer(0)));
        }
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream, ByteArrayOutputStream byteArrayOutputStream2, int i, CharIndexTranslator charIndexTranslator) throws IOException {
        PlexOfCps plexOfCps = new PlexOfCps(4);
        int size = byteArrayOutputStream.size() % 512;
        if (size != 0) {
            byteArrayOutputStream.write(new byte[512 - size]);
        }
        int size2 = byteArrayOutputStream.size() / 512;
        int byteIndex = charIndexTranslator.getByteIndex(this._textRuns.get(r2.size() - 1).getEnd());
        List<CHPX> list = this._textRuns;
        while (true) {
            int byteIndex2 = charIndexTranslator.getByteIndex(list.get(0).getStart());
            CHPFormattedDiskPage cHPFormattedDiskPage = new CHPFormattedDiskPage();
            cHPFormattedDiskPage.fill(list);
            byteArrayOutputStream.write(cHPFormattedDiskPage.toByteArray(charIndexTranslator));
            list = cHPFormattedDiskPage.getOverflow();
            int byteIndex3 = list != null ? charIndexTranslator.getByteIndex(list.get(0).getStart()) : byteIndex;
            byte[] bArr = new byte[4];
            int i2 = size2 + 1;
            LittleEndian.putInt(bArr, 0, size2);
            plexOfCps.addProperty(new GenericPropertyNode(byteIndex2, byteIndex3, bArr));
            if (list == null) {
                byteArrayOutputStream2.write(plexOfCps.toByteArray());
                return;
            }
            size2 = i2;
        }
    }
}
