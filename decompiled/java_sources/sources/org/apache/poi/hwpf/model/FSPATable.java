package org.apache.poi.hwpf.model;

import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.hwpf.model.types.FSPAAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class FSPATable {
    private final Map<Integer, GenericPropertyNode> _byStart = new LinkedHashMap();

    public FSPATable(byte[] bArr, FileInformationBlock fileInformationBlock, FSPADocumentPart fSPADocumentPart) {
        PlexOfCps plexOfCps = new PlexOfCps(bArr, fileInformationBlock.getFSPAPlcfOffset(fSPADocumentPart), fileInformationBlock.getFSPAPlcfLength(fSPADocumentPart), FSPAAbstractType.getSize());
        for (int i = 0; i < plexOfCps.length(); i++) {
            GenericPropertyNode property = plexOfCps.getProperty(i);
            this._byStart.put(Integer.valueOf(property.getStart()), property);
        }
    }

    public FSPA getFspaFromCp(int i) {
        GenericPropertyNode genericPropertyNode = this._byStart.get(Integer.valueOf(i));
        if (genericPropertyNode == null) {
            return null;
        }
        return new FSPA(genericPropertyNode.getBytes(), 0);
    }

    public List<FSPA> getShapes() {
        ArrayList arrayList = new ArrayList(this._byStart.size());
        Iterator<GenericPropertyNode> it2 = this._byStart.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(new FSPA(it2.next().getBytes(), 0));
        }
        return arrayList;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[FPSA PLC size=");
        sb.append(this._byStart.size());
        sb.append("]\n");
        Iterator<Map.Entry<Integer, GenericPropertyNode>> it2 = this._byStart.entrySet().iterator();
        while (it2.hasNext()) {
            Integer key = it2.next().getKey();
            sb.append(GlideException.C1935a.f14609h);
            sb.append(key);
            sb.append(" => \t");
            try {
                sb.append(getFspaFromCp(key.intValue()));
            } catch (Exception e) {
                sb.append(e.getMessage());
            }
            sb.append("\n");
        }
        sb.append("[/FSPA PLC]");
        return sb.toString();
    }
}
