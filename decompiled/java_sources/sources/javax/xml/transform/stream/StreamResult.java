package javax.xml.transform.stream;

import com.sunia.HTREnginev2.bhg;
import java.io.File;
import java.io.OutputStream;
import java.io.Writer;
import javax.xml.transform.Result;

/* loaded from: classes5.dex */
public class StreamResult implements Result {
    public static final String FEATURE = "http://javax.xml.transform.stream.StreamResult/feature";

    /* renamed from: e */
    public String f98054e;

    /* renamed from: f */
    public OutputStream f98055f;

    /* renamed from: g */
    public Writer f98056g;

    public StreamResult() {
    }

    public OutputStream getOutputStream() {
        return this.f98055f;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f98054e;
    }

    public Writer getWriter() {
        return this.f98056g;
    }

    public void setOutputStream(OutputStream outputStream) {
        this.f98055f = outputStream;
    }

    public void setSystemId(File file) {
        this.f98054e = bhg.m53270a(file.getAbsolutePath());
    }

    public void setWriter(Writer writer) {
        this.f98056g = writer;
    }

    public StreamResult(File file) {
        setSystemId(file);
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f98054e = str;
    }

    public StreamResult(OutputStream outputStream) {
        setOutputStream(outputStream);
    }

    public StreamResult(Writer writer) {
        setWriter(writer);
    }

    public StreamResult(String str) {
        this.f98054e = str;
    }
}
