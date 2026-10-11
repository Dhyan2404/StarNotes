package java.awt;

/* loaded from: classes4.dex */
abstract class AttributeValue {
    private final String[] names;
    private final int value;

    public AttributeValue(int i, String[] strArr) {
        this.value = i;
        this.names = strArr;
    }

    public int hashCode() {
        return this.value;
    }

    public String toString() {
        return this.names[this.value];
    }
}
