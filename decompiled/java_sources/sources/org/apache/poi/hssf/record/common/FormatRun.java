package org.apache.poi.hssf.record.common;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.common.FormatRun;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

@Internal
/* loaded from: classes12.dex */
public class FormatRun implements Comparable<FormatRun>, GenericRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    final short _character;
    short _fontIndex;

    public FormatRun(short s, short s2) {
        this._character = s;
        this._fontIndex = s2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FormatRun)) {
            return false;
        }
        FormatRun formatRun = (FormatRun) obj;
        return this._character == formatRun._character && this._fontIndex == formatRun._fontIndex;
    }

    public short getCharacterPos() {
        return this._character;
    }

    public short getFontIndex() {
        return this._fontIndex;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("characterPos", new Supplier() { // from class: com.sunia.HTREnginev2.ktg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FormatRun.this.getCharacterPos());
            }
        }, "fontIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ltg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FormatRun.this.getFontIndex());
            }
        });
    }

    public int hashCode() {
        return 42;
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._character);
        littleEndianOutput.writeShort(this._fontIndex);
    }

    public String toString() {
        return "character=" + ((int) this._character) + ",fontIndex=" + ((int) this._fontIndex);
    }

    @Override // java.lang.Comparable
    public int compareTo(FormatRun formatRun) {
        short s = this._character;
        short s2 = formatRun._character;
        if (s == s2 && this._fontIndex == formatRun._fontIndex) {
            return 0;
        }
        return s == s2 ? this._fontIndex - formatRun._fontIndex : s - s2;
    }

    public FormatRun(FormatRun formatRun) {
        this._character = formatRun._character;
        this._fontIndex = formatRun._fontIndex;
    }

    public FormatRun(LittleEndianInput littleEndianInput) {
        this(littleEndianInput.readShort(), littleEndianInput.readShort());
    }
}
