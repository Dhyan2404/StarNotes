package org.apache.commons.collections4.properties;

import java.util.Properties;

/* loaded from: classes11.dex */
public class PropertiesFactory extends AbstractPropertiesFactory<Properties> {
    public static final PropertiesFactory INSTANCE = new PropertiesFactory();

    @Override // org.apache.commons.collections4.properties.AbstractPropertiesFactory
    public Properties createProperties() {
        return new Properties();
    }
}
