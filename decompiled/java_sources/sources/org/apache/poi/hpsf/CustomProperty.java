package org.apache.poi.hpsf;

import java.util.Objects;

/* loaded from: classes12.dex */
public class CustomProperty extends Property {
    private String name;

    public CustomProperty() {
        this.name = null;
    }

    @Override // org.apache.poi.hpsf.Property
    public boolean equals(Object obj) {
        return (obj instanceof CustomProperty) && equalsContents(obj);
    }

    public boolean equalsContents(Object obj) {
        CustomProperty customProperty = (CustomProperty) obj;
        String name = customProperty.getName();
        String name2 = getName();
        return (name == null ? name2 == null : name.equals(name2)) && customProperty.getID() == getID() && customProperty.getType() == getType() && customProperty.getValue().equals(getValue());
    }

    public String getName() {
        return this.name;
    }

    @Override // org.apache.poi.hpsf.Property
    public int hashCode() {
        return Objects.hash(this.name, Long.valueOf(getID()));
    }

    public void setName(String str) {
        this.name = str;
    }

    public CustomProperty(Property property) {
        this(property, null);
    }

    public CustomProperty(Property property, String str) {
        super(property);
        this.name = str;
    }
}
