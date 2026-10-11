package com.google.api.client.http;

import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.UUID;
import org.apache.poi.smtp.MIMEHeaders;

/* loaded from: classes6.dex */
public class MultipartContent extends AbstractHttpContent {
    static final String NEWLINE = "\r\n";
    private static final String TWO_DASHES = "--";
    private ArrayList<Part> parts;

    /* loaded from: classes6.dex */
    public static final class Part {
        HttpContent content;
        HttpEncoding encoding;
        HttpHeaders headers;

        public Part() {
            this(null);
        }

        public HttpContent getContent() {
            return this.content;
        }

        public HttpEncoding getEncoding() {
            return this.encoding;
        }

        public HttpHeaders getHeaders() {
            return this.headers;
        }

        public Part setContent(HttpContent httpContent) {
            this.content = httpContent;
            return this;
        }

        public Part setEncoding(HttpEncoding httpEncoding) {
            this.encoding = httpEncoding;
            return this;
        }

        public Part setHeaders(HttpHeaders httpHeaders) {
            this.headers = httpHeaders;
            return this;
        }

        public Part(HttpContent httpContent) {
            this(null, httpContent);
        }

        public Part(HttpHeaders httpHeaders, HttpContent httpContent) {
            setHeaders(httpHeaders);
            setContent(httpContent);
        }
    }

    public MultipartContent() {
        this("__END_OF_PART__" + UUID.randomUUID().toString() + "__");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MultipartContent addPart(Part part) {
        this.parts.add(Preconditions.checkNotNull(part));
        return this;
    }

    public final String getBoundary() {
        return getMediaType().getParameter(MIMEHeaders.KEY_BOUNDARY);
    }

    public final Collection<Part> getParts() {
        return Collections.unmodifiableCollection(this.parts);
    }

    @Override // com.google.api.client.http.AbstractHttpContent, com.google.api.client.http.HttpContent
    public boolean retrySupported() {
        Iterator<Part> it2 = this.parts.iterator();
        while (it2.hasNext()) {
            if (!it2.next().content.retrySupported()) {
                return false;
            }
        }
        return true;
    }

    public MultipartContent setBoundary(String str) {
        getMediaType().setParameter(MIMEHeaders.KEY_BOUNDARY, (String) Preconditions.checkNotNull(str));
        return this;
    }

    public MultipartContent setContentParts(Collection<? extends HttpContent> collection) {
        this.parts = new ArrayList<>(collection.size());
        Iterator<? extends HttpContent> it2 = collection.iterator();
        while (it2.hasNext()) {
            addPart(new Part(it2.next()));
        }
        return this;
    }

    public MultipartContent setParts(Collection<Part> collection) {
        this.parts = new ArrayList<>(collection);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.google.api.client.http.HttpEncodingStreamingContent] */
    @Override // com.google.api.client.http.HttpContent, com.google.api.client.util.StreamingContent
    public void writeTo(OutputStream outputStream) throws IOException {
        long j;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, getCharset());
        String boundary = getBoundary();
        Iterator<Part> it2 = this.parts.iterator();
        while (it2.hasNext()) {
            Part next = it2.next();
            HttpHeaders acceptEncoding = new HttpHeaders().setAcceptEncoding(null);
            HttpHeaders httpHeaders = next.headers;
            if (httpHeaders != null) {
                acceptEncoding.fromHttpHeaders(httpHeaders);
            }
            acceptEncoding.setContentEncoding(null).setUserAgent(null).setContentType(null).setContentLength(null).set(MIMEHeaders.KEY_CONTENT_TRANSFER_ENCODING, (Object) null);
            HttpContent httpContent = next.content;
            if (httpContent != null) {
                acceptEncoding.set(MIMEHeaders.KEY_CONTENT_TRANSFER_ENCODING, (Object) Arrays.asList("binary"));
                acceptEncoding.setContentType(httpContent.getType());
                HttpEncoding httpEncoding = next.encoding;
                if (httpEncoding == null) {
                    j = httpContent.getLength();
                } else {
                    acceptEncoding.setContentEncoding(httpEncoding.getName());
                    ?? httpEncodingStreamingContent = new HttpEncodingStreamingContent(httpContent, httpEncoding);
                    long computeLength = AbstractHttpContent.computeLength(httpContent);
                    httpContent = httpEncodingStreamingContent;
                    j = computeLength;
                }
                if (j != -1) {
                    acceptEncoding.setContentLength(Long.valueOf(j));
                }
            } else {
                httpContent = null;
            }
            outputStreamWriter.write("--");
            outputStreamWriter.write(boundary);
            outputStreamWriter.write("\r\n");
            HttpHeaders.serializeHeadersForMultipartRequests(acceptEncoding, null, null, outputStreamWriter);
            if (httpContent != null) {
                outputStreamWriter.write("\r\n");
                outputStreamWriter.flush();
                httpContent.writeTo(outputStream);
            }
            outputStreamWriter.write("\r\n");
        }
        outputStreamWriter.write("--");
        outputStreamWriter.write(boundary);
        outputStreamWriter.write("--");
        outputStreamWriter.write("\r\n");
        outputStreamWriter.flush();
    }

    public MultipartContent(String str) {
        super(new HttpMediaType("multipart/related").setParameter(MIMEHeaders.KEY_BOUNDARY, str));
        this.parts = new ArrayList<>();
    }

    @Override // com.google.api.client.http.AbstractHttpContent
    public MultipartContent setMediaType(HttpMediaType httpMediaType) {
        super.setMediaType(httpMediaType);
        return this;
    }
}
