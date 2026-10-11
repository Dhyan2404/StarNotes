package net.p110sf.saxon.serialize;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.HexBinaryValue;

/* loaded from: classes11.dex */
public class BinaryTextDecoder extends ProxyReceiver {

    /* renamed from: e */
    public String f101488e;

    public BinaryTextDecoder(Receiver receiver, Properties properties) throws XPathException {
        super(receiver);
        this.f101488e = "utf8";
        setOutputProperties(properties);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        String str2;
        int indexOf = str.indexOf(46);
        if (indexOf < 0 || indexOf == str.length() - 1) {
            str2 = this.f101488e;
        } else {
            str2 = str.substring(indexOf + 1);
            str = str.substring(0, indexOf);
        }
        UnicodeString tidy = unicodeString.tidy();
        byte[] binaryValue = str.equals("hex") ? new HexBinaryValue(tidy).getBinaryValue() : str.equals("b64") ? new Base64BinaryValue(tidy).getBinaryValue() : null;
        if (binaryValue != null) {
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(new ByteArrayInputStream(binaryValue), str2);
                int length = binaryValue.length;
                char[] cArr = new char[length];
                this.nextReceiver.characters(StringView.m63901of(new String(cArr, 0, inputStreamReader.read(cArr, 0, length))), location, i);
            } catch (IOException unused) {
                throw new XPathException("Text output method: failed to decode binary data " + Err.wrap(unicodeString.toString(), 4));
            }
        }
    }

    public void setOutputProperties(Properties properties) throws XPathException {
        this.f101488e = properties.getProperty("encoding", "utf8");
    }
}
