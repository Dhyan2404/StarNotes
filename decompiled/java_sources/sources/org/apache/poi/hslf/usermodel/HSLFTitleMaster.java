package org.apache.poi.hslf.usermodel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.Slide;
import org.apache.poi.sl.usermodel.MasterSheet;

/* loaded from: classes12.dex */
public final class HSLFTitleMaster extends HSLFMasterSheet {
    private final List<List<HSLFTextParagraph>> _paragraphs;

    public HSLFTitleMaster(Slide slide, int i) {
        super(slide, i);
        this._paragraphs = new ArrayList();
        for (List<HSLFTextParagraph> list : HSLFTextParagraph.findTextParagraphs(getPPDrawing(), this)) {
            if (!this._paragraphs.contains(list)) {
                this._paragraphs.add(list);
            }
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFMasterSheet
    public TextPropCollection getPropCollection(int i, int i2, String str, boolean z) {
        HSLFMasterSheet masterSheet = getMasterSheet();
        if (masterSheet == null) {
            return null;
        }
        return masterSheet.getPropCollection(i, i2, str, z);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Notes
    public List<List<HSLFTextParagraph>> getTextParagraphs() {
        return this._paragraphs;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public HSLFMasterSheet getMasterSheet() {
        int masterID = ((Slide) getSheetContainer()).getSlideAtom().getMasterID();
        Iterator<? extends MasterSheet<HSLFShape, HSLFTextParagraph>> it2 = getSlideShow().getSlideMasters().iterator();
        while (it2.hasNext()) {
            HSLFSlideMaster hSLFSlideMaster = (HSLFSlideMaster) it2.next();
            if (masterID == hSLFSlideMaster._getSheetNumber()) {
                return hSLFSlideMaster;
            }
        }
        return null;
    }
}
