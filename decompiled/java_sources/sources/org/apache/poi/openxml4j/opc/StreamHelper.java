package org.apache.poi.openxml4j.opc;

import com.caverock.androidsvg.SVGParser;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;

/* loaded from: classes12.dex */
public final class StreamHelper {
    private StreamHelper() {
    }

    public static boolean copyStream(InputStream inputStream, OutputStream outputStream) {
        try {
            IOUtils.copy(inputStream, outputStream);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean saveXmlInStream(Document document, OutputStream outputStream) {
        try {
            Transformer newTransformer = XMLHelper.newTransformer();
            DOMSource dOMSource = new DOMSource(document);
            StreamResult streamResult = new StreamResult(new FilterOutputStream(outputStream) { // from class: org.apache.poi.openxml4j.opc.StreamHelper.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    ((FilterOutputStream) this).out.flush();
                }

                @Override // java.io.FilterOutputStream, java.io.OutputStream
                public void write(byte[] bArr, int i, int i2) throws IOException {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                }
            });
            newTransformer.setOutputProperty("encoding", "UTF-8");
            newTransformer.setOutputProperty("indent", SVGParser.f16048t);
            newTransformer.setOutputProperty("standalone", "yes");
            newTransformer.transform(dOMSource, streamResult);
            return true;
        } catch (TransformerException unused) {
            return false;
        }
    }
}
