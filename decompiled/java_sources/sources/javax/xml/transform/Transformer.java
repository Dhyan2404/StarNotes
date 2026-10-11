package javax.xml.transform;

import java.util.Properties;

/* loaded from: classes5.dex */
public abstract class Transformer {
    public abstract void clearParameters();

    public abstract ErrorListener getErrorListener();

    public abstract Properties getOutputProperties();

    public abstract String getOutputProperty(String str) throws IllegalArgumentException;

    public abstract Object getParameter(String str);

    public abstract URIResolver getURIResolver();

    public void reset() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This Transformer, \"");
        stringBuffer.append(getClass().getName());
        stringBuffer.append("\", does not support the reset functionality.");
        stringBuffer.append("  Specification \"");
        stringBuffer.append(getClass().getPackage().getSpecificationTitle());
        stringBuffer.append("\"");
        stringBuffer.append(" version \"");
        stringBuffer.append(getClass().getPackage().getSpecificationVersion());
        stringBuffer.append("\"");
        throw new UnsupportedOperationException(stringBuffer.toString());
    }

    public abstract void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException;

    public abstract void setOutputProperties(Properties properties);

    public abstract void setOutputProperty(String str, String str2) throws IllegalArgumentException;

    public abstract void setParameter(String str, Object obj);

    public abstract void setURIResolver(URIResolver uRIResolver);

    public abstract void transform(Source source, Result result) throws TransformerException;
}
