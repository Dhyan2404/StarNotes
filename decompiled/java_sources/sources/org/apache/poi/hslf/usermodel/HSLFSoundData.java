package org.apache.poi.hslf.usermodel;

import java.util.ArrayList;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordContainer;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.Sound;

/* loaded from: classes12.dex */
public final class HSLFSoundData {
    private Sound _container;

    public HSLFSoundData(Sound sound) {
        this._container = sound;
    }

    public static HSLFSoundData[] find(Document document) {
        ArrayList arrayList = new ArrayList();
        for (Record record : document.getChildRecords()) {
            if (record.getRecordType() == RecordTypes.SoundCollection.typeID) {
                for (Record record2 : ((RecordContainer) record).getChildRecords()) {
                    if (record2 instanceof Sound) {
                        arrayList.add(new HSLFSoundData((Sound) record2));
                    }
                }
            }
        }
        return (HSLFSoundData[]) arrayList.toArray(new HSLFSoundData[0]);
    }

    public byte[] getData() {
        return this._container.getSoundData();
    }

    public String getSoundName() {
        return this._container.getSoundName();
    }

    public String getSoundType() {
        return this._container.getSoundType();
    }
}
