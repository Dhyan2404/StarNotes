package net.p110sf.saxon.lib;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class InvalidityReportGenerator extends StandardInvalidityHandler {
    public static final String REPORT_NS = "http://saxon.sf.net/ns/validation";

    public InvalidityReportGenerator(Configuration configuration) {
        super(configuration);
    }

    public void createMetaData() throws XPathException {
    }

    @Override // net.p110sf.saxon.lib.StandardInvalidityHandler, net.p110sf.saxon.lib.InvalidityHandler
    public Sequence endReporting() throws XPathException {
        return null;
    }

    public int getErrorCount() {
        return 0;
    }

    public int getWarningCount() {
        return 0;
    }

    @Override // net.p110sf.saxon.lib.StandardInvalidityHandler, net.p110sf.saxon.lib.InvalidityHandler
    public void reportInvalidity(Invalidity invalidity) throws XPathException {
    }

    public void setReceiver(Outputter outputter) {
    }

    public void setSchemaName(String str) {
    }

    public void setSystemId(String str) {
    }

    public void setXsdVersion(String str) {
    }

    @Override // net.p110sf.saxon.lib.StandardInvalidityHandler, net.p110sf.saxon.lib.InvalidityHandler
    public void startReporting(String str) throws XPathException {
    }

    public InvalidityReportGenerator(Configuration configuration, Outputter outputter) throws XPathException {
        super(configuration);
    }
}
