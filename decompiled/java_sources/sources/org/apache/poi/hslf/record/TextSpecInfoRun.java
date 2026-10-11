package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.record.TextSpecInfoRun;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

/* loaded from: classes12.dex */
public class TextSpecInfoRun implements GenericRecord {
    private short altLangId;
    private short bidi;
    private short langId;
    private int length;
    private int mask;
    private int pp10extMask;
    private byte[] smartTagsBytes;
    private short spellInfo;
    private static final BitField spellFld = BitFieldFactory.getInstance(1);
    private static final BitField langFld = BitFieldFactory.getInstance(2);
    private static final BitField altLangFld = BitFieldFactory.getInstance(4);
    private static final BitField pp10extFld = BitFieldFactory.getInstance(32);
    private static final BitField bidiFld = BitFieldFactory.getInstance(64);
    private static final BitField smartTagFld = BitFieldFactory.getInstance(512);
    private static final BitField pp10runidFld = BitFieldFactory.getInstance(15);
    private static final BitField grammarErrorFld = BitFieldFactory.getInstance(Integer.MIN_VALUE);
    private static final int[] FLAGS_MASKS = {1, 2, 4, 32, 64, 512};
    private static final String[] FLAGS_NAMES = {"SPELL", "LANG", "ALT_LANG", "PP10_EXT", "BIDI", "SMART_TAG"};

    /* loaded from: classes12.dex */
    public enum SpellInfoEnum {
        error(new BitField(1)),
        clean(new BitField(2)),
        grammar(new BitField(4)),
        correct(new BitField(0));

        final BitField bitField;

        SpellInfoEnum(BitField bitField) {
            this.bitField = bitField;
        }
    }

    public TextSpecInfoRun(int i) {
        this.spellInfo = (short) -1;
        this.langId = (short) -1;
        this.altLangId = (short) -1;
        this.bidi = (short) -1;
        this.pp10extMask = -1;
        setLength(i);
        setLangId((short) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Integer.valueOf(this.mask);
    }

    public short getAltLangId() {
        return this.altLangId;
    }

    public Boolean getBidi() {
        short s = this.bidi;
        if (s == -1) {
            return null;
        }
        return Boolean.valueOf(s != 0);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.ifn
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TextSpecInfoRun.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, FLAGS_MASKS, FLAGS_NAMES));
        linkedHashMap.put("spellInfo", new Supplier() { // from class: com.sunia.HTREnginev2.jfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextSpecInfoRun.this.getSpellInfo();
            }
        });
        linkedHashMap.put("langId", new Supplier() { // from class: com.sunia.HTREnginev2.kfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TextSpecInfoRun.this.getLangId());
            }
        });
        linkedHashMap.put("altLangId", new Supplier() { // from class: com.sunia.HTREnginev2.lfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TextSpecInfoRun.this.getAltLangId());
            }
        });
        linkedHashMap.put("bidi", new Supplier() { // from class: com.sunia.HTREnginev2.mfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextSpecInfoRun.this.getBidi();
            }
        });
        linkedHashMap.put("pp10RunId", new Supplier() { // from class: com.sunia.HTREnginev2.nfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextSpecInfoRun.this.getPP10RunId());
            }
        });
        linkedHashMap.put("grammarError", new Supplier() { // from class: com.sunia.HTREnginev2.ofn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextSpecInfoRun.this.getGrammarError();
            }
        });
        linkedHashMap.put("smartTags", new Supplier() { // from class: com.sunia.HTREnginev2.pfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextSpecInfoRun.this.getSmartTagsBytes();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public Boolean getGrammarError() {
        if (this.pp10extMask == -1 || !pp10extFld.isSet(this.mask)) {
            return null;
        }
        return Boolean.valueOf(grammarErrorFld.isSet(this.pp10extMask));
    }

    public short getLangId() {
        return this.langId;
    }

    public int getLength() {
        return this.length;
    }

    public int getPP10RunId() {
        if (this.pp10extMask == -1 || !pp10extFld.isSet(this.mask)) {
            return -1;
        }
        return pp10runidFld.getValue(this.pp10extMask);
    }

    public byte[] getSmartTagsBytes() {
        return this.smartTagsBytes;
    }

    public SpellInfoEnum getSpellInfo() {
        if (this.spellInfo == -1) {
            return null;
        }
        SpellInfoEnum[] spellInfoEnumArr = {SpellInfoEnum.clean, SpellInfoEnum.error, SpellInfoEnum.grammar};
        for (int i = 0; i < 3; i++) {
            SpellInfoEnum spellInfoEnum = spellInfoEnumArr[i];
            if (spellInfoEnum.bitField.isSet(this.spellInfo)) {
                return spellInfoEnum;
            }
        }
        return SpellInfoEnum.correct;
    }

    public void setAltLangId(short s) {
        this.altLangId = s;
        this.mask = altLangFld.setBoolean(this.mask, s != -1);
    }

    public void setBidi(Boolean bool) {
        this.bidi = bool == null ? (short) -1 : bool.booleanValue() ? (short) 1 : (short) 0;
        this.mask = bidiFld.setBoolean(this.mask, bool != null);
    }

    public void setLangId(short s) {
        this.langId = s;
        this.mask = langFld.setBoolean(this.mask, s != -1);
    }

    public void setLength(int i) {
        this.length = i;
    }

    public void setPP10RunId(int i) {
        if (i == -1) {
            this.pp10extMask = getGrammarError() == null ? -1 : pp10runidFld.clear(this.pp10extMask);
        } else {
            this.pp10extMask = pp10runidFld.setValue(this.pp10extMask, i);
        }
        this.mask = pp10extFld.setBoolean(this.mask, this.pp10extMask != -1);
    }

    public void setSmartTagsBytes(byte[] bArr) {
        this.smartTagsBytes = bArr == null ? null : (byte[]) bArr.clone();
        this.mask = smartTagFld.setBoolean(this.mask, bArr != null);
    }

    public void setSpellInfo(SpellInfoEnum spellInfoEnum) {
        this.spellInfo = spellInfoEnum == null ? (short) -1 : (short) spellInfoEnum.bitField.set(0);
        this.mask = spellFld.setBoolean(this.mask, spellInfoEnum != null);
    }

    public void writeOut(OutputStream outputStream) throws IOException {
        boolean z;
        byte[] bArr = new byte[4];
        LittleEndian.putInt(bArr, 0, this.length);
        outputStream.write(bArr);
        LittleEndian.putInt(bArr, 0, this.mask);
        outputStream.write(bArr);
        Object[] objArr = {spellFld, Short.valueOf(this.spellInfo), "spell info", langFld, Short.valueOf(this.langId), "lang id", altLangFld, Short.valueOf(this.altLangId), "alt lang id", bidiFld, Short.valueOf(this.bidi), "bidi", pp10extFld, Integer.valueOf(this.pp10extMask), "pp10 extension field", smartTagFld, this.smartTagsBytes, "smart tags"};
        for (int i = 0; i < 17; i += 3) {
            BitField bitField = (BitField) objArr[i + 0];
            Object obj = objArr[i + 1];
            if (bitField.isSet(this.mask)) {
                if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    z = bArr2.length > 0;
                    outputStream.write(bArr2);
                } else if (obj instanceof Integer) {
                    int intValue = ((Integer) obj).intValue();
                    z = intValue != -1;
                    LittleEndian.putInt(bArr, 0, intValue);
                    outputStream.write(bArr);
                } else if (obj instanceof Short) {
                    short shortValue = ((Short) obj).shortValue();
                    z = shortValue != -1;
                    LittleEndian.putShort(bArr, 0, shortValue);
                    outputStream.write(bArr, 0, 2);
                } else {
                    z = false;
                }
                if (!z) {
                    int i2 = i + 2;
                    throw new IOException((i2 < 18 ? objArr[i2] : null) + " is activated, but its value is invalid");
                }
            }
        }
    }

    public void getGrammarError(Boolean bool) {
        if (bool == null) {
            this.pp10extMask = getPP10RunId() == -1 ? -1 : grammarErrorFld.clear(this.pp10extMask);
        } else {
            this.pp10extMask = grammarErrorFld.set(this.pp10extMask);
        }
        this.mask = pp10extFld.setBoolean(this.mask, this.pp10extMask != -1);
    }

    public TextSpecInfoRun(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        this.spellInfo = (short) -1;
        this.langId = (short) -1;
        this.altLangId = (short) -1;
        this.bidi = (short) -1;
        this.pp10extMask = -1;
        this.length = littleEndianByteArrayInputStream.readInt();
        int readInt = littleEndianByteArrayInputStream.readInt();
        this.mask = readInt;
        if (spellFld.isSet(readInt)) {
            this.spellInfo = littleEndianByteArrayInputStream.readShort();
        }
        if (langFld.isSet(this.mask)) {
            this.langId = littleEndianByteArrayInputStream.readShort();
        }
        if (altLangFld.isSet(this.mask)) {
            this.altLangId = littleEndianByteArrayInputStream.readShort();
        }
        if (bidiFld.isSet(this.mask)) {
            this.bidi = littleEndianByteArrayInputStream.readShort();
        }
        if (pp10extFld.isSet(this.mask)) {
            this.pp10extMask = littleEndianByteArrayInputStream.readInt();
        }
        if (smartTagFld.isSet(this.mask)) {
            int readInt2 = littleEndianByteArrayInputStream.readInt();
            byte[] safelyAllocate = IOUtils.safelyAllocate((readInt2 * 4) + 4, RecordAtom.getMaxRecordLength());
            this.smartTagsBytes = safelyAllocate;
            LittleEndian.putInt(safelyAllocate, 0, readInt2);
            littleEndianByteArrayInputStream.readFully(this.smartTagsBytes, 4, readInt2 * 4);
        }
    }
}
