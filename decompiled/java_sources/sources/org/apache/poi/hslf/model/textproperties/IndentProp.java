package org.apache.poi.hslf.model.textproperties;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.model.textproperties.IndentProp;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class IndentProp implements GenericRecord {
    private int charactersCovered;
    private short indentLevel;

    public IndentProp(int i, short s) {
        this.charactersCovered = i;
        this.indentLevel = s;
    }

    public int getCharactersCovered() {
        return this.charactersCovered;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("charactersCovered", new Supplier() { // from class: com.sunia.HTREnginev2.lji
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(IndentProp.this.getCharactersCovered());
            }
        }, "indentLevel", new Supplier() { // from class: com.sunia.HTREnginev2.mji
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(IndentProp.this.getIndentLevel());
            }
        });
    }

    public int getIndentLevel() {
        return this.indentLevel;
    }

    public void setIndentLevel(int i) {
        if (i >= 5 || i < 0) {
            throw new IllegalArgumentException("Indent must be between 0 and 4");
        }
        this.indentLevel = (short) i;
    }

    public void updateTextSize(int i) {
        this.charactersCovered = i;
    }
}
