package org.apache.poi.hwpf.usermodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.PicturesTable;

/* loaded from: classes12.dex */
public class PictureRunMapper {
    private List<Picture> all;
    private Set<Picture> claimed = new HashSet();
    private Map<Integer, Picture> lookup;
    private List<Picture> nonU1based;
    private PicturesTable picturesTable;

    /* renamed from: pn */
    private int f111452pn;

    public PictureRunMapper(HWPFDocument hWPFDocument) {
        PicturesTable picturesTable = hWPFDocument.getPicturesTable();
        this.picturesTable = picturesTable;
        this.all = picturesTable.getAllPictures();
        this.lookup = new HashMap();
        for (Picture picture : this.all) {
            this.lookup.put(Integer.valueOf(picture.getStartOffset()), picture);
        }
        ArrayList arrayList = new ArrayList();
        this.nonU1based = arrayList;
        arrayList.addAll(this.all);
        Range range = hWPFDocument.getRange();
        for (int i = 0; i < range.numCharacterRuns(); i++) {
            CharacterRun characterRun = range.getCharacterRun(i);
            if (this.picturesTable.hasPicture(characterRun)) {
                this.nonU1based.set(this.nonU1based.indexOf(getFor(characterRun)), null);
            }
        }
    }

    public Picture getFor(CharacterRun characterRun) {
        return this.lookup.get(Integer.valueOf(characterRun.getPicOffset()));
    }

    public boolean hasBeenClaimed(Picture picture) {
        return this.claimed.contains(picture);
    }

    public boolean hasPicture(CharacterRun characterRun) {
        return this.picturesTable.hasPicture(characterRun);
    }

    public void markAsClaimed(Picture picture) {
        this.claimed.add(picture);
    }

    public Picture nextUnclaimed() {
        while (this.f111452pn < this.nonU1based.size()) {
            Picture picture = this.nonU1based.get(this.f111452pn);
            this.f111452pn++;
            if (picture != null) {
                this.claimed.add(picture);
                return picture;
            }
        }
        return null;
    }

    public int pictureNumber(Picture picture) {
        return this.all.indexOf(picture) + 1;
    }
}
