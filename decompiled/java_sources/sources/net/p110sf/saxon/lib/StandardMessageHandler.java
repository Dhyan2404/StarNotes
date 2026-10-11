package net.p110sf.saxon.lib;

import java.util.Properties;
import java.util.function.Consumer;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.s9api.Message;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.serialize.UnicodeWriterResult;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.str.UnicodeWriterToWriter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StandardMessageHandler implements Consumer<Message> {

    /* renamed from: h */
    public static final /* synthetic */ boolean f100574h = false;

    /* renamed from: e */
    public final Configuration f100575e;

    /* renamed from: f */
    public UnicodeWriter f100576f;

    /* renamed from: g */
    public final SerializationProperties f100577g;

    public StandardMessageHandler(Configuration configuration) {
        this.f100575e = configuration;
        Properties properties = new Properties();
        properties.setProperty("method", "xml");
        properties.setProperty("indent", "yes");
        properties.setProperty("omit-xml-declaration", "yes");
        this.f100577g = new SerializationProperties(properties);
    }

    public UnicodeWriter getUnicodeWriter() {
        return this.f100576f;
    }

    public void setUnicodeWriter(UnicodeWriter unicodeWriter) {
        this.f100576f = unicodeWriter;
    }

    @Override // java.util.function.Consumer
    public synchronized void accept(Message message) {
        try {
            XdmNode content = message.getContent();
            if (this.f100576f == null) {
                this.f100576f = new UnicodeWriterToWriter(this.f100575e.getLogger().asWriter());
            }
            Receiver receiver = this.f100575e.getSerializerFactory().getReceiver(new UnicodeWriterResult(this.f100576f, null), this.f100577g);
            receiver.open();
            receiver.append(content.getUnderlyingNode());
            receiver.close();
        } catch (XPathException unused) {
        }
    }
}
