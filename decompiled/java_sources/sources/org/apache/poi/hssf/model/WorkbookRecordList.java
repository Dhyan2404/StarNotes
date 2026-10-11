package org.apache.poi.hssf.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.hssf.record.Record;

/* loaded from: classes12.dex */
public final class WorkbookRecordList {
    private int backuppos;
    private int bspos;
    private int externsheetPos;
    private int fontpos;
    private int namepos;
    private int protpos;
    private int supbookpos;
    private int xfpos;
    private List<Record> records = new ArrayList();
    private int tabpos = -1;
    private int palettepos = -1;

    private void updateRecordPos(int i, boolean z) {
        int i2 = z ? 1 : -1;
        int protpos = getProtpos();
        if (protpos >= i) {
            setProtpos(protpos + i2);
        }
        int bspos = getBspos();
        if (bspos >= i) {
            setBspos(bspos + i2);
        }
        int tabpos = getTabpos();
        if (tabpos >= i) {
            setTabpos(tabpos + i2);
        }
        int fontpos = getFontpos();
        if (fontpos >= i) {
            setFontpos(fontpos + i2);
        }
        int xfpos = getXfpos();
        if (xfpos >= i) {
            setXfpos(xfpos + i2);
        }
        int backuppos = getBackuppos();
        if (backuppos >= i) {
            setBackuppos(backuppos + i2);
        }
        int namepos = getNamepos();
        if (namepos >= i) {
            setNamepos(namepos + i2);
        }
        int supbookpos = getSupbookpos();
        if (supbookpos >= i) {
            setSupbookpos(supbookpos + i2);
        }
        int palettepos = getPalettepos();
        if (palettepos != -1 && palettepos >= i) {
            setPalettepos(palettepos + i2);
        }
        int externsheetPos = getExternsheetPos();
        if (externsheetPos >= i) {
            setExternsheetPos(externsheetPos + i2);
        }
    }

    public void add(int i, Record record) {
        this.records.add(i, record);
        updateRecordPos(i, true);
    }

    public Record get(int i) {
        return this.records.get(i);
    }

    public int getBackuppos() {
        return this.backuppos;
    }

    public int getBspos() {
        return this.bspos;
    }

    public int getExternsheetPos() {
        return this.externsheetPos;
    }

    public int getFontpos() {
        return this.fontpos;
    }

    public int getNamepos() {
        return this.namepos;
    }

    public int getPalettepos() {
        return this.palettepos;
    }

    public int getProtpos() {
        return this.protpos;
    }

    public List<Record> getRecords() {
        return this.records;
    }

    public int getSupbookpos() {
        return this.supbookpos;
    }

    public int getTabpos() {
        return this.tabpos;
    }

    public int getXfpos() {
        return this.xfpos;
    }

    public void remove(Object obj) {
        Iterator<Record> it2 = this.records.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next() == obj) {
                remove(i);
                return;
            }
            i++;
        }
    }

    public void setBackuppos(int i) {
        this.backuppos = i;
    }

    public void setBspos(int i) {
        this.bspos = i;
    }

    public void setExternsheetPos(int i) {
        this.externsheetPos = i;
    }

    public void setFontpos(int i) {
        this.fontpos = i;
    }

    public void setNamepos(int i) {
        this.namepos = i;
    }

    public void setPalettepos(int i) {
        this.palettepos = i;
    }

    public void setProtpos(int i) {
        this.protpos = i;
    }

    public void setRecords(List<Record> list) {
        this.records = list;
    }

    public void setSupbookpos(int i) {
        this.supbookpos = i;
    }

    public void setTabpos(int i) {
        this.tabpos = i;
    }

    public void setXfpos(int i) {
        this.xfpos = i;
    }

    public int size() {
        return this.records.size();
    }

    public void remove(int i) {
        this.records.remove(i);
        updateRecordPos(i, false);
    }
}
