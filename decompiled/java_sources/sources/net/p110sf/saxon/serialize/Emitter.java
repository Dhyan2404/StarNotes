package net.p110sf.saxon.serialize;

import java.io.IOException;
import java.util.Properties;
import net.p110sf.saxon.event.ReceiverWithOutputProperties;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.charcode.CharacterSet;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class Emitter extends SequenceReceiver implements ReceiverWithOutputProperties {
    protected boolean allCharactersEncodable;
    protected CharacterSet characterSet;

    /* renamed from: e */
    public boolean f101501e;
    protected Properties outputProperties;
    protected UnicodeWriter writer;

    public Emitter() {
        super(null);
        this.allCharactersEncodable = false;
        this.f101501e = false;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        if (item instanceof NodeInfo) {
            decompose(item, location, i);
        } else {
            characters(item.getUnicodeStringValue(), location, 0);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        UnicodeWriter unicodeWriter;
        if (!this.f101501e || (unicodeWriter = this.writer) == null) {
            return;
        }
        try {
            unicodeWriter.close();
        } catch (IOException unused) {
            throw new XPathException("Failed to close output stream");
        }
    }

    @Override // net.p110sf.saxon.event.ReceiverWithOutputProperties
    public Properties getOutputProperties() {
        return this.outputProperties;
    }

    public void setMustClose(boolean z) {
        this.f101501e = z;
    }

    public void setOutputProperties(Properties properties) throws XPathException {
        if (this.characterSet == null) {
            CharacterSet characterSet = getConfiguration().getCharacterSetFactory().getCharacterSet(properties);
            this.characterSet = characterSet;
            this.allCharactersEncodable = (characterSet instanceof UTF8CharacterSet) || (characterSet instanceof UTF16CharacterSet);
        }
        this.outputProperties = properties;
    }

    public void setUnicodeWriter(UnicodeWriter unicodeWriter) {
        this.writer = unicodeWriter;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }
}
