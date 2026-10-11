package org.apache.poi.smtp;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.StringUtils;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes12.dex */
public class SMTPDocument implements Closeable {
    private final Logger LOG = LogManager.getLogger((Class<?>) SMTPDocument.class);
    private SMTPMessage message = new SMTPMessage();

    public SMTPDocument(InputStream inputStream) throws IOException {
        load(inputStream);
    }

    private void load(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        try {
            MIMEHeaders headers = this.message.getHeaders();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null || StringUtils.isNullOrEmpty(readLine)) {
                    break;
                } else {
                    readMessageHeaders(bufferedReader, headers, readLine);
                }
            }
            String boundary = headers.getBoundary();
            if (StringUtils.isNullOrEmpty(boundary)) {
                throw new SMTPException("No boundary");
            }
            String str = MultiPartWriter.f115320h + boundary;
            String str2 = str + MultiPartWriter.f115320h;
            StringBuilder sb = new StringBuilder();
            MessageBodyPart messageBodyPart = null;
            MIMEHeaders mIMEHeaders = null;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                String readLine2 = bufferedReader.readLine();
                if (readLine2 == null) {
                    break;
                }
                if (str2.equals(readLine2)) {
                    setMessageBodyPartContent(messageBodyPart, sb);
                    break;
                }
                if (StringUtils.isNullOrEmpty(readLine2)) {
                    if (z) {
                        z = false;
                        z2 = true;
                    }
                } else if (str.equals(readLine2)) {
                    setMessageBodyPartContent(messageBodyPart, sb);
                    messageBodyPart = new MessageBodyPart();
                    mIMEHeaders = messageBodyPart.getHeaders();
                    this.message.addPart(messageBodyPart);
                    z2 = false;
                    z = true;
                } else if (z2) {
                    if (supportedContentType(mIMEHeaders)) {
                        if (sb.length() > 0) {
                            sb.append("\n");
                        }
                        sb.append(readLine2);
                    }
                    z = false;
                } else if (z) {
                    readMessageHeaders(bufferedReader, mIMEHeaders, readLine2);
                } else {
                    this.LOG.atWarn().log("Skip comment: %s", readLine2);
                }
            }
            bufferedReader.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void readContentType(BufferedReader bufferedReader, MIMEHeaders mIMEHeaders, String str, int i) throws IOException {
        ContentType contentType;
        int indexOf = str.indexOf(AndroidTreeView.f47214k, i);
        if (indexOf < 0) {
            contentType = ContentType.fromName(str.substring(i + 1).trim());
            mIMEHeaders.setContentType(contentType);
        } else {
            ContentType fromName = ContentType.fromName(str.substring(i + 1, indexOf).trim());
            HashMap hashMap = new HashMap();
            mIMEHeaders.getSubHeaders().put(fromName, hashMap);
            if (indexOf < str.length() - 1) {
                readSubHeaders(hashMap, str.substring(indexOf + 1));
            }
            while (str.charAt(str.length() - 1) == ';' && (str = bufferedReader.readLine()) != null) {
                readSubHeaders(hashMap, str);
            }
            contentType = fromName;
        }
        mIMEHeaders.setContentType(contentType);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007f, code lost:
    
        if (r2.equals(org.apache.poi.smtp.MIMEHeaders.KEY_CONTENT_ID) == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readMessageHeaders(java.io.BufferedReader r7, org.apache.poi.smtp.MIMEHeaders r8, java.lang.String r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.smtp.SMTPDocument.readMessageHeaders(java.io.BufferedReader, org.apache.poi.smtp.MIMEHeaders, java.lang.String):void");
    }

    private void readSubHeader(Map<String, String> map, String str) {
        String[] split = str.split("=");
        if (split.length != 2) {
            throw new SMTPException(String.format("Wrong sub headers format: %s", str));
        }
        map.put(split[0].trim(), trimSubHeaderValue(split[1]));
    }

    private void readSubHeaders(Map<String, String> map, String str) {
        for (String str2 : str.split(AndroidTreeView.f47214k)) {
            readSubHeader(map, str2);
        }
    }

    private void setMessageBodyPartContent(MessageBodyPart messageBodyPart, StringBuilder sb) {
        if (messageBodyPart != null) {
            messageBodyPart.setContent(sb.toString());
            messageBodyPart.setSize(sb.length());
        }
        sb.setLength(0);
    }

    private boolean supportedContentType(MIMEHeaders mIMEHeaders) {
        return mIMEHeaders != null && (mIMEHeaders.getContentType().isText() || mIMEHeaders.getContentType().isImage());
    }

    private String trimSubHeaderValue(String str) {
        String trim = str.trim();
        int length = trim.length();
        char charAt = trim.charAt(0);
        int i = (charAt == '\"' || charAt == '\'') ? 1 : 0;
        char charAt2 = trim.charAt(length - 1);
        if (charAt2 == '\"' || charAt2 == '\'') {
            length--;
        }
        return (i == 0 && length == trim.length()) ? trim : trim.substring(i, length);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public SMTPMessage getMessage() {
        return this.message;
    }
}
