package org.apache.poi.xdgf.usermodel.section;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.SectionType;
import java.awt.Color;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.xdgf.usermodel.XDGFCell;
import org.apache.poi.xdgf.usermodel.XDGFSheet;

/* loaded from: classes13.dex */
public class CharacterSection extends XDGFSection {
    Map<String, XDGFCell> _characterCells;
    Color _fontColor;
    Double _fontSize;

    public CharacterSection(SectionType sectionType, XDGFSheet xDGFSheet) {
        super(sectionType, xDGFSheet);
        this._characterCells = new HashMap();
        for (CellType cellType : sectionType.getRowArray(0).getCellArray()) {
            this._characterCells.put(cellType.getN(), new XDGFCell(cellType));
        }
        this._fontSize = XDGFCell.maybeGetDouble(this._characterCells, "Size");
        String maybeGetString = XDGFCell.maybeGetString(this._characterCells, "Color");
        if (maybeGetString != null) {
            this._fontColor = Color.decode(maybeGetString);
        }
    }

    public Color getFontColor() {
        return this._fontColor;
    }

    public Double getFontSize() {
        return this._fontSize;
    }

    @Override // org.apache.poi.xdgf.usermodel.section.XDGFSection
    public void setupMaster(XDGFSection xDGFSection) {
    }
}
