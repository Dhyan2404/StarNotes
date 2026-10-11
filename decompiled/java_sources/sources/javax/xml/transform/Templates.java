package javax.xml.transform;

import java.util.Properties;

/* loaded from: classes5.dex */
public interface Templates {
    Properties getOutputProperties();

    Transformer newTransformer() throws TransformerConfigurationException;
}
