package org.apache.poi.convert.smtp;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.convert.AbstractConverter;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.smtp.ContentTransferEncoding;
import org.apache.poi.smtp.ContentType;
import org.apache.poi.smtp.MIMEHeaders;
import org.apache.poi.smtp.MessageBodyPart;
import org.apache.poi.smtp.SMTPCodec;
import org.apache.poi.smtp.SMTPDocument;
import org.apache.poi.smtp.SMTPException;
import org.apache.poi.smtp.SMTPMessage;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/* loaded from: classes12.dex */
public class SMTPConverter extends AbstractConverter {
    private Map<ContentTransferEncoding, SMTPCodec> codecMap = new HashMap();
    private SMTPDocument smtpDocument;

    public SMTPConverter(SMTPDocument sMTPDocument) {
        this.smtpDocument = sMTPDocument;
    }

    private String getImageName(String str) {
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf >= 0 && lastIndexOf < str.length() - 1) {
            return str.substring(lastIndexOf + 1);
        }
        String computeMd5 = StringUtils.computeMd5(str);
        int lastIndexOf2 = str.lastIndexOf(".");
        if (lastIndexOf2 < 0) {
            return computeMd5;
        }
        return computeMd5 + str.substring(lastIndexOf2);
    }

    private SMTPCodec getSMTPCodec(ContentTransferEncoding contentTransferEncoding) {
        SMTPCodec sMTPCodec = this.codecMap.get(contentTransferEncoding);
        if (sMTPCodec != null) {
            return sMTPCodec;
        }
        SMTPCodec create = SMTPCodec.create(contentTransferEncoding);
        this.codecMap.put(contentTransferEncoding, create);
        return create;
    }

    private void parseTextBodyPart(Map<String, String> map, MessageBodyPart messageBodyPart, int i) {
        if (messageBodyPart.getContent() == null) {
            throw new SMTPException("Message body content is null");
        }
        MIMEHeaders headers = messageBodyPart.getHeaders();
        String charset = headers.getCharset();
        if (charset == null) {
            charset = StandardCharsets.UTF_8.name();
        }
        try {
            String content = messageBodyPart.getContent();
            if (headers.getEncoding() != ContentTransferEncoding.NONE) {
                content = new String(getSMTPCodec(headers.getEncoding()).decode(content), StandardCharsets.UTF_8);
            }
            String replaceImageUrl = replaceImageUrl(map, content);
            Document parse = StandardCharsets.UTF_8.name().equalsIgnoreCase(charset) ? Jsoup.parse(replaceImageUrl) : Jsoup.parse(new ByteArrayInputStream(replaceImageUrl.getBytes(StandardCharsets.UTF_8)), charset, "");
            this.documentList.add(parse);
            this.documentMap.put(documentName(i + 1), parse);
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
        }
    }

    private void processImageBodyPart(Map<String, String> map, MessageBodyPart messageBodyPart) {
        MIMEHeaders headers = messageBodyPart.getHeaders();
        SMTPCodec sMTPCodec = getSMTPCodec(headers.getEncoding());
        ContentType contentType = headers.getContentType();
        try {
            String contentLocation = headers.getContentLocation();
            SMTPPicture sMTPPicture = new SMTPPicture(sMTPCodec.decode(messageBodyPart.getContent()), contentType.getName(), getImageName(contentLocation));
            if (WordToHtmlUtils.isNull(this.picturesManager)) {
                return;
            }
            map.put(contentLocation, this.picturesManager.processPicture(sMTPPicture));
        } catch (Exception e) {
            throw new SMTPException(e);
        }
    }

    private void processImageBodyParts(Map<String, String> map, List<MessageBodyPart> list) {
        if (this.picturesManager == null) {
            return;
        }
        for (MessageBodyPart messageBodyPart : list) {
            if (messageBodyPart.getHeaders().getContentType().isImage()) {
                processImageBodyPart(map, messageBodyPart);
            }
        }
    }

    private void processStylePart(Map<String, String> map, MessageBodyPart messageBodyPart) {
        MIMEHeaders headers = messageBodyPart.getHeaders();
        String contentLocation = headers.getContentLocation();
        String content = messageBodyPart.getContent();
        if (headers.getEncoding() != ContentTransferEncoding.NONE) {
            try {
                content = new String(getSMTPCodec(headers.getEncoding()).decode(content), StandardCharsets.UTF_8);
            } catch (Exception e) {
                throw new SMTPException(e);
            }
        }
        addHtmlDocumentStyle(content);
        map.put(contentLocation, this.styleList.get(r4.size() - 1).getName());
    }

    private void processStyleParts(Map<String, String> map, List<MessageBodyPart> list) {
        for (MessageBodyPart messageBodyPart : list) {
            if (messageBodyPart.getHeaders().getContentType().isStyle()) {
                processStylePart(map, messageBodyPart);
            }
        }
    }

    private String replaceImageUrl(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            str = str.replaceAll(entry.getKey(), entry.getValue());
        }
        return str;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.smtpDocument);
        this.codecMap.clear();
        this.smtpDocument = null;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void convert() {
        SMTPMessage message = this.smtpDocument.getMessage();
        MIMEHeaders headers = message.getHeaders();
        String subType = headers.getSubType();
        ContentType fromName = ContentType.fromName(subType);
        if (fromName != ContentType.TEXT_HTML) {
            throw new SMTPException(String.format("Unsupported content type: %s-%s", headers.getContentType(), subType));
        }
        List<MessageBodyPart> parts = message.getParts(fromName);
        if (parts.isEmpty()) {
            throw new SMTPException("No text message body");
        }
        HashMap hashMap = new HashMap();
        processImageBodyParts(hashMap, message.getBodyParts());
        processStyleParts(hashMap, message.getBodyParts());
        for (int i = 0; i < parts.size(); i++) {
            parseTextBodyPart(hashMap, parts.get(i), i);
        }
    }
}
