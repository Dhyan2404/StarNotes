package java.text;

import java.text.AttributedCharacterIterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes5.dex */
class AttributeEntry implements Map.Entry<AttributedCharacterIterator.Attribute, Object> {
    private AttributedCharacterIterator.Attribute key;
    private Object value;

    public AttributeEntry(AttributedCharacterIterator.Attribute attribute, Object obj) {
        this.key = attribute;
        this.value = obj;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!(obj instanceof AttributeEntry)) {
            return false;
        }
        AttributeEntry attributeEntry = (AttributeEntry) obj;
        return attributeEntry.key.equals(this.key) && Objects.equals(attributeEntry.value, this.value);
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        int hashCode = this.key.hashCode();
        Object obj = this.value;
        return (obj == null ? 0 : obj.hashCode()) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.key.toString() + "=" + this.value.toString();
    }

    @Override // java.util.Map.Entry
    public AttributedCharacterIterator.Attribute getKey() {
        return this.key;
    }
}
