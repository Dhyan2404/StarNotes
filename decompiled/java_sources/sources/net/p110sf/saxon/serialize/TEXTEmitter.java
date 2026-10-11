package net.p110sf.saxon.serialize;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.util.regex.Pattern;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class TEXTEmitter extends XMLEmitter {

    /* renamed from: s */
    public static final /* synthetic */ boolean f101594s = false;

    /* renamed from: q */
    public Pattern f101595q = null;

    /* renamed from: r */
    public String f101596r = null;

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        int testCharacters;
        if (!this.started) {
            openDocument();
        }
        if (!ReceiverOption.contains(i, 4) && (testCharacters = testCharacters(unicodeString)) != 0) {
            throw new XPathException("Output character not available in this encoding (x" + Integer.toHexString(testCharacters) + MotionUtils.f31762d, "SERE0008");
        }
        Pattern pattern = this.f101595q;
        if (pattern != null) {
            unicodeString = StringView.m63901of(pattern.matcher(unicodeString.toString()).replaceAll(this.f101596r));
        }
        try {
            this.writer.write(unicodeString);
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void endElement() {
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void openDocument() throws XPathException {
        if (this.characterSet == null) {
            this.characterSet = UTF8CharacterSet.getInstance();
        }
        String property = this.outputProperties.getProperty("encoding");
        if (property == null || property.equalsIgnoreCase("utf8")) {
            property = "UTF-8";
        }
        String property2 = this.outputProperties.getProperty(SaxonOutputKeys.BYTE_ORDER_MARK);
        String property3 = this.outputProperties.getProperty(SaxonOutputKeys.NEWLINE);
        if (property3 != null && !property3.equals("\n")) {
            this.f101596r = property3;
            this.f101595q = Pattern.compile("\\n");
        }
        if ("yes".equals(property2) && ("UTF-8".equalsIgnoreCase(property) || "UTF-16LE".equalsIgnoreCase(property) || "UTF-16BE".equalsIgnoreCase(property))) {
            try {
                this.writer.writeCodePoint(65279);
            } catch (IOException unused) {
            }
        }
        this.started = true;
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public void writeDeclaration() {
    }
}
