package org.apache.poi.hslf.model.textproperties;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Supplier;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.textproperties.TextProp;
import org.apache.poi.hslf.model.textproperties.TextPropCollection;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.util.HexDump;

/* loaded from: classes12.dex */
public class TextPropCollection implements GenericRecord, Duplicatable {
    private int charactersCovered;
    private short indentLevel;
    private int maskSpecial;
    private final TextPropType textPropType;
    private final Map<String, TextProp> textProps = new HashMap();
    private static final Logger LOG = LogManager.getLogger((Class<?>) TextPropCollection.class);
    private static final TextProp[] paragraphTextPropTypes = {new ParagraphFlagsTextProp(), new TextProp(2, 128, "bullet.char"), new TextProp(2, 16, "bullet.font"), new TextProp(2, 64, "bullet.size"), new TextProp(4, 32, "bullet.color"), new TextAlignmentProp(), new TextProp(2, 4096, "linespacing"), new TextProp(2, 8192, "spacebefore"), new TextProp(2, 16384, "spaceafter"), new TextProp(2, 256, "text.offset"), new TextProp(2, 1024, "bullet.offset"), new TextProp(2, 32768, "defaultTabSize"), new HSLFTabStopPropCollection(), new FontAlignmentProp(), new WrapFlagsTextProp(), new TextProp(2, 2097152, "textDirection"), new TextProp(0, 8388608, "bullet.blip"), new TextProp(0, 16777216, "bullet.scheme"), new TextProp(0, 33554432, "hasBulletScheme")};
    private static final TextProp[] characterTextPropTypes = {new TextProp(0, 1048576, "pp10ext"), new TextProp(0, 16777216, "newAsian.font.index"), new TextProp(0, 33554432, "cs.font.index"), new TextProp(0, 67108864, "pp11ext"), new CharFlagsTextProp(), new TextProp(2, 65536, "font.index"), new TextProp(2, 2097152, "asian.font.index"), new TextProp(2, 4194304, "ansi.font.index"), new TextProp(2, 8388608, "symbol.font.index"), new TextProp(2, 131072, "font.size"), new TextProp(4, 262144, "font.color"), new TextProp(2, 524288, "superscript")};

    /* loaded from: classes12.dex */
    public enum TextPropType {
        paragraph,
        character
    }

    public TextPropCollection(int i, TextPropType textPropType) {
        this.charactersCovered = i;
        this.textPropType = textPropType;
    }

    private TextProp[] getPotentialProperties() {
        return this.textPropType == TextPropType.paragraph ? paragraphTextPropTypes : characterTextPropTypes;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getGenericProperties$2(Map map, String str, final TextProp textProp) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(String str, TextProp textProp) {
        this.textProps.put(str, textProp.copy());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$null$1(TextProp textProp) {
        return textProp;
    }

    private <T extends TextProp> T validatePropName(String str) {
        for (TextProp textProp : getPotentialProperties()) {
            T t = (T) textProp;
            if (t.getName().equals(str)) {
                return t;
            }
        }
        throw new HSLFException("No TextProp with name " + str + " is defined to add from. Character and paragraphs have their own properties/names.");
    }

    public final void addProp(TextProp textProp) {
        if (textProp == null) {
            throw new HSLFException("TextProp must not be null");
        }
        String name = textProp.getName();
        validatePropName(name);
        this.textProps.put(name, textProp);
    }

    public final <T extends TextProp> T addWithName(String str) {
        T t = (T) findByName(str);
        if (t != null) {
            return t;
        }
        T t2 = (T) validatePropName(str).copy();
        this.textProps.put(str, t2);
        return t2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int buildTextPropList(int r12, byte[] r13, int r14) {
        /*
            r11 = this;
            org.apache.poi.hslf.model.textproperties.TextProp[] r0 = r11.getPotentialProperties()
            int r1 = r0.length
            r2 = 0
            r3 = r2
            r4 = r3
        L8:
            if (r3 >= r1) goto L75
            r5 = r0[r3]
            int r6 = r5.getMask()
            r6 = r6 & r12
            if (r6 == 0) goto L72
            int r6 = r14 + r4
            int r7 = r13.length
            if (r6 < r7) goto L22
            int r12 = r11.maskSpecial
            int r13 = r5.getMask()
            r12 = r12 | r13
            r11.maskSpecial = r12
            return r4
        L22:
            org.apache.poi.hslf.model.textproperties.TextProp r7 = r5.copy()
            boolean r8 = r7 instanceof org.apache.poi.hslf.model.textproperties.HSLFTabStopPropCollection
            if (r8 == 0) goto L31
            r5 = r7
            org.apache.poi.hslf.model.textproperties.HSLFTabStopPropCollection r5 = (org.apache.poi.hslf.model.textproperties.HSLFTabStopPropCollection) r5
            r5.parseProperty(r13, r6)
            goto L59
        L31:
            int r9 = r7.getSize()
            r10 = 2
            if (r9 != r10) goto L3d
            short r5 = org.apache.poi.util.LittleEndian.getShort(r13, r6)
            goto L5a
        L3d:
            int r9 = r7.getSize()
            r10 = 4
            if (r9 != r10) goto L49
            int r5 = org.apache.poi.util.LittleEndian.getInt(r13, r6)
            goto L5a
        L49:
            int r6 = r7.getSize()
            if (r6 != 0) goto L59
            int r6 = r11.maskSpecial
            int r5 = r5.getMask()
            r5 = r5 | r6
            r11.maskSpecial = r5
            goto L72
        L59:
            r5 = r2
        L5a:
            boolean r6 = r7 instanceof org.apache.poi.hslf.model.textproperties.BitMaskTextProp
            if (r6 == 0) goto L65
            r6 = r7
            org.apache.poi.hslf.model.textproperties.BitMaskTextProp r6 = (org.apache.poi.hslf.model.textproperties.BitMaskTextProp) r6
            r6.setValueWithMask(r5, r12)
            goto L6a
        L65:
            if (r8 != 0) goto L6a
            r7.setValue(r5)
        L6a:
            int r5 = r7.getSize()
            int r4 = r4 + r5
            r11.addProp(r7)
        L72:
            int r3 = r3 + 1
            goto L8
        L75:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.model.textproperties.TextPropCollection.buildTextPropList(int, byte[], int):int");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextPropCollection textPropCollection = (TextPropCollection) obj;
        if (textPropCollection.maskSpecial == this.maskSpecial && textPropCollection.indentLevel == this.indentLevel) {
            return this.textProps.equals(textPropCollection.textProps);
        }
        return false;
    }

    public final <T extends TextProp> T findByName(String str) {
        return (T) this.textProps.get(str);
    }

    public int getCharactersCovered() {
        return this.charactersCovered;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("charactersCovered", new Supplier() { // from class: com.sunia.HTREnginev2.den
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextPropCollection.this.getCharactersCovered());
            }
        });
        linkedHashMap.put("indentLevel", new Supplier() { // from class: com.sunia.HTREnginev2.een
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TextPropCollection.this.getIndentLevel());
            }
        });
        this.textProps.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.fen
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                TextPropCollection.lambda$getGenericProperties$2(linkedHashMap, (String) obj, (TextProp) obj2);
            }
        });
        linkedHashMap.put("maskSpecial", new Supplier() { // from class: com.sunia.HTREnginev2.gen
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextPropCollection.this.getSpecialMask());
            }
        });
        linkedHashMap.put("textPropType", new Supplier() { // from class: com.sunia.HTREnginev2.hen
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextPropCollection.this.getTextPropType();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public short getIndentLevel() {
        return this.indentLevel;
    }

    public int getSpecialMask() {
        return this.maskSpecial;
    }

    public List<TextProp> getTextPropList() {
        ArrayList arrayList = new ArrayList();
        for (TextProp textProp : getPotentialProperties()) {
            TextProp textProp2 = this.textProps.get(textProp.getName());
            if (textProp2 != null) {
                arrayList.add(textProp2);
            }
        }
        return arrayList;
    }

    public final TextPropType getTextPropType() {
        return this.textPropType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.charactersCovered), Integer.valueOf(this.maskSpecial), Short.valueOf(this.indentLevel), this.textProps);
    }

    public final <T extends TextProp> T removeByName(String str) {
        return (T) this.textProps.remove(str);
    }

    public void setIndentLevel(short s) {
        if (this.textPropType == TextPropType.character) {
            throw new IllegalStateException("trying to set an indent on a character collection.");
        }
        this.indentLevel = s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("  chars covered: ");
        sb.append(getCharactersCovered());
        sb.append("  special mask flags: 0x");
        sb.append(HexDump.toHex(getSpecialMask()));
        sb.append("\n");
        if (this.textPropType == TextPropType.paragraph) {
            sb.append("  indent level: ");
            sb.append((int) getIndentLevel());
            sb.append("\n");
        }
        Iterator<TextProp> it2 = getTextPropList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            TextProp next = it2.next();
            sb.append(MapUtils.f104930a);
            sb.append(next.toString());
            sb.append("\n");
            if (next instanceof BitMaskTextProp) {
                BitMaskTextProp bitMaskTextProp = (BitMaskTextProp) next;
                int i = 0;
                for (String str : bitMaskTextProp.getSubPropNames()) {
                    if (bitMaskTextProp.getSubPropMatches()[i]) {
                        sb.append("          ");
                        sb.append(str);
                        sb.append(CloudStorageConstants.OPERATION_EQUAL);
                        sb.append(bitMaskTextProp.getSubValue(i));
                        sb.append("\n");
                    }
                    i++;
                }
            }
        }
        sb.append("  bytes that would be written: \n");
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            writeOut(unsynchronizedByteArrayOutputStream);
            sb.append(HexDump.dump(unsynchronizedByteArrayOutputStream.toByteArray(), 0L, 0));
        } catch (IOException e) {
            LOG.atError().withThrowable(e).log("can't dump TextPropCollection");
        }
        return sb.toString();
    }

    public void updateTextSize(int i) {
        this.charactersCovered = i;
    }

    public void writeOut(OutputStream outputStream) throws IOException {
        writeOut(outputStream, false);
    }

    @Override // org.apache.poi.common.Duplicatable
    public TextPropCollection copy() {
        return new TextPropCollection(this);
    }

    public void writeOut(OutputStream outputStream, boolean z) throws IOException {
        short s;
        if (!z) {
            Record.writeLittleEndian(this.charactersCovered, outputStream);
        }
        if (this.textPropType == TextPropType.paragraph && (s = this.indentLevel) > -1) {
            Record.writeLittleEndian(s, outputStream);
        }
        int i = this.maskSpecial;
        Iterator<TextProp> it2 = this.textProps.values().iterator();
        while (it2.hasNext()) {
            i |= it2.next().getWriteMask();
        }
        Record.writeLittleEndian(i, outputStream);
        for (TextProp textProp : getTextPropList()) {
            int value = textProp.getValue();
            if (!(textProp instanceof BitMaskTextProp) || textProp.getWriteMask() != 0) {
                if (textProp.getSize() == 2) {
                    Record.writeLittleEndian((short) value, outputStream);
                } else if (textProp.getSize() == 4) {
                    Record.writeLittleEndian(value, outputStream);
                } else if (textProp instanceof HSLFTabStopPropCollection) {
                    ((HSLFTabStopPropCollection) textProp).writeProperty(outputStream);
                }
            }
        }
    }

    public TextPropCollection(TextPropCollection textPropCollection) {
        this.charactersCovered = textPropCollection.charactersCovered;
        this.indentLevel = textPropCollection.indentLevel;
        this.maskSpecial = textPropCollection.maskSpecial;
        this.textPropType = textPropCollection.textPropType;
        textPropCollection.textProps.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.ien
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                TextPropCollection.this.lambda$new$0((String) obj, (TextProp) obj2);
            }
        });
    }
}
