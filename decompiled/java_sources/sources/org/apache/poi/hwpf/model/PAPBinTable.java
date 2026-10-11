package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.PAPBinTable;
import org.apache.poi.hwpf.model.PAPX;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.sprm.SprmIterator;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class PAPBinTable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) PAPBinTable.class);
    protected final ArrayList<PAPX> _paragraphs = new ArrayList<>();

    public PAPBinTable() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$rebuild$0(Map map, PAPX papx, PAPX papx2) {
        return ((Integer) map.get(papx)).compareTo((Integer) map.get(papx2));
    }

    public void adjustForDelete(int i, int i2, int i3) {
        int size = this._paragraphs.size();
        int i4 = i2 + i3;
        PAPX papx = this._paragraphs.get(i);
        int i5 = i;
        while (papx.getEnd() < i4) {
            i5++;
            papx = this._paragraphs.get(i5);
        }
        if (i == i5) {
            PAPX papx2 = this._paragraphs.get(i5);
            papx2.setEnd((papx2.getEnd() - i4) + i2);
        } else {
            this._paragraphs.get(i).setEnd(i2);
            while (true) {
                i++;
                if (i >= i5) {
                    break;
                }
                PAPX papx3 = this._paragraphs.get(i);
                papx3.setStart(i2);
                papx3.setEnd(i2);
            }
            PAPX papx4 = this._paragraphs.get(i5);
            papx4.setEnd((papx4.getEnd() - i4) + i2);
        }
        while (true) {
            i5++;
            if (i5 >= size) {
                return;
            }
            PAPX papx5 = this._paragraphs.get(i5);
            papx5.setStart(papx5.getStart() - i3);
            papx5.setEnd(papx5.getEnd() - i3);
        }
    }

    public void adjustForInsert(int i, int i2) {
        int size = this._paragraphs.size();
        PAPX papx = this._paragraphs.get(i);
        papx.setEnd(papx.getEnd() + i2);
        while (true) {
            i++;
            if (i >= size) {
                return;
            }
            PAPX papx2 = this._paragraphs.get(i);
            papx2.setStart(papx2.getStart() + i2);
            papx2.setEnd(papx2.getEnd() + i2);
        }
    }

    public ArrayList<PAPX> getParagraphs() {
        return this._paragraphs;
    }

    public void insert(int i, int i2, SprmBuffer sprmBuffer) {
        PAPX papx = new PAPX(0, 0, sprmBuffer);
        papx.setStart(i2);
        papx.setEnd(i2);
        if (i == this._paragraphs.size()) {
            this._paragraphs.add(papx);
            return;
        }
        PAPX papx2 = this._paragraphs.get(i);
        if (papx2 == null || papx2.getStart() >= i2) {
            this._paragraphs.add(i, papx);
            return;
        }
        PAPX papx3 = new PAPX(0, 0, papx2.getSprmBuf().copy());
        papx3.setStart(i2);
        papx3.setEnd(papx2.getEnd());
        papx2.setEnd(i2);
        this._paragraphs.add(i + 1, papx);
        this._paragraphs.add(i + 2, papx3);
    }

    public void rebuild(StringBuilder sb, ComplexFileTable complexFileTable) {
        rebuild(sb, complexFileTable, this._paragraphs);
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream, ByteArrayOutputStream byteArrayOutputStream2, CharIndexTranslator charIndexTranslator) throws IOException {
        PlexOfCps plexOfCps = new PlexOfCps(4);
        int size = byteArrayOutputStream.size() % 512;
        if (size != 0) {
            byteArrayOutputStream.write(new byte[512 - size]);
        }
        int size2 = byteArrayOutputStream.size() / 512;
        int byteIndex = charIndexTranslator.getByteIndex(this._paragraphs.get(r3.size() - 1).getEnd());
        ArrayList<PAPX> arrayList = this._paragraphs;
        while (true) {
            int byteIndex2 = charIndexTranslator.getByteIndex(arrayList.get(0).getStart());
            PAPFormattedDiskPage pAPFormattedDiskPage = new PAPFormattedDiskPage();
            pAPFormattedDiskPage.fill(arrayList);
            byteArrayOutputStream.write(pAPFormattedDiskPage.toByteArray(byteArrayOutputStream2, charIndexTranslator));
            arrayList = pAPFormattedDiskPage.getOverflow();
            int byteIndex3 = arrayList != null ? charIndexTranslator.getByteIndex(arrayList.get(0).getStart()) : byteIndex;
            byte[] bArr = new byte[4];
            int i = size2 + 1;
            LittleEndian.putInt(bArr, 0, size2);
            plexOfCps.addProperty(new GenericPropertyNode(byteIndex2, byteIndex3, bArr));
            if (arrayList == null) {
                byteArrayOutputStream2.write(plexOfCps.toByteArray());
                return;
            }
            size2 = i;
        }
    }

    public static void rebuild(StringBuilder sb, ComplexFileTable complexFileTable, List<PAPX> list) {
        int i;
        char c;
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        char c2 = 2;
        int i2 = 1;
        if (complexFileTable != null) {
            SprmBuffer[] grpprls = complexFileTable.getGrpprls();
            for (TextPiece textPiece : complexFileTable.getTextPieceTable().getTextPieces()) {
                PropertyModifier prm = textPiece.getPieceDescriptor().getPrm();
                if (prm.isComplex()) {
                    short igrpprl = prm.getIgrpprl();
                    if (igrpprl >= 0 && igrpprl < grpprls.length) {
                        SprmBuffer sprmBuffer = grpprls[igrpprl];
                        SprmIterator it2 = sprmBuffer.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (it2.next().getType() == 1) {
                                    z = true;
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (z) {
                            SprmBuffer sprmBuffer2 = new SprmBuffer(2);
                            sprmBuffer2.append(sprmBuffer.toByteArray());
                            list.add(new PAPX(textPiece.getStart(), textPiece.getEnd(), sprmBuffer2));
                        }
                    } else {
                        LOG.atWarn().log("{}'s PRM references to unknown grpprl", textPiece);
                    }
                }
            }
            LOG.atDebug().log("Merged (?) with PAPX from complex file table in {} ms ({} elements in total)", Unbox.box(System.currentTimeMillis() - currentTimeMillis), Unbox.box(list.size()));
            currentTimeMillis = System.currentTimeMillis();
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.sort(PropertyNode.EndComparator);
        LOG.atDebug().log("PAPX sorted by end position in {} ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis));
        long currentTimeMillis2 = System.currentTimeMillis();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<PAPX> it3 = list.iterator();
        int i3 = 0;
        while (it3.hasNext()) {
            identityHashMap.put(it3.next(), Integer.valueOf(i3));
            i3++;
        }
        Comparator comparator = new Comparator() { // from class: com.sunia.HTREnginev2.rjk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$rebuild$0;
                lambda$rebuild$0 = PAPBinTable.lambda$rebuild$0(identityHashMap, (PAPX) obj, (PAPX) obj2);
                return lambda$rebuild$0;
            }
        };
        LOG.atDebug().log("PAPX's order map created in {} ms", Unbox.box(System.currentTimeMillis() - currentTimeMillis2));
        long currentTimeMillis3 = System.currentTimeMillis();
        LinkedList linkedList = new LinkedList();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < sb.length()) {
            char charAt = sb.charAt(i4);
            if (charAt == '\r' || charAt == 7 || charAt == '\f') {
                int i7 = i4 + 1;
                LinkedList<PAPX> linkedList2 = new LinkedList();
                int i8 = i6;
                while (true) {
                    if (i8 >= arrayList.size()) {
                        i = 0;
                        break;
                    }
                    PAPX papx = (PAPX) arrayList.get(i8);
                    if (papx.getEnd() - 1 > i4) {
                        i = i2;
                        i6 = i8;
                        break;
                    } else {
                        linkedList2.add(papx);
                        i8++;
                    }
                }
                if (i == 0) {
                    i6 = arrayList.size() - i2;
                }
                if (linkedList2.isEmpty()) {
                    LOG.atWarn().log("Paragraph [{}; {}) has no PAPX. Creating new one.", Unbox.box(i5), Unbox.box(i7));
                    linkedList.add(new PAPX(i5, i7, new SprmBuffer(2)));
                } else {
                    if (linkedList2.size() == i2) {
                        PAPX papx2 = (PAPX) linkedList2.get(0);
                        if (papx2.getStart() == i5 && papx2.getEnd() == i7) {
                            linkedList.add(papx2);
                        }
                    }
                    linkedList2.sort(comparator);
                    SprmBuffer sprmBuffer3 = null;
                    for (PAPX papx3 : linkedList2) {
                        if (papx3.getGrpprl() != null && papx3.getGrpprl().length > 2) {
                            if (sprmBuffer3 == null) {
                                sprmBuffer3 = papx3.getSprmBuf().copy();
                            } else {
                                sprmBuffer3.append(papx3.getGrpprl(), 2);
                            }
                        }
                    }
                    c = 2;
                    linkedList.add(new PAPX(i5, i7, sprmBuffer3));
                    i5 = i7;
                }
                c = 2;
                i5 = i7;
            } else {
                c = c2;
            }
            i4++;
            c2 = c;
            i2 = 1;
        }
        list.clear();
        list.addAll(linkedList);
        LOG.atDebug().log("PAPX rebuilded from document text in {} ms ({} elements)", Unbox.box(System.currentTimeMillis() - currentTimeMillis3), Unbox.box(list.size()));
    }

    public PAPBinTable(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, CharIndexTranslator charIndexTranslator) {
        long currentTimeMillis = System.currentTimeMillis();
        PlexOfCps plexOfCps = new PlexOfCps(bArr2, i, i2, 4);
        int length = plexOfCps.length();
        for (int i3 = 0; i3 < length; i3++) {
            for (PAPX papx : new PAPFormattedDiskPage(bArr, bArr3, LittleEndian.getInt(plexOfCps.getProperty(i3).getBytes()) * 512, charIndexTranslator).getPAPXs()) {
                if (papx != null) {
                    this._paragraphs.add(papx);
                }
            }
        }
        Logger logger = LOG;
        logger.atDebug().log("PAPX tables loaded in {} ms ({} elements)", Unbox.box(System.currentTimeMillis() - currentTimeMillis), Unbox.box(this._paragraphs.size()));
        if (this._paragraphs.isEmpty()) {
            logger.atWarn().log("PAPX FKPs are empty");
            this._paragraphs.add(new PAPX(0, 0, new SprmBuffer(2)));
        }
    }
}
