package net.p110sf.saxon.lib;

import java.util.Objects;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ErrorReporterToListener implements ErrorReporter {

    /* renamed from: e */
    public final ErrorListener f100497e;

    public ErrorReporterToListener(ErrorListener errorListener) {
        Objects.requireNonNull(errorListener);
        this.f100497e = errorListener;
    }

    public ErrorListener getErrorListener() {
        return this.f100497e;
    }

    @Override // net.p110sf.saxon.lib.ErrorReporter
    public void report(XmlProcessingError xmlProcessingError) {
        if (xmlProcessingError.isAlreadyReported()) {
            return;
        }
        try {
            XPathException fromXmlProcessingError = XPathException.fromXmlProcessingError(xmlProcessingError);
            if (xmlProcessingError.isWarning()) {
                this.f100497e.warning(fromXmlProcessingError);
            } else {
                this.f100497e.fatalError(fromXmlProcessingError);
            }
            xmlProcessingError.setAlreadyReported(true);
        } catch (TransformerException e) {
            xmlProcessingError.setTerminationMessage(e.getMessage());
        }
    }
}
