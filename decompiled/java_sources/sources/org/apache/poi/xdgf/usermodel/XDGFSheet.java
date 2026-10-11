package org.apache.poi.xdgf.usermodel;

import com.microsoft.schemas.office.visio.x2012.main.CellType;
import com.microsoft.schemas.office.visio.x2012.main.SectionType;
import com.microsoft.schemas.office.visio.x2012.main.SheetType;
import java.awt.Color;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xdgf.exceptions.XDGFException;
import org.apache.poi.xdgf.usermodel.section.CharacterSection;
import org.apache.poi.xdgf.usermodel.section.GeometrySection;
import org.apache.poi.xdgf.usermodel.section.XDGFSection;

/* loaded from: classes13.dex */
public abstract class XDGFSheet {
    protected CharacterSection _character;
    protected XDGFDocument _document;
    protected SheetType _sheet;
    protected Map<String, XDGFCell> _cells = new HashMap();
    protected Map<String, XDGFSection> _sections = new HashMap();
    protected SortedMap<Long, GeometrySection> _geometry = new TreeMap();

    public XDGFSheet(SheetType sheetType, XDGFDocument xDGFDocument) {
        try {
            this._sheet = sheetType;
            this._document = xDGFDocument;
            for (CellType cellType : sheetType.getCellArray()) {
                if (this._cells.containsKey(cellType.getN())) {
                    throw new POIXMLException("Unexpected duplicate cell " + cellType.getN());
                }
                this._cells.put(cellType.getN(), new XDGFCell(cellType));
            }
            for (SectionType sectionType : sheetType.getSectionArray()) {
                String n = sectionType.getN();
                if (n.equals("Geometry")) {
                    this._geometry.put(Long.valueOf(sectionType.getIX()), new GeometrySection(sectionType, this));
                } else if (n.equals("Character")) {
                    this._character = new CharacterSection(sectionType, this);
                } else {
                    this._sections.put(n, XDGFSection.load(sectionType, this));
                }
            }
        } catch (POIXMLException e) {
            throw XDGFException.wrap(toString(), e);
        }
    }

    public XDGFCell getCell(String str) {
        return this._cells.get(str);
    }

    public XDGFDocument getDocument() {
        return this._document;
    }

    public XDGFStyleSheet getFillStyle() {
        if (this._sheet.isSetFillStyle()) {
            return this._document.getStyleById(this._sheet.getFillStyle());
        }
        return null;
    }

    public Color getFontColor() {
        Color fontColor;
        CharacterSection characterSection = this._character;
        if (characterSection != null && (fontColor = characterSection.getFontColor()) != null) {
            return fontColor;
        }
        XDGFStyleSheet textStyle = getTextStyle();
        if (textStyle != null) {
            return textStyle.getFontColor();
        }
        return null;
    }

    public Double getFontSize() {
        Double fontSize;
        CharacterSection characterSection = this._character;
        if (characterSection != null && (fontSize = characterSection.getFontSize()) != null) {
            return fontSize;
        }
        XDGFStyleSheet textStyle = getTextStyle();
        if (textStyle != null) {
            return textStyle.getFontSize();
        }
        return null;
    }

    public Integer getLineCap() {
        Integer maybeGetInteger = XDGFCell.maybeGetInteger(this._cells, "LineCap");
        if (maybeGetInteger != null) {
            return maybeGetInteger;
        }
        XDGFStyleSheet lineStyle = getLineStyle();
        if (lineStyle != null) {
            return lineStyle.getLineCap();
        }
        return null;
    }

    public Color getLineColor() {
        String maybeGetString = XDGFCell.maybeGetString(this._cells, "LineColor");
        if (maybeGetString != null) {
            return Color.decode(maybeGetString);
        }
        XDGFStyleSheet lineStyle = getLineStyle();
        if (lineStyle != null) {
            return lineStyle.getLineColor();
        }
        return null;
    }

    public Integer getLinePattern() {
        Integer maybeGetInteger = XDGFCell.maybeGetInteger(this._cells, "LinePattern");
        if (maybeGetInteger != null) {
            return maybeGetInteger;
        }
        XDGFStyleSheet lineStyle = getLineStyle();
        if (lineStyle != null) {
            return lineStyle.getLinePattern();
        }
        return null;
    }

    public XDGFStyleSheet getLineStyle() {
        if (this._sheet.isSetLineStyle()) {
            return this._document.getStyleById(this._sheet.getLineStyle());
        }
        return null;
    }

    public Double getLineWeight() {
        Double maybeGetDouble = XDGFCell.maybeGetDouble(this._cells, "LineWeight");
        if (maybeGetDouble != null) {
            return maybeGetDouble;
        }
        XDGFStyleSheet lineStyle = getLineStyle();
        if (lineStyle != null) {
            return lineStyle.getLineWeight();
        }
        return null;
    }

    public XDGFSection getSection(String str) {
        return this._sections.get(str);
    }

    public XDGFStyleSheet getTextStyle() {
        if (this._sheet.isSetTextStyle()) {
            return this._document.getStyleById(this._sheet.getTextStyle());
        }
        return null;
    }

    public abstract SheetType getXmlObject();
}
