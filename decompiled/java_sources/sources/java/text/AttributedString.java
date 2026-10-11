package java.text;

import java.awt.InternalError;
import java.text.AttributedCharacterIterator;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

/* loaded from: classes5.dex */
public class AttributedString {
    private static final int INITIAL_CAPACITY = 10;
    Vector<Object>[] runAttributeValues;
    Vector<AttributedCharacterIterator.Attribute>[] runAttributes;
    int runCount;
    int[] runStarts;
    String text;

    /* loaded from: classes5.dex */
    public final class AttributeMap extends AbstractMap<AttributedCharacterIterator.Attribute, Object> {
        int beginIndex;
        int endIndex;
        int runIndex;

        public AttributeMap(int i, int i2, int i3) {
            this.runIndex = i;
            this.beginIndex = i2;
            this.endIndex = i3;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<AttributedCharacterIterator.Attribute, Object>> entrySet() {
            HashSet hashSet = new HashSet();
            synchronized (AttributedString.this) {
                int size = AttributedString.this.runAttributes[this.runIndex].size();
                for (int i = 0; i < size; i++) {
                    AttributedCharacterIterator.Attribute attribute = AttributedString.this.runAttributes[this.runIndex].get(i);
                    Object obj = AttributedString.this.runAttributeValues[this.runIndex].get(i);
                    if (!(obj instanceof Annotation) || (obj = AttributedString.this.getAttributeCheckRange(attribute, this.runIndex, this.beginIndex, this.endIndex)) != null) {
                        hashSet.add(new AttributeEntry(attribute, obj));
                    }
                }
            }
            return hashSet;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Object get(Object obj) {
            return AttributedString.this.getAttributeCheckRange((AttributedCharacterIterator.Attribute) obj, this.runIndex, this.beginIndex, this.endIndex);
        }
    }

    /* loaded from: classes5.dex */
    public final class AttributedStringIterator implements AttributedCharacterIterator {
        private int beginIndex;
        private int currentIndex;
        private int currentRunIndex;
        private int currentRunLimit;
        private int currentRunStart;
        private int endIndex;
        private AttributedCharacterIterator.Attribute[] relevantAttributes;

        public AttributedStringIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2) {
            if (i < 0 || i > i2 || i2 > AttributedString.this.length()) {
                throw new IllegalArgumentException("Invalid substring range");
            }
            this.beginIndex = i;
            this.endIndex = i2;
            this.currentIndex = i;
            updateRunInfo();
            if (attributeArr != null) {
                this.relevantAttributes = (AttributedCharacterIterator.Attribute[]) attributeArr.clone();
            }
        }

        private AttributedString getString() {
            return AttributedString.this;
        }

        private char internalSetIndex(int i) {
            this.currentIndex = i;
            if (i < this.currentRunStart || i >= this.currentRunLimit) {
                updateRunInfo();
            }
            if (this.currentIndex == this.endIndex) {
                return (char) 65535;
            }
            return AttributedString.this.charAt(i);
        }

        private void updateRunInfo() {
            AttributedString attributedString;
            int i;
            int i2 = this.currentIndex;
            int i3 = this.endIndex;
            int i4 = -1;
            if (i2 == i3) {
                this.currentRunLimit = i3;
                this.currentRunStart = i3;
                this.currentRunIndex = -1;
                return;
            }
            synchronized (AttributedString.this) {
                while (true) {
                    attributedString = AttributedString.this;
                    i = attributedString.runCount;
                    if (i4 >= i - 1) {
                        break;
                    }
                    int i5 = i4 + 1;
                    if (attributedString.runStarts[i5] > this.currentIndex) {
                        break;
                    } else {
                        i4 = i5;
                    }
                }
                this.currentRunIndex = i4;
                if (i4 >= 0) {
                    int i6 = attributedString.runStarts[i4];
                    this.currentRunStart = i6;
                    int i7 = this.beginIndex;
                    if (i6 < i7) {
                        this.currentRunStart = i7;
                    }
                } else {
                    this.currentRunStart = this.beginIndex;
                }
                if (i4 < i - 1) {
                    int i8 = attributedString.runStarts[i4 + 1];
                    this.currentRunLimit = i8;
                    int i9 = this.endIndex;
                    if (i8 > i9) {
                        this.currentRunLimit = i9;
                    }
                } else {
                    this.currentRunLimit = this.endIndex;
                }
            }
        }

        @Override // java.text.CharacterIterator
        public Object clone() {
            try {
                return (AttributedStringIterator) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new InternalError(e);
            }
        }

        @Override // java.text.CharacterIterator
        public char current() {
            int i = this.currentIndex;
            if (i == this.endIndex) {
                return (char) 65535;
            }
            return AttributedString.this.charAt(i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AttributedStringIterator)) {
                return false;
            }
            AttributedStringIterator attributedStringIterator = (AttributedStringIterator) obj;
            return AttributedString.this == attributedStringIterator.getString() && this.currentIndex == attributedStringIterator.currentIndex && this.beginIndex == attributedStringIterator.beginIndex && this.endIndex == attributedStringIterator.endIndex;
        }

        @Override // java.text.CharacterIterator
        public char first() {
            return internalSetIndex(this.beginIndex);
        }

        @Override // java.text.AttributedCharacterIterator
        public Set<AttributedCharacterIterator.Attribute> getAllAttributeKeys() {
            HashSet hashSet;
            Vector<AttributedCharacterIterator.Attribute> vector;
            AttributedString attributedString = AttributedString.this;
            if (attributedString.runAttributes == null) {
                return new HashSet();
            }
            synchronized (attributedString) {
                hashSet = new HashSet();
                int i = 0;
                while (true) {
                    AttributedString attributedString2 = AttributedString.this;
                    int i2 = attributedString2.runCount;
                    if (i < i2) {
                        int[] iArr = attributedString2.runStarts;
                        if (iArr[i] < this.endIndex && ((i == i2 - 1 || iArr[i + 1] > this.beginIndex) && (vector = attributedString2.runAttributes[i]) != null)) {
                            int size = vector.size();
                            while (true) {
                                int i3 = size - 1;
                                if (size > 0) {
                                    hashSet.add(vector.get(i3));
                                    size = i3;
                                }
                            }
                        }
                        i++;
                    }
                }
            }
            return hashSet;
        }

        @Override // java.text.AttributedCharacterIterator
        public Object getAttribute(AttributedCharacterIterator.Attribute attribute) {
            int i = this.currentRunIndex;
            if (i < 0) {
                return null;
            }
            return AttributedString.this.getAttributeCheckRange(attribute, i, this.beginIndex, this.endIndex);
        }

        @Override // java.text.AttributedCharacterIterator
        public Map<AttributedCharacterIterator.Attribute, Object> getAttributes() {
            int i;
            Vector<AttributedCharacterIterator.Attribute>[] vectorArr = AttributedString.this.runAttributes;
            return (vectorArr == null || (i = this.currentRunIndex) == -1 || vectorArr[i] == null) ? new Hashtable() : new AttributeMap(this.currentRunIndex, this.beginIndex, this.endIndex);
        }

        @Override // java.text.CharacterIterator
        public int getBeginIndex() {
            return this.beginIndex;
        }

        @Override // java.text.CharacterIterator
        public int getEndIndex() {
            return this.endIndex;
        }

        @Override // java.text.CharacterIterator
        public int getIndex() {
            return this.currentIndex;
        }

        @Override // java.text.AttributedCharacterIterator
        public int getRunLimit() {
            return this.currentRunLimit;
        }

        @Override // java.text.AttributedCharacterIterator
        public int getRunStart() {
            return this.currentRunStart;
        }

        public int hashCode() {
            return this.endIndex ^ ((AttributedString.this.text.hashCode() ^ this.currentIndex) ^ this.beginIndex);
        }

        @Override // java.text.CharacterIterator
        public char last() {
            int i = this.endIndex;
            return i == this.beginIndex ? internalSetIndex(i) : internalSetIndex(i - 1);
        }

        @Override // java.text.CharacterIterator
        public char next() {
            int i = this.currentIndex;
            if (i < this.endIndex) {
                return internalSetIndex(i + 1);
            }
            return (char) 65535;
        }

        @Override // java.text.CharacterIterator
        public char previous() {
            int i = this.currentIndex;
            if (i > this.beginIndex) {
                return internalSetIndex(i - 1);
            }
            return (char) 65535;
        }

        @Override // java.text.CharacterIterator
        public char setIndex(int i) {
            if (i < this.beginIndex || i > this.endIndex) {
                throw new IllegalArgumentException("Invalid index");
            }
            return internalSetIndex(i);
        }

        @Override // java.text.AttributedCharacterIterator
        public int getRunLimit(AttributedCharacterIterator.Attribute attribute) {
            int i = this.currentRunLimit;
            if (i == this.endIndex || this.currentRunIndex == -1) {
                return i;
            }
            Object attribute2 = getAttribute(attribute);
            int i2 = this.currentRunLimit;
            int i3 = this.currentRunIndex;
            while (i2 < this.endIndex) {
                i3++;
                if (!AttributedString.valuesMatch(attribute2, AttributedString.this.getAttribute(attribute, i3))) {
                    break;
                }
                AttributedString attributedString = AttributedString.this;
                i2 = i3 < attributedString.runCount + (-1) ? attributedString.runStarts[i3 + 1] : this.endIndex;
            }
            int i4 = this.endIndex;
            return i2 > i4 ? i4 : i2;
        }

        @Override // java.text.AttributedCharacterIterator
        public int getRunStart(AttributedCharacterIterator.Attribute attribute) {
            int i = this.currentRunStart;
            if (i == this.beginIndex || this.currentRunIndex == -1) {
                return i;
            }
            Object attribute2 = getAttribute(attribute);
            int i2 = this.currentRunStart;
            int i3 = this.currentRunIndex;
            while (i2 > this.beginIndex && AttributedString.valuesMatch(attribute2, AttributedString.this.getAttribute(attribute, i3 - 1))) {
                i3--;
                i2 = AttributedString.this.runStarts[i3];
            }
            int i4 = this.beginIndex;
            return i2 < i4 ? i4 : i2;
        }

        @Override // java.text.AttributedCharacterIterator
        public int getRunLimit(Set<? extends AttributedCharacterIterator.Attribute> set) {
            int i = this.currentRunLimit;
            if (i == this.endIndex || (r1 = this.currentRunIndex) == -1) {
                return i;
            }
            while (i < this.endIndex) {
                int i2 = i2 + 1;
                if (!AttributedString.this.attributeValuesMatch(set, this.currentRunIndex, i2)) {
                    break;
                }
                AttributedString attributedString = AttributedString.this;
                i = i2 < attributedString.runCount + (-1) ? attributedString.runStarts[i2 + 1] : this.endIndex;
            }
            int i3 = this.endIndex;
            return i > i3 ? i3 : i;
        }

        @Override // java.text.AttributedCharacterIterator
        public int getRunStart(Set<? extends AttributedCharacterIterator.Attribute> set) {
            int i;
            int i2 = this.currentRunStart;
            if (i2 == this.beginIndex || (i = this.currentRunIndex) == -1) {
                return i2;
            }
            while (i2 > this.beginIndex && AttributedString.this.attributeValuesMatch(set, this.currentRunIndex, i - 1)) {
                i--;
                i2 = AttributedString.this.runStarts[i];
            }
            int i3 = this.beginIndex;
            return i2 < i3 ? i3 : i2;
        }
    }

    public AttributedString(AttributedCharacterIterator[] attributedCharacterIteratorArr) {
        if (attributedCharacterIteratorArr != null) {
            if (attributedCharacterIteratorArr.length == 0) {
                this.text = "";
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (AttributedCharacterIterator attributedCharacterIterator : attributedCharacterIteratorArr) {
                appendContents(stringBuffer, attributedCharacterIterator);
            }
            String stringBuffer2 = stringBuffer.toString();
            this.text = stringBuffer2;
            if (stringBuffer2.isEmpty()) {
                return;
            }
            Map<AttributedCharacterIterator.Attribute, Object> map = null;
            int i = 0;
            for (AttributedCharacterIterator attributedCharacterIterator2 : attributedCharacterIteratorArr) {
                int beginIndex = attributedCharacterIterator2.getBeginIndex();
                int endIndex = attributedCharacterIterator2.getEndIndex();
                int i2 = beginIndex;
                while (i2 < endIndex) {
                    attributedCharacterIterator2.setIndex(i2);
                    Map<AttributedCharacterIterator.Attribute, Object> attributes = attributedCharacterIterator2.getAttributes();
                    if (mapsDiffer(map, attributes)) {
                        setAttributes(attributes, (i2 - beginIndex) + i);
                    }
                    i2 = attributedCharacterIterator2.getRunLimit();
                    map = attributes;
                }
                i += endIndex - beginIndex;
            }
            return;
        }
        throw new NullPointerException("Iterators must not be null");
    }

    private synchronized void addAttributeImpl(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
        if (this.runCount == 0) {
            createRunAttributeDataVectors();
        }
        addAttributeRunData(attribute, obj, ensureRunBreak(i), ensureRunBreak(i2));
    }

    private void addAttributeRunData(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
        int indexOf;
        while (i < i2) {
            Vector<AttributedCharacterIterator.Attribute> vector = this.runAttributes[i];
            if (vector == null) {
                Vector<AttributedCharacterIterator.Attribute> vector2 = new Vector<>();
                Vector<Object> vector3 = new Vector<>();
                this.runAttributes[i] = vector2;
                this.runAttributeValues[i] = vector3;
                indexOf = -1;
            } else {
                indexOf = vector.indexOf(attribute);
            }
            if (indexOf == -1) {
                int size = this.runAttributes[i].size();
                this.runAttributes[i].addElement(attribute);
                try {
                    this.runAttributeValues[i].addElement(obj);
                } catch (Exception unused) {
                    this.runAttributes[i].setSize(size);
                    this.runAttributeValues[i].setSize(size);
                }
            } else {
                this.runAttributeValues[i].set(indexOf, obj);
            }
            i++;
        }
    }

    private final void appendContents(StringBuffer stringBuffer, CharacterIterator characterIterator) {
        int endIndex = characterIterator.getEndIndex();
        for (int beginIndex = characterIterator.getBeginIndex(); beginIndex < endIndex; beginIndex++) {
            characterIterator.setIndex(beginIndex);
            stringBuffer.append(characterIterator.current());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean attributeValuesMatch(Set<? extends AttributedCharacterIterator.Attribute> set, int i, int i2) {
        for (AttributedCharacterIterator.Attribute attribute : set) {
            if (!valuesMatch(getAttribute(attribute, i), getAttribute(attribute, i2))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public char charAt(int i) {
        return this.text.charAt(i);
    }

    private final void createRunAttributeDataVectors() {
        this.runStarts = new int[10];
        this.runAttributes = new Vector[10];
        this.runAttributeValues = new Vector[10];
        this.runCount = 1;
    }

    private final int ensureRunBreak(int i) {
        return ensureRunBreak(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Object getAttribute(AttributedCharacterIterator.Attribute attribute, int i) {
        Vector<AttributedCharacterIterator.Attribute> vector = this.runAttributes[i];
        Vector<Object> vector2 = this.runAttributeValues[i];
        if (vector == null) {
            return null;
        }
        int indexOf = vector.indexOf(attribute);
        if (indexOf == -1) {
            return null;
        }
        return vector2.elementAt(indexOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x003c, code lost:
    
        r2 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getAttributeCheckRange(java.text.AttributedCharacterIterator.Attribute r6, int r7, int r8, int r9) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.getAttribute(r6, r7)
            boolean r1 = r0 instanceof java.text.Annotation
            if (r1 == 0) goto L5a
            r1 = 0
            if (r8 <= 0) goto L28
            int[] r2 = r5.runStarts
            r2 = r2[r7]
            r3 = r7
        L10:
            if (r2 < r8) goto L25
            int r4 = r3 + (-1)
            java.lang.Object r4 = r5.getAttribute(r6, r4)
            boolean r4 = valuesMatch(r0, r4)
            if (r4 == 0) goto L25
            int r3 = r3 + (-1)
            int[] r2 = r5.runStarts
            r2 = r2[r3]
            goto L10
        L25:
            if (r2 >= r8) goto L28
            return r1
        L28:
            int r8 = r5.length()
            if (r9 >= r8) goto L5a
            int r2 = r5.runCount
            int r2 = r2 + (-1)
            if (r7 >= r2) goto L3b
            int[] r2 = r5.runStarts
            int r3 = r7 + 1
            r2 = r2[r3]
            goto L3c
        L3b:
            r2 = r8
        L3c:
            if (r2 > r9) goto L57
            int r7 = r7 + 1
            java.lang.Object r3 = r5.getAttribute(r6, r7)
            boolean r3 = valuesMatch(r0, r3)
            if (r3 == 0) goto L57
            int r2 = r5.runCount
            int r2 = r2 + (-1)
            if (r7 >= r2) goto L3b
            int[] r2 = r5.runStarts
            int r3 = r7 + 1
            r2 = r2[r3]
            goto L3c
        L57:
            if (r2 <= r9) goto L5a
            return r1
        L5a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: java.text.AttributedString.getAttributeCheckRange(java.text.AttributedCharacterIterator$Attribute, int, int, int):java.lang.Object");
    }

    private static <K, V> boolean mapsDiffer(Map<K, V> map, Map<K, V> map2) {
        return map == null ? map2 != null && map2.size() > 0 : !map.equals(map2);
    }

    private void setAttributes(Map<AttributedCharacterIterator.Attribute, Object> map, int i) {
        int size;
        if (this.runCount == 0) {
            createRunAttributeDataVectors();
        }
        int ensureRunBreak = ensureRunBreak(i, false);
        if (map == null || (size = map.size()) <= 0) {
            return;
        }
        Vector<AttributedCharacterIterator.Attribute> vector = new Vector<>(size);
        Vector<Object> vector2 = new Vector<>(size);
        for (Map.Entry<AttributedCharacterIterator.Attribute, Object> entry : map.entrySet()) {
            vector.add(entry.getKey());
            vector2.add(entry.getValue());
        }
        this.runAttributes[ensureRunBreak] = vector;
        this.runAttributeValues[ensureRunBreak] = vector2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean valuesMatch(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public void addAttribute(AttributedCharacterIterator.Attribute attribute, Object obj) {
        attribute.getClass();
        int length = length();
        if (length != 0) {
            addAttributeImpl(attribute, obj, 0, length);
            return;
        }
        throw new IllegalArgumentException("Can't add attribute to 0-length text");
    }

    public void addAttributes(Map<? extends AttributedCharacterIterator.Attribute, ?> map, int i, int i2) {
        map.getClass();
        if (i < 0 || i2 > length() || i > i2) {
            throw new IllegalArgumentException("Invalid substring range");
        }
        if (i == i2) {
            if (!map.isEmpty()) {
                throw new IllegalArgumentException("Can't add attribute to 0-length text");
            }
            return;
        }
        if (this.runCount == 0) {
            createRunAttributeDataVectors();
        }
        int ensureRunBreak = ensureRunBreak(i);
        int ensureRunBreak2 = ensureRunBreak(i2);
        for (Map.Entry<? extends AttributedCharacterIterator.Attribute, ?> entry : map.entrySet()) {
            addAttributeRunData(entry.getKey(), entry.getValue(), ensureRunBreak, ensureRunBreak2);
        }
    }

    public AttributedCharacterIterator getIterator() {
        return getIterator(null, 0, length());
    }

    public int length() {
        return this.text.length();
    }

    private final int ensureRunBreak(int i, boolean z) {
        int i2;
        Vector<AttributedCharacterIterator.Attribute> vector;
        if (i == length()) {
            return this.runCount;
        }
        int i3 = 0;
        while (true) {
            i2 = this.runCount;
            if (i3 >= i2 || this.runStarts[i3] >= i) {
                break;
            }
            i3++;
        }
        if (i3 < i2 && this.runStarts[i3] == i) {
            return i3;
        }
        int[] iArr = this.runStarts;
        int length = iArr.length;
        if (i2 == length) {
            int i4 = length + (length >> 2);
            int[] copyOf = Arrays.copyOf(iArr, i4);
            Vector<AttributedCharacterIterator.Attribute>[] vectorArr = (Vector[]) Arrays.copyOf(this.runAttributes, i4);
            Vector<Object>[] vectorArr2 = (Vector[]) Arrays.copyOf(this.runAttributeValues, i4);
            this.runStarts = copyOf;
            this.runAttributes = vectorArr;
            this.runAttributeValues = vectorArr2;
        }
        if (z) {
            int i5 = i3 - 1;
            Vector<AttributedCharacterIterator.Attribute> vector2 = this.runAttributes[i5];
            Vector<Object> vector3 = this.runAttributeValues[i5];
            Vector<AttributedCharacterIterator.Attribute> vector4 = vector2 != null ? new Vector<>(vector2) : null;
            vector = vector3 != null ? new Vector<>(vector3) : null;
            r1 = vector4;
        } else {
            vector = null;
        }
        int i6 = this.runCount + 1;
        this.runCount = i6;
        for (int i7 = i6 - 1; i7 > i3; i7--) {
            int[] iArr2 = this.runStarts;
            int i8 = i7 - 1;
            iArr2[i7] = iArr2[i8];
            Vector<AttributedCharacterIterator.Attribute>[] vectorArr3 = this.runAttributes;
            vectorArr3[i7] = vectorArr3[i8];
            Vector<Object>[] vectorArr4 = this.runAttributeValues;
            vectorArr4[i7] = vectorArr4[i8];
        }
        this.runStarts[i3] = i;
        this.runAttributes[i3] = r1;
        this.runAttributeValues[i3] = vector;
        return i3;
    }

    public AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr) {
        return getIterator(attributeArr, 0, length());
    }

    public AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2) {
        return new AttributedStringIterator(attributeArr, i, i2);
    }

    public void addAttribute(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
        attribute.getClass();
        if (i >= 0 && i2 <= length() && i < i2) {
            addAttributeImpl(attribute, obj, i, i2);
            return;
        }
        throw new IllegalArgumentException("Invalid substring range");
    }

    public AttributedString(String str) {
        str.getClass();
        this.text = str;
    }

    public AttributedString(String str, Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        if (str != null && map != null) {
            this.text = str;
            if (str.isEmpty()) {
                if (!map.isEmpty()) {
                    throw new IllegalArgumentException("Can't add attribute to 0-length text");
                }
                return;
            }
            int size = map.size();
            if (size > 0) {
                createRunAttributeDataVectors();
                Vector<AttributedCharacterIterator.Attribute> vector = new Vector<>(size);
                Vector<Object> vector2 = new Vector<>(size);
                this.runAttributes[0] = vector;
                this.runAttributeValues[0] = vector2;
                for (Map.Entry<? extends AttributedCharacterIterator.Attribute, ?> entry : map.entrySet()) {
                    vector.addElement(entry.getKey());
                    vector2.addElement(entry.getValue());
                }
                return;
            }
            return;
        }
        throw null;
    }

    public AttributedString(AttributedCharacterIterator attributedCharacterIterator) {
        this(attributedCharacterIterator, attributedCharacterIterator.getBeginIndex(), attributedCharacterIterator.getEndIndex(), null);
    }

    public AttributedString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2) {
        this(attributedCharacterIterator, i, i2, null);
    }

    public AttributedString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2, AttributedCharacterIterator.Attribute[] attributeArr) {
        attributedCharacterIterator.getClass();
        int beginIndex = attributedCharacterIterator.getBeginIndex();
        int endIndex = attributedCharacterIterator.getEndIndex();
        if (i >= beginIndex && i2 <= endIndex && i <= i2) {
            StringBuilder sb = new StringBuilder();
            attributedCharacterIterator.setIndex(i);
            char current = attributedCharacterIterator.current();
            while (attributedCharacterIterator.getIndex() < i2) {
                sb.append(current);
                current = attributedCharacterIterator.next();
            }
            this.text = sb.toString();
            if (i == i2) {
                return;
            }
            HashSet hashSet = new HashSet();
            if (attributeArr == null) {
                hashSet.addAll(attributedCharacterIterator.getAllAttributeKeys());
            } else {
                for (AttributedCharacterIterator.Attribute attribute : attributeArr) {
                    hashSet.add(attribute);
                }
                hashSet.retainAll(attributedCharacterIterator.getAllAttributeKeys());
            }
            if (hashSet.isEmpty()) {
                return;
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                AttributedCharacterIterator.Attribute attribute2 = (AttributedCharacterIterator.Attribute) it2.next();
                attributedCharacterIterator.setIndex(beginIndex);
                while (attributedCharacterIterator.getIndex() < i2) {
                    int runStart = attributedCharacterIterator.getRunStart(attribute2);
                    int runLimit = attributedCharacterIterator.getRunLimit(attribute2);
                    Object attribute3 = attributedCharacterIterator.getAttribute(attribute2);
                    if (attribute3 != null) {
                        if (!(attribute3 instanceof Annotation)) {
                            if (runStart >= i2) {
                                break;
                            }
                            if (runLimit > i) {
                                runStart = runStart < i ? i : runStart;
                                runLimit = runLimit > i2 ? i2 : runLimit;
                                if (runStart != runLimit) {
                                    addAttribute(attribute2, attribute3, runStart - i, runLimit - i);
                                }
                            }
                        } else if (runStart < i || runLimit > i2) {
                            if (runLimit > i2) {
                                break;
                            }
                        } else {
                            addAttribute(attribute2, attribute3, runStart - i, runLimit - i);
                        }
                    }
                    attributedCharacterIterator.setIndex(runLimit);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Invalid substring range");
    }
}
