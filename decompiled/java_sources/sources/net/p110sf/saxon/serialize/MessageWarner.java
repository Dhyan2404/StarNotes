package net.p110sf.saxon.serialize;

import java.io.StringWriter;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.UnicodeWriterToWriter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;

/* loaded from: classes11.dex */
public class MessageWarner extends XMLEmitter {

    /* renamed from: q */
    public boolean f101572q = false;

    /* renamed from: r */
    public String f101573r = null;

    /* renamed from: s */
    public StringWriter f101574s;

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.serialize.Emitter, net.p110sf.saxon.event.Receiver
    public void close() {
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        ErrorReporter errorReporter = getPipelineConfiguration().getErrorReporter();
        String stringWriter = this.f101574s.toString();
        String str = this.f101573r;
        if (str == null) {
            str = "XTMM9000";
        }
        XmlProcessingIncident xmlProcessingIncident = new XmlProcessingIncident(stringWriter, str);
        if (!this.f101572q) {
            xmlProcessingIncident = xmlProcessingIncident.asWarning();
        }
        errorReporter.report(xmlProcessingIncident);
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (str.equals("error-code")) {
            this.f101573r = unicodeString.toString();
        } else {
            super.processingInstruction(str, unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f101574s = new StringWriter();
        this.writer = new UnicodeWriterToWriter(this.f101574s);
        this.f101572q = ReceiverOption.contains(i, 16384);
        super.startDocument(i);
    }
}
