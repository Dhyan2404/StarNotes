package org.apache.commons.collections4.properties;

/* loaded from: classes11.dex */
public class SortedPropertiesFactory extends AbstractPropertiesFactory<SortedProperties> {
    public static final SortedPropertiesFactory INSTANCE = new SortedPropertiesFactory();

    @Override // org.apache.commons.collections4.properties.AbstractPropertiesFactory
    public SortedProperties createProperties() {
        return new SortedProperties();
    }
}
