package com.twelvemonkeys.xml;

import java.io.OutputStream;
import java.io.Writer;
import org.apache.commons.collections4.MapUtils;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMImplementationList;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSOutput;
import org.w3c.dom.ls.LSSerializer;

/* loaded from: classes10.dex */
public final class DOMSerializer {

    /* renamed from: c */
    public static final String f94426c = "format-pretty-print";

    /* renamed from: d */
    public static final String f94427d = "xml-declaration";

    /* renamed from: a */
    public final LSSerializer f94428a;

    /* renamed from: b */
    public final LSOutput f94429b;

    /* renamed from: com.twelvemonkeys.xml.DOMSerializer$a */
    /* loaded from: classes10.dex */
    public static class C17022a {

        /* renamed from: a */
        public static final DOMImplementationRegistry f94430a = m60802a();

        /* renamed from: a */
        public static DOMImplementationRegistry m60802a() {
            try {
                return DOMImplementationRegistry.newInstance();
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException(e);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException(e2);
            } catch (InstantiationException e3) {
                throw new IllegalStateException(e3);
            }
        }

        /* renamed from: b */
        public static DOMImplementationLS m60803b() {
            DOMImplementationRegistry dOMImplementationRegistry = f94430a;
            DOMImplementationLS dOMImplementationLS = (DOMImplementationLS) dOMImplementationRegistry.getDOMImplementation("LS 3.0");
            if (dOMImplementationLS != null) {
                return dOMImplementationLS;
            }
            DOMImplementationList dOMImplementationList = dOMImplementationRegistry.getDOMImplementationList("");
            System.err.println("DOM implementations (" + dOMImplementationList.getLength() + "):");
            for (int i = 0; i < dOMImplementationList.getLength(); i++) {
                System.err.println(MapUtils.f104930a + dOMImplementationList.item(i));
            }
            throw new IllegalStateException("Could not create DOM Implementation (no LS support found)");
        }
    }

    public DOMSerializer() {
        DOMImplementationLS m60803b = C17022a.m60803b();
        this.f94428a = m60803b.createLSSerializer();
        this.f94429b = m60803b.createLSOutput();
    }

    /* renamed from: a */
    public final void m60800a(Node node, boolean z) {
        m60801b(z);
        this.f94428a.write(node, this.f94429b);
    }

    /* renamed from: b */
    public final void m60801b(boolean z) {
        this.f94428a.getDomConfig().setParameter("xml-declaration", Boolean.valueOf(z));
    }

    public boolean getPrettyPrint() {
        return Boolean.TRUE.equals(this.f94428a.getDomConfig().getParameter("format-pretty-print"));
    }

    public void serialize(Document document) {
        m60800a(document, true);
    }

    public void setPrettyPrint(boolean z) {
        DOMConfiguration domConfig = this.f94428a.getDomConfig();
        if (domConfig.canSetParameter("format-pretty-print", Boolean.valueOf(z))) {
            domConfig.setParameter("format-pretty-print", Boolean.valueOf(z));
        }
    }

    public void serialize(Node node) {
        m60800a(node, false);
    }

    public DOMSerializer(OutputStream outputStream, String str) {
        this();
        this.f94429b.setByteStream(outputStream);
        this.f94429b.setEncoding(str);
    }

    public DOMSerializer(Writer writer) {
        this();
        this.f94429b.setCharacterStream(writer);
    }
}
