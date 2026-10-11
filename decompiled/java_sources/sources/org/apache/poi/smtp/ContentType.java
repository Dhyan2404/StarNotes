package org.apache.poi.smtp;

import com.caverock.androidsvg.CSSParser;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import java.util.Locale;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.util.StringUtils;
import org.mortbay.jetty.MimeTypes;

/* loaded from: classes12.dex */
public enum ContentType {
    APPLICATION_CALS_1840("application/cals-1840"),
    APPLICATION_MARC("application/cals-1840"),
    APPLICATION_NEWS_MESSAGE_ID("application/news-message-id"),
    APPLICATION_NEWS_TRANSMISSION("application/news-transmission"),
    APPLICATION_OCTET_STREAM("application/octet-stream"),
    APPLICATION_ODA("application/oda"),
    APPLICATION_PGP_ENCRYPTED("application/pgp-encrypted"),
    APPLICATION_PGP_KEYS("application/pgp-keys"),
    APPLICATION_PGP_SIGNATURE("application/pgp-signature"),
    APPLICATION_PKCS7_MIME("application/pkcs7-MIME"),
    APPLICATION_PKCS7_SIGNATURE("application/pkcs7-signature"),
    APPLICATION_PKCS10("application/pkcs10"),
    APPLICATION_POSTSCRIPT("application/postscript"),
    APPLICATION_REMOTE_PRINTING("application/remote-printing"),
    APPLICATION_SGML("application/sgml"),
    APPLICATION_X400_BP("application/x400-bp"),
    IMAGE_G3FAX("image/g3fax"),
    IMAGE_GIF("image/gif"),
    IMAGE_IEF("image/ief"),
    IMAGE_JPEG("image/jpeg"),
    IMAGE_JPG("image/jpg"),
    IMAGE_TIFF(ContentTypes.IMAGE_TIFF),
    MESSAGE_DELIVERY_STATUS("message/delivery-status"),
    MESSAGE_DISPOSITION_NOTIFICATION_TO("message/disposition-notification-to"),
    MESSAGE_EXTERNAL_BODY("message/external-body"),
    MESSAGE_HTTP(MimeTypes.MESSAGE_HTTP),
    MESSAGE_PARTIAL("message/partial"),
    MESSAGE_RFC822("message/rfc822"),
    MULTIPART_ALTERNATIVE("multipart/alternative"),
    MULTIPART_BYTERANGES(MimeTypes.MULTIPART_BYTERANGES),
    MULTIPART_DIGEST("multipart/digest"),
    MULTIPART_FORMDATA("multipart/form-data"),
    MULTIPART_MIXED("multipart/mixed"),
    MULTIPART_PARALLEL("multipart/parallel"),
    MULTIPART_RELATED("multipart/related"),
    TEXT_ENRICHED("text/enriched"),
    TEXT_HTML("text/html"),
    TEXT_PLAIN("text/plain"),
    TEXT_STYLE(CSSParser.f15748e),
    TEXT_RFC822_HEADERS("text/rfc822-headers"),
    TEXT_RICHTEXT("text/richtext"),
    TEXT_SGML("text/sgml"),
    AUDIO_32KADPCM("audio/32kadpcm"),
    AUDIO_BASIC("audio/basic"),
    VIDEO_MPEG(com.google.android.exoplayer2.util.MimeTypes.VIDEO_MPEG),
    UNKNOWN("unknown");

    private String name;

    ContentType(String str) {
        this.name = str;
    }

    public static ContentType fromName(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return UNKNOWN;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        for (ContentType contentType : values()) {
            if (contentType.name.equals(lowerCase)) {
                return contentType;
            }
        }
        return UNKNOWN;
    }

    public String getName() {
        return this.name;
    }

    public boolean isApplication() {
        return this.name.startsWith("application/");
    }

    public boolean isAudio() {
        return this.name.startsWith(FileExtensionUtils.AUDIO_PREFIX);
    }

    public boolean isImage() {
        return this.name.startsWith(FileExtensionUtils.IMAGE_PREFIX);
    }

    public boolean isMessage() {
        return this.name.startsWith("message/");
    }

    public boolean isMultipart() {
        return this.name.startsWith("multipart/");
    }

    public boolean isStyle() {
        return this == TEXT_STYLE;
    }

    public boolean isText() {
        return this.name.startsWith("text/");
    }

    public boolean isVideo() {
        return this == VIDEO_MPEG;
    }
}
