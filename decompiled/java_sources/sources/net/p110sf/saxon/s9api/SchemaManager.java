package net.p110sf.saxon.s9api;

import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.SchemaURIResolver;

/* loaded from: classes11.dex */
public abstract class SchemaManager {
    public abstract void exportComponents(Destination destination) throws SaxonApiException;

    @Deprecated
    public abstract ErrorListener getErrorListener();

    public abstract ErrorReporter getErrorReporter();

    public abstract SchemaURIResolver getSchemaURIResolver();

    public abstract String getXsdVersion();

    public abstract void importComponents(Source source) throws SaxonApiException;

    public abstract void load(Source source) throws SaxonApiException;

    public abstract SchemaValidator newSchemaValidator();

    @Deprecated
    public abstract void setErrorListener(ErrorListener errorListener);

    public abstract void setErrorReporter(ErrorReporter errorReporter);

    public abstract void setSchemaURIResolver(SchemaURIResolver schemaURIResolver);

    public abstract void setXsdVersion(String str);
}
