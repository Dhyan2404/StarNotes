package org.apache.xmlbeans.impl.soap;

/* loaded from: classes13.dex */
public abstract class SOAPConnectionFactory {
    private static final String DEFAULT_SOAP_CONNECTION_FACTORY = "org.apache.axis.soap.SOAPConnectionFactoryImpl";
    private static final String SF_PROPERTY = "javax.xml.soap.SOAPConnectionFactory";

    public static SOAPConnectionFactory newInstance() throws SOAPException, UnsupportedOperationException {
        try {
            return (SOAPConnectionFactory) FactoryFinder.find(SF_PROPERTY, DEFAULT_SOAP_CONNECTION_FACTORY);
        } catch (Exception e) {
            throw new SOAPException("Unable to create SOAP connection factory: " + e.getMessage());
        }
    }

    public abstract SOAPConnection createConnection() throws SOAPException;
}
