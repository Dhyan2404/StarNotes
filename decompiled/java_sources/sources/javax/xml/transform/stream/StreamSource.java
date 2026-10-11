package javax.xml.transform.stream;

import com.sunia.HTREnginev2.bhg;
import java.io.File;
import java.io.InputStream;
import java.io.Reader;
import javax.xml.transform.Source;

/* loaded from: classes5.dex */
public class StreamSource implements Source {
    public static final String FEATURE = "http://javax.xml.transform.stream.StreamSource/feature";

    /* renamed from: e */
    public String f98057e;

    /* renamed from: f */
    public String f98058f;

    /* renamed from: g */
    public InputStream f98059g;

    /* renamed from: h */
    public Reader f98060h;

    public StreamSource() {
    }

    public InputStream getInputStream() {
        return this.f98059g;
    }

    public String getPublicId() {
        return this.f98057e;
    }

    public Reader getReader() {
        return this.f98060h;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f98058f;
    }

    public void setInputStream(InputStream inputStream) {
        this.f98059g = inputStream;
    }

    public void setPublicId(String str) {
        this.f98057e = str;
    }

    public void setReader(Reader reader) {
        this.f98060h = reader;
    }

    public void setSystemId(File file) {
        this.f98058f = bhg.m53270a(file.getAbsolutePath());
    }

    public StreamSource(File file) {
        setSystemId(file);
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f98058f = str;
    }

    public StreamSource(InputStream inputStream) {
        setInputStream(inputStream);
    }

    public StreamSource(InputStream inputStream, String str) {
        setInputStream(inputStream);
        setSystemId(str);
    }

    public StreamSource(Reader reader) {
        setReader(reader);
    }

    public StreamSource(Reader reader, String str) {
        setReader(reader);
        setSystemId(str);
    }

    public StreamSource(String str) {
        this.f98058f = str;
    }
}
