package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.poi.hssf.record.EscherAggregate;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class ListData {
    private ListLevel[] _levels;
    private LSTF _lstf;

    public ListData(byte[] bArr, int i) {
        LSTF lstf = new LSTF(bArr, i);
        this._lstf = lstf;
        if (lstf.isFSimpleList()) {
            this._levels = new ListLevel[1];
        } else {
            this._levels = new ListLevel[9];
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ListData.class != obj.getClass()) {
            return false;
        }
        ListData listData = (ListData) obj;
        if (!Arrays.equals(this._levels, listData._levels)) {
            return false;
        }
        LSTF lstf = this._lstf;
        if (lstf == null) {
            if (listData._lstf != null) {
                return false;
            }
        } else if (!lstf.equals(listData._lstf)) {
            return false;
        }
        return true;
    }

    public ListLevel getLevel(int i) {
        return this._levels[i - 1];
    }

    public int getLevelStyle(int i) {
        return this._lstf.getRgistdPara()[i];
    }

    public ListLevel[] getLevels() {
        return this._levels;
    }

    public int getLsid() {
        return this._lstf.getLsid();
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{this._levels, this._lstf});
    }

    public int numLevels() {
        return this._levels.length;
    }

    public int resetListID() {
        this._lstf.setLsid((int) (Math.random() * System.currentTimeMillis()));
        return this._lstf.getLsid();
    }

    public void setLevel(int i, ListLevel listLevel) {
        this._levels[i] = listLevel;
    }

    public void setLevelStyle(int i, int i2) {
        this._lstf.getRgistdPara()[i] = (short) i2;
    }

    public byte[] toByteArray() {
        return this._lstf.serialize();
    }

    public ListData(int i, boolean z) {
        LSTF lstf = new LSTF();
        this._lstf = lstf;
        lstf.setLsid(i);
        this._lstf.setRgistdPara(new short[9]);
        Arrays.fill(this._lstf.getRgistdPara(), EscherAggregate.ST_NIL);
        this._levels = new ListLevel[9];
        int i2 = 0;
        while (true) {
            ListLevel[] listLevelArr = this._levels;
            if (i2 >= listLevelArr.length) {
                return;
            }
            listLevelArr[i2] = new ListLevel(i2, z);
            i2++;
        }
    }
}
