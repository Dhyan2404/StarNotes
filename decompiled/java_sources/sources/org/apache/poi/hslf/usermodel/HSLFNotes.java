package org.apache.poi.hslf.usermodel;

import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hslf.model.HeadersFooters;
import org.apache.poi.sl.usermodel.Notes;
import org.apache.poi.sl.usermodel.Placeholder;

/* loaded from: classes12.dex */
public final class HSLFNotes extends HSLFSheet implements Notes<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFNotes.class);
    private final List<List<HSLFTextParagraph>> _paragraphs;

    public HSLFNotes(org.apache.poi.hslf.record.Notes notes) {
        super(notes, notes.getNotesAtom().getSlideID());
        this._paragraphs = new ArrayList();
        for (List<HSLFTextParagraph> list : HSLFTextParagraph.findTextParagraphs(getPPDrawing(), this)) {
            if (!this._paragraphs.contains(list)) {
                this._paragraphs.add(list);
            }
        }
        if (this._paragraphs.isEmpty()) {
            LOG.atWarn().log("No text records found for notes sheet");
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    public HeadersFooters getHeadersFooters() {
        return new HeadersFooters((HSLFSheet) this, (short) 79);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public HSLFMasterSheet getMasterSheet() {
        return null;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Notes
    public List<List<HSLFTextParagraph>> getTextParagraphs() {
        return this._paragraphs;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public HSLFPlaceholderDetails getPlaceholderDetails(Placeholder placeholder) {
        if (placeholder == null) {
            return null;
        }
        if (placeholder != Placeholder.HEADER && placeholder != Placeholder.FOOTER) {
            return super.getPlaceholderDetails(placeholder);
        }
        return new HSLFPlaceholderDetails(this, placeholder);
    }
}
