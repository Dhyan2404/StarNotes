package org.apache.poi.hssf.record.common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.common.FormatRun;
import org.apache.poi.hssf.record.common.UnicodeString;
import org.apache.poi.hssf.record.cont.ContinuableRecordInput;
import org.apache.poi.hssf.record.cont.ContinuableRecordOutput;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class UnicodeString implements Comparable<UnicodeString>, Duplicatable, GenericRecord {
    private short field_1_charCount;
    private byte field_2_optionflags;
    private String field_3_string;
    private List<FormatRun> field_4_format_runs;
    private ExtRst field_5_ext_rst;
    private static final Logger LOG = LogManager.getLogger((Class<?>) UnicodeString.class);
    private static final BitField highByte = BitFieldFactory.getInstance(1);
    private static final BitField extBit = BitFieldFactory.getInstance(4);
    private static final BitField richText = BitFieldFactory.getInstance(8);

    private UnicodeString(UnicodeString unicodeString) {
        this.field_1_charCount = unicodeString.field_1_charCount;
        this.field_2_optionflags = unicodeString.field_2_optionflags;
        this.field_3_string = unicodeString.field_3_string;
        List<FormatRun> list = unicodeString.field_4_format_runs;
        this.field_4_format_runs = list == null ? null : (List) list.stream().map(new Function() { // from class: com.sunia.HTREnginev2.nsn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new FormatRun((FormatRun) obj);
            }
        }).collect(Collectors.toList());
        ExtRst extRst = unicodeString.field_5_ext_rst;
        this.field_5_ext_rst = extRst != null ? extRst.copy() : null;
    }

    private int findFormatRunAt(int i) {
        int size = this.field_4_format_runs.size();
        for (int i2 = 0; i2 < size; i2++) {
            short s = this.field_4_format_runs.get(i2)._character;
            if (s == i) {
                return i2;
            }
            if (s > i) {
                return -1;
            }
        }
        return -1;
    }

    private boolean isExtendedText() {
        return extBit.isSet(getOptionFlags());
    }

    private boolean isRichText() {
        return richText.isSet(getOptionFlags());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.field_4_format_runs;
    }

    public void addFormatRun(FormatRun formatRun) {
        if (this.field_4_format_runs == null) {
            this.field_4_format_runs = new ArrayList();
        }
        int findFormatRunAt = findFormatRunAt(formatRun._character);
        if (findFormatRunAt != -1) {
            this.field_4_format_runs.remove(findFormatRunAt);
        }
        this.field_4_format_runs.add(formatRun);
        Collections.sort(this.field_4_format_runs);
        this.field_2_optionflags = richText.setByte(this.field_2_optionflags);
    }

    public void clearFormatting() {
        this.field_4_format_runs = null;
        this.field_2_optionflags = richText.clearByte(this.field_2_optionflags);
    }

    public boolean equals(Object obj) {
        int size;
        if (!(obj instanceof UnicodeString)) {
            return false;
        }
        UnicodeString unicodeString = (UnicodeString) obj;
        if (this.field_1_charCount != unicodeString.field_1_charCount || this.field_2_optionflags != unicodeString.field_2_optionflags || !this.field_3_string.equals(unicodeString.field_3_string)) {
            return false;
        }
        List<FormatRun> list = this.field_4_format_runs;
        if (list == null) {
            return unicodeString.field_4_format_runs == null;
        }
        if (unicodeString.field_4_format_runs == null || (size = list.size()) != unicodeString.field_4_format_runs.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!this.field_4_format_runs.get(i).equals(unicodeString.field_4_format_runs.get(i))) {
                return false;
            }
        }
        ExtRst extRst = this.field_5_ext_rst;
        if (extRst == null) {
            return unicodeString.field_5_ext_rst == null;
        }
        ExtRst extRst2 = unicodeString.field_5_ext_rst;
        if (extRst2 == null) {
            return false;
        }
        return extRst.equals(extRst2);
    }

    public Iterator<FormatRun> formatIterator() {
        List<FormatRun> list = this.field_4_format_runs;
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    public Spliterator<FormatRun> formatSpliterator() {
        List<FormatRun> list = this.field_4_format_runs;
        if (list != null) {
            return list.spliterator();
        }
        return null;
    }

    public int getCharCount() {
        short s = this.field_1_charCount;
        return s < 0 ? s + 65536 : s;
    }

    public short getCharCountShort() {
        return this.field_1_charCount;
    }

    public String getDebugInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append("[UNICODESTRING]\n");
        sb.append("    .charcount       = ");
        sb.append(Integer.toHexString(getCharCount()));
        sb.append("\n");
        sb.append("    .optionflags     = ");
        sb.append(Integer.toHexString(getOptionFlags()));
        sb.append("\n");
        sb.append("    .string          = ");
        sb.append(getString());
        sb.append("\n");
        if (this.field_4_format_runs != null) {
            for (int i = 0; i < this.field_4_format_runs.size(); i++) {
                FormatRun formatRun = this.field_4_format_runs.get(i);
                sb.append("      .format_run");
                sb.append(i);
                sb.append("          = ");
                sb.append(formatRun);
                sb.append("\n");
            }
        }
        if (this.field_5_ext_rst != null) {
            sb.append("    .field_5_ext_rst          = ");
            sb.append("\n");
            sb.append(this.field_5_ext_rst);
            sb.append("\n");
        }
        sb.append("[/UNICODESTRING]\n");
        return sb.toString();
    }

    public ExtRst getExtendedRst() {
        return this.field_5_ext_rst;
    }

    public FormatRun getFormatRun(int i) {
        List<FormatRun> list = this.field_4_format_runs;
        if (list != null && i >= 0 && i < list.size()) {
            return this.field_4_format_runs.get(i);
        }
        return null;
    }

    public int getFormatRunCount() {
        List<FormatRun> list = this.field_4_format_runs;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("charCount", new Supplier() { // from class: com.sunia.HTREnginev2.osn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UnicodeString.this.getCharCount());
            }
        }, "optionFlags", new Supplier() { // from class: com.sunia.HTREnginev2.psn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(UnicodeString.this.getOptionFlags());
            }
        }, "string", new Supplier() { // from class: com.sunia.HTREnginev2.qsn
            @Override // java.util.function.Supplier
            public final Object get() {
                return UnicodeString.this.getString();
            }
        }, "formatRuns", new Supplier() { // from class: com.sunia.HTREnginev2.rsn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = UnicodeString.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "extendedRst", new Supplier() { // from class: com.sunia.HTREnginev2.ssn
            @Override // java.util.function.Supplier
            public final Object get() {
                return UnicodeString.this.getExtendedRst();
            }
        });
    }

    public byte getOptionFlags() {
        return this.field_2_optionflags;
    }

    public String getString() {
        return this.field_3_string;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_charCount), this.field_3_string);
    }

    public void removeFormatRun(FormatRun formatRun) {
        this.field_4_format_runs.remove(formatRun);
        if (this.field_4_format_runs.isEmpty()) {
            this.field_4_format_runs = null;
            this.field_2_optionflags = richText.clearByte(this.field_2_optionflags);
        }
    }

    public void serialize(ContinuableRecordOutput continuableRecordOutput) {
        ExtRst extRst;
        ExtRst extRst2;
        List<FormatRun> list;
        int size = (!isRichText() || (list = this.field_4_format_runs) == null) ? 0 : list.size();
        int dataSize = (!isExtendedText() || (extRst2 = this.field_5_ext_rst) == null) ? 0 : extRst2.getDataSize() + 4;
        continuableRecordOutput.writeString(this.field_3_string, size, dataSize);
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                if (continuableRecordOutput.getAvailableSpace() < 4) {
                    continuableRecordOutput.writeContinue();
                }
                this.field_4_format_runs.get(i).serialize(continuableRecordOutput);
            }
        }
        if (dataSize <= 0 || (extRst = this.field_5_ext_rst) == null) {
            return;
        }
        extRst.serialize(continuableRecordOutput);
    }

    public void setCharCount(short s) {
        this.field_1_charCount = s;
    }

    public void setExtendedRst(ExtRst extRst) {
        if (extRst != null) {
            this.field_2_optionflags = extBit.setByte(this.field_2_optionflags);
        } else {
            this.field_2_optionflags = extBit.clearByte(this.field_2_optionflags);
        }
        this.field_5_ext_rst = extRst;
    }

    public void setOptionFlags(byte b) {
        this.field_2_optionflags = b;
    }

    public void setString(String str) {
        this.field_3_string = str;
        setCharCount((short) str.length());
        int length = str.length();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (str.charAt(i) > 255) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            this.field_2_optionflags = highByte.setByte(this.field_2_optionflags);
        } else {
            this.field_2_optionflags = highByte.clearByte(this.field_2_optionflags);
        }
    }

    public void swapFontUse(short s, short s2) {
        List<FormatRun> list = this.field_4_format_runs;
        if (list != null) {
            for (FormatRun formatRun : list) {
                if (formatRun._fontIndex == s) {
                    formatRun._fontIndex = s2;
                }
            }
        }
    }

    public String toString() {
        return getString();
    }

    @Override // java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        int compareTo = getString().compareTo(unicodeString.getString());
        if (compareTo != 0) {
            return compareTo;
        }
        List<FormatRun> list = this.field_4_format_runs;
        if (list == null) {
            return unicodeString.field_4_format_runs == null ? 0 : 1;
        }
        if (unicodeString.field_4_format_runs == null) {
            return -1;
        }
        int size = list.size();
        if (size != unicodeString.field_4_format_runs.size()) {
            return size - unicodeString.field_4_format_runs.size();
        }
        for (int i = 0; i < size; i++) {
            int compareTo2 = this.field_4_format_runs.get(i).compareTo(unicodeString.field_4_format_runs.get(i));
            if (compareTo2 != 0) {
                return compareTo2;
            }
        }
        ExtRst extRst = this.field_5_ext_rst;
        if (extRst == null) {
            return unicodeString.field_5_ext_rst == null ? 0 : 1;
        }
        ExtRst extRst2 = unicodeString.field_5_ext_rst;
        if (extRst2 == null) {
            return -1;
        }
        return extRst.compareTo(extRst2);
    }

    @Override // org.apache.poi.common.Duplicatable
    public UnicodeString copy() {
        return new UnicodeString(this);
    }

    public UnicodeString(String str) {
        setString(str);
    }

    public UnicodeString(RecordInputStream recordInputStream) {
        this.field_1_charCount = recordInputStream.readShort();
        this.field_2_optionflags = recordInputStream.readByte();
        short readShort = isRichText() ? recordInputStream.readShort() : (short) 0;
        int readInt = isExtendedText() ? recordInputStream.readInt() : 0;
        boolean z = (this.field_2_optionflags & 1) == 0;
        int charCount = getCharCount();
        this.field_3_string = z ? recordInputStream.readCompressedUnicode(charCount) : recordInputStream.readUnicodeLEString(charCount);
        if (isRichText() && readShort > 0) {
            this.field_4_format_runs = new ArrayList(readShort);
            for (int i = 0; i < readShort; i++) {
                this.field_4_format_runs.add(new FormatRun(recordInputStream));
            }
        }
        if (!isExtendedText() || readInt <= 0) {
            return;
        }
        ExtRst extRst = new ExtRst(new ContinuableRecordInput(recordInputStream), readInt);
        this.field_5_ext_rst = extRst;
        if (extRst.getDataSize() + 4 != readInt) {
            LOG.atWarn().log("ExtRst was supposed to be {} bytes long, but seems to actually be {}", Unbox.box(readInt), Unbox.box(this.field_5_ext_rst.getDataSize() + 4));
        }
    }
}
