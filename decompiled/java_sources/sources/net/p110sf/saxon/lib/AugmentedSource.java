package net.p110sf.saxon.lib;

import java.util.List;
import java.util.Optional;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.type.SchemaType;
import org.xml.sax.EntityResolver;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class AugmentedSource implements Source {

    /* renamed from: e */
    public final Source f100479e;

    /* renamed from: f */
    public ParseOptions f100480f;

    /* renamed from: g */
    public String f100481g;

    public AugmentedSource(Source source) {
        this.f100480f = new ParseOptions();
        if (!(source instanceof AugmentedSource)) {
            this.f100479e = source;
            return;
        }
        throw new IllegalArgumentException("Contained source must not be an AugmentedSource");
    }

    public static AugmentedSource makeAugmentedSource(Source source) {
        return source instanceof AugmentedSource ? (AugmentedSource) source : new AugmentedSource(source);
    }

    public void addFilter(FilterFactory filterFactory) {
        this.f100480f.addFilter(filterFactory);
    }

    public void close() {
        ParseOptions.close(this.f100479e);
    }

    public Source getContainedSource() {
        return this.f100479e;
    }

    public int getDTDValidation() {
        return this.f100480f.getDTDValidationMode();
    }

    public EntityResolver getEntityResolver() {
        return this.f100480f.getEntityResolver();
    }

    public ErrorReporter getErrorReporter() {
        return this.f100480f.getErrorReporter();
    }

    public List<FilterFactory> getFilters() {
        return this.f100480f.getFilters();
    }

    public TreeModel getModel() {
        return this.f100480f.getModel();
    }

    public ParseOptions getParseOptions() {
        return this.f100480f;
    }

    public int getSchemaValidation() {
        return this.f100480f.getSchemaValidationMode();
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        String str = this.f100481g;
        return str != null ? str : this.f100479e.getSystemId();
    }

    public StructuredQName getTopLevelElement() {
        return this.f100480f.getTopLevelElement();
    }

    public SchemaType getTopLevelType() {
        return this.f100480f.getTopLevelType();
    }

    public Optional<Boolean> getWrapDocument() {
        return this.f100480f.getWrapDocument();
    }

    public XMLReader getXMLReader() {
        XMLReader xMLReader = this.f100480f.getXMLReader();
        if (xMLReader != null) {
            return xMLReader;
        }
        Source source = this.f100479e;
        if (source instanceof SAXSource) {
            return ((SAXSource) source).getXMLReader();
        }
        return null;
    }

    public boolean isLineNumbering() {
        return this.f100480f.isLineNumbering();
    }

    public boolean isLineNumberingSet() {
        return this.f100480f.isLineNumberingSet();
    }

    public boolean isPleaseCloseAfterUse() {
        return this.f100480f.isPleaseCloseAfterUse();
    }

    public boolean isXIncludeAware() {
        return this.f100480f.isXIncludeAware();
    }

    public boolean isXIncludeAwareSet() {
        return this.f100480f.isXIncludeAwareSet();
    }

    public void setDTDValidationMode(int i) {
        this.f100480f.setDTDValidationMode(i);
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.f100480f.setEntityResolver(entityResolver);
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f100480f.setErrorReporter(errorReporter);
    }

    public void setLineNumbering(boolean z) {
        this.f100480f.setLineNumbering(z);
    }

    public void setModel(TreeModel treeModel) {
        this.f100480f.setModel(treeModel);
    }

    public void setPleaseCloseAfterUse(boolean z) {
        this.f100480f.setPleaseCloseAfterUse(z);
    }

    public void setSchemaValidationMode(int i) {
        this.f100480f.setSchemaValidationMode(i);
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f100481g = str;
    }

    public void setTopLevelElement(StructuredQName structuredQName) {
        this.f100480f.setTopLevelElement(structuredQName);
    }

    public void setTopLevelType(SchemaType schemaType) {
        this.f100480f.setTopLevelType(schemaType);
    }

    public void setWrapDocument(Optional<Boolean> optional) {
        this.f100480f.setWrapDocument(optional);
    }

    public void setXIncludeAware(boolean z) {
        this.f100480f.setXIncludeAware(z);
    }

    public void setXMLReader(XMLReader xMLReader) {
        this.f100480f.setXMLReader(xMLReader);
        Source source = this.f100479e;
        if (source instanceof SAXSource) {
            ((SAXSource) source).setXMLReader(xMLReader);
        }
    }

    public AugmentedSource(Source source, ParseOptions parseOptions) {
        this.f100480f = new ParseOptions();
        if (!(source instanceof AugmentedSource)) {
            this.f100479e = source;
            this.f100480f = parseOptions;
            return;
        }
        throw new IllegalArgumentException("Contained source must not be an AugmentedSource");
    }
}
