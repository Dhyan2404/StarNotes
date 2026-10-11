package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.hwpf.model.LFO;
import org.apache.poi.hwpf.model.LFOData;
import org.apache.poi.hwpf.model.ListData;
import org.apache.poi.hwpf.model.ListFormatOverrideLevel;
import org.apache.poi.hwpf.model.ListLevel;
import org.apache.poi.hwpf.model.ListTables;
import org.apache.poi.hwpf.model.StyleSheet;
import org.apache.poi.hwpf.sprm.CharacterSprmCompressor;
import org.apache.poi.hwpf.sprm.ParagraphSprmCompressor;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public final class HWPFList {
    private boolean _ignoreLogicalLeftIdentation;
    private LFO _lfo;
    private LFOData _lfoData;
    private ListData _listData;
    private ListTables _listTables;
    private StyleSheet _styleSheet;

    public HWPFList(boolean z, StyleSheet styleSheet) {
        this._listData = new ListData((int) (Math.random() * System.currentTimeMillis()), z);
        LFO lfo = new LFO();
        this._lfo = lfo;
        lfo.setLsid(this._listData.getLsid());
        this._lfoData = new LFOData();
        this._styleSheet = styleSheet;
    }

    @Internal
    public LFO getLFO() {
        return this._lfo;
    }

    @Internal
    public LFOData getLFOData() {
        return this._lfoData;
    }

    @Internal
    public ListLevel getLVL(char c) {
        if (c < this._listData.numLevels()) {
            return this._listData.getLevels()[c];
        }
        throw new IllegalArgumentException("Required level " + ((int) c) + " is more than number of level for list (" + this._listData.numLevels() + MotionUtils.f31762d);
    }

    @Internal
    public ListData getListData() {
        return this._listData;
    }

    public int getLsid() {
        return this._lfo.getLsid();
    }

    public int getNumberFormat(char c) {
        return getLVL(c).getNumberFormat();
    }

    public String getNumberText(char c) {
        return getLVL(c).getNumberText();
    }

    public int getStartAt(char c) {
        return isStartAtOverriden(c) ? this._lfoData.getRgLfoLvl()[c].getIStartAt() : getLVL(c).getStartAt();
    }

    public byte getTypeOfCharFollowingTheNumber(char c) {
        return getLVL(c).getTypeOfCharFollowingTheNumber();
    }

    public boolean isIgnoreLogicalLeftIdentation() {
        return this._ignoreLogicalLeftIdentation;
    }

    public boolean isStartAtOverriden(char c) {
        ListFormatOverrideLevel listFormatOverrideLevel = this._lfoData.getRgLfoLvl().length > c ? this._lfoData.getRgLfoLvl()[c] : null;
        return (listFormatOverrideLevel == null || listFormatOverrideLevel.getIStartAt() == 1 || listFormatOverrideLevel.isFormatting()) ? false : true;
    }

    public void setIgnoreLogicalLeftIdentation(boolean z) {
        this._ignoreLogicalLeftIdentation = z;
    }

    public void setLevelNumberProperties(int i, CharacterProperties characterProperties) {
        this._listData.getLevel(i).setNumberProperties(CharacterSprmCompressor.compressCharacterProperty(characterProperties, this._styleSheet.getCharacterStyle(this._listData.getLevelStyle(i))));
    }

    public void setLevelParagraphProperties(int i, ParagraphProperties paragraphProperties) {
        this._listData.getLevel(i).setLevelProperties(ParagraphSprmCompressor.compressParagraphProperty(paragraphProperties, this._styleSheet.getParagraphStyle(this._listData.getLevelStyle(i))));
    }

    public void setLevelStyle(int i, int i2) {
        this._listData.setLevelStyle(i, i2);
    }

    public HWPFList(StyleSheet styleSheet, ListTables listTables, int i) {
        this._listTables = listTables;
        this._styleSheet = styleSheet;
        if (i != 0 && i != 63489) {
            if (1 <= i && i <= 2046) {
                this._lfo = listTables.getLfo(i);
                this._lfoData = listTables.getLfoData(i);
            } else if (63490 <= i && i <= 65535) {
                int i2 = i ^ 65535;
                this._lfo = listTables.getLfo(i2);
                this._lfoData = listTables.getLfoData(i2);
                this._ignoreLogicalLeftIdentation = true;
            } else {
                throw new IllegalArgumentException("Incorrect ilfo: " + i);
            }
            this._listData = listTables.getListData(this._lfo.getLsid());
            return;
        }
        throw new IllegalArgumentException("Paragraph not in list");
    }
}
