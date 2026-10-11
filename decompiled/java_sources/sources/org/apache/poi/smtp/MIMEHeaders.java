package org.apache.poi.smtp;

import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.util.CollectionUtils;

/* loaded from: classes12.dex */
public class MIMEHeaders {
    public static final String KEY_BOUNDARY = "boundary";
    public static final String KEY_CHARSET = "charset";
    public static final String KEY_CONTENT = "Content";
    public static final String KEY_CONTENT_BASE = "Content-Base";
    public static final String KEY_CONTENT_DESCRIPTION = "Content-Description";
    public static final String KEY_CONTENT_DISPOSITION = "Content-Disposition";
    public static final String KEY_CONTENT_ID = "Content-ID";
    public static final String KEY_CONTENT_LOCATION = "Content-Location";
    public static final String KEY_CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding";
    public static final String KEY_CONTENT_TYPE = "Content-Type";
    public static final String KEY_MIME_VERSION = "MIME-Version";
    public static final String KEY_TYPE = "type";
    private String contentBase;
    private String contentDescription;
    private String contentDisposition;
    private String contentID;
    private String contentLocation;
    private String mimeVersion;
    private ContentType contentType = ContentType.UNKNOWN;
    private ContentTransferEncoding encoding = ContentTransferEncoding.NONE;
    private Map<Object, Map<String, String>> subHeaders = new LinkedHashMap();

    public String getBoundary() {
        return getSubHeader(this.contentType, KEY_BOUNDARY);
    }

    public String getCharset() {
        return getSubHeader(this.contentType, "charset");
    }

    public String getContentBase() {
        return this.contentBase;
    }

    public String getContentDescription() {
        return this.contentDescription;
    }

    public String getContentDisposition() {
        return this.contentDisposition;
    }

    public String getContentID() {
        return this.contentID;
    }

    public String getContentLocation() {
        return this.contentLocation;
    }

    public ContentType getContentType() {
        return this.contentType;
    }

    public Map<String, String> getContentTypeSubHeaders() {
        return this.subHeaders.get(this.contentType);
    }

    public ContentTransferEncoding getEncoding() {
        return this.encoding;
    }

    public String getMimeVersion() {
        return this.mimeVersion;
    }

    public String getSubHeader(Object obj, Object obj2) {
        Map<String, String> map = this.subHeaders.get(obj);
        if (CollectionUtils.isNullOrEmpty(map)) {
            return null;
        }
        return map.get(obj2);
    }

    public Map<Object, Map<String, String>> getSubHeaders() {
        return this.subHeaders;
    }

    public String getSubType() {
        return getSubHeader(this.contentType, "type");
    }

    public void setContentBase(String str) {
        this.contentBase = str;
    }

    public void setContentDescription(String str) {
        this.contentDescription = str;
    }

    public void setContentDisposition(String str) {
        this.contentDisposition = str;
    }

    public void setContentID(String str) {
        this.contentID = str;
    }

    public void setContentLocation(String str) {
        this.contentLocation = str;
    }

    public void setContentType(ContentType contentType) {
        this.contentType = contentType;
    }

    public void setEncoding(ContentTransferEncoding contentTransferEncoding) {
        this.encoding = contentTransferEncoding;
    }

    public void setMimeVersion(String str) {
        this.mimeVersion = str;
    }

    public void setSubHeaders(Map<Object, Map<String, String>> map) {
        this.subHeaders = map;
    }

    public String toString() {
        return "MIMEHeaders{contentType=" + this.contentType + ", encoding=" + this.encoding + ", mimeVersion='" + this.mimeVersion + Chars.QUOTE + ", contentID='" + this.contentID + Chars.QUOTE + ", contentDescription='" + this.contentDescription + Chars.QUOTE + ", contentDisposition='" + this.contentDisposition + Chars.QUOTE + ", contentLocation='" + this.contentLocation + Chars.QUOTE + ", contentBase='" + this.contentBase + Chars.QUOTE + ", subHeaders=" + this.subHeaders + '}';
    }
}
