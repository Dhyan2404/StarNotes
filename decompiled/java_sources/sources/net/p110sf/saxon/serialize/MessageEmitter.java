package net.p110sf.saxon.serialize;

import java.io.IOException;
import java.io.Writer;
import java.util.Properties;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.str.UnicodeWriterToWriter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class MessageEmitter extends XMLEmitter {
    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.serialize.Emitter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        try {
            UnicodeWriter unicodeWriter = this.writer;
            if (unicodeWriter != null) {
                unicodeWriter.flush();
            }
            super.close();
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        try {
            UnicodeWriter unicodeWriter = this.writer;
            if (unicodeWriter != null) {
                unicodeWriter.writeCodePoint(10);
                this.writer.flush();
            }
            super.endDocument();
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (suppressProcessingInstruction(str, unicodeString, location, i)) {
            return;
        }
        super.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        super.setPipelineConfiguration(pipelineConfiguration);
        if (this.writer == null) {
            this.writer = new UnicodeWriterToWriter(getConfiguration().getLogger().asWriter());
        }
        try {
            Properties properties = new Properties();
            properties.setProperty("method", "xml");
            properties.setProperty("indent", "yes");
            properties.setProperty("omit-xml-declaration", "yes");
            setOutputProperties(properties);
        } catch (XPathException e) {
            throw new IllegalStateException(e);
        }
    }

    public void setWriter(Writer writer) {
        this.writer = new UnicodeWriterToWriter(writer);
    }

    public boolean suppressProcessingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
        return str.equals("error-code");
    }
}
