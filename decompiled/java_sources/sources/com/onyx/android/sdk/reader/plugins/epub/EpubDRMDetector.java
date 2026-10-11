package com.onyx.android.sdk.reader.plugins.epub;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ArraysKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.ZipUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipFile;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0013\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;", "", "", "epubPath", "", "detect", "filePath", "a", "Ljava/util/zip/ZipFile;", "zipFile", "", "e", "Lorg/w3c/dom/Document;", "doc", C6997f.f39671c, "d", "c", "b", Constants.HASIDCALL_INDEX_SIG, "enableImportFileDRMDetect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EpubDRMDetector {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: b */
    @NotNull
    public static final String f44929b = "META-INF/encryption.xml";

    /* renamed from: c */
    @NotNull
    public static final String f44930c = OnyxDecrypt.f44950e;

    /* renamed from: d */
    @NotNull
    public static final String f44931d = OnyxDecrypt.f44951f;

    /* renamed from: e */
    @NotNull
    public static final List<String> f44932e;

    /* renamed from: f */
    @NotNull
    public static final List<String> f44933f;

    /* renamed from: g */
    public static final int f44934g = 0;

    /* renamed from: h */
    public static final int f44935h;

    /* renamed from: i */
    public static final int f44936i;

    /* renamed from: j */
    public static final int f44937j;

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean enableImportFileDRMDetect = true;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;", "", "()V", "ENCRYPTED_NODE_NAME_LIST", "", "", "ENCRYPTION_ENTRY", "ENCRYPT_TYPE_ABODE", "", "getENCRYPT_TYPE_ABODE", "()I", "ENCRYPT_TYPE_NONE", "getENCRYPT_TYPE_NONE", "ENCRYPT_TYPE_ONYX", "getENCRYPT_TYPE_ONYX", "ENCRYPT_TYPE_OTHER", "getENCRYPT_TYPE_OTHER", "IMPORTANT_FILE_EXTENSION_LIST", "ONYX_ADDITIONAL_FILE_ENTRY_NAME", "ONYX_MANIFEST_FILE_ENTRY_NAME", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getENCRYPT_TYPE_ABODE() {
            return EpubDRMDetector.f44935h;
        }

        public final int getENCRYPT_TYPE_NONE() {
            return EpubDRMDetector.f44934g;
        }

        public final int getENCRYPT_TYPE_ONYX() {
            return EpubDRMDetector.f44936i;
        }

        public final int getENCRYPT_TYPE_OTHER() {
            return EpubDRMDetector.f44937j;
        }

        public Companion() {
        }
    }

    static {
        List<String> mutableListOf;
        List<String> mutableListOf2;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("EncryptionKey", "EncryptedKey");
        f44932e = mutableListOf;
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(".opf", ".ncx");
        f44933f = mutableListOf2;
        f44935h = 1;
        f44936i = 2;
        f44937j = 3;
    }

    /* renamed from: a */
    public final int m34722a(String filePath) {
        ZipFile zipFile;
        byte[] readEntryData;
        try {
            zipFile = new ZipFile(filePath);
            try {
                readEntryData = ZipUtils.INSTANCE.readEntryData(zipFile, f44929b);
            } finally {
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (ArraysKt.isNullOrEmpty(readEntryData)) {
            int i = m34726e(zipFile) ? f44936i : f44934g;
            CloseableKt.closeFinally(zipFile, null);
            return i;
        }
        Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(readEntryData));
        parse.getDocumentElement().normalize();
        if (parse.getDocumentElement().getNodeName().compareTo(CouchFieldKey.KEY_ENCRYPTION) != 0) {
            int i2 = f44934g;
            CloseableKt.closeFinally(zipFile, null);
            return i2;
        }
        Intrinsics.checkNotNull(parse);
        if (m34723b(parse)) {
            Debug.INSTANCE.m32044e(EpubDRMDetector.class, "open Adobe DRMed book failed!", new Object[0]);
            int i3 = f44935h;
            CloseableKt.closeFinally(zipFile, null);
            return i3;
        }
        if (!m34727f(parse)) {
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipFile, null);
            return f44934g;
        }
        Debug.INSTANCE.m32044e(EpubDRMDetector.class, "open failed, other DRM", new Object[0]);
        int i4 = f44937j;
        CloseableKt.closeFinally(zipFile, null);
        return i4;
    }

    /* renamed from: b */
    public final boolean m34723b(Document doc) {
        NodeList childNodes;
        Node namedItem;
        NodeList elementsByTagName = doc.getDocumentElement().getElementsByTagName("EncryptedData");
        if (elementsByTagName.getLength() > 0 && (childNodes = elementsByTagName.item(0).getChildNodes()) != null && childNodes.getLength() > 0) {
            int length = childNodes.getLength();
            for (int i = 0; i < length; i++) {
                if (childNodes.item(i).getNodeName().compareTo("KeyInfo") == 0) {
                    NodeList childNodes2 = childNodes.item(i).getChildNodes();
                    if (childNodes2 == null || childNodes.getLength() <= 0) {
                        return false;
                    }
                    int length2 = childNodes2.getLength();
                    for (int i2 = 0; i2 < length2; i2++) {
                        if (childNodes2.item(i2).getNodeName().compareTo("resource") == 0) {
                            Node item = childNodes2.item(i2);
                            if (item.getAttributes() != null && (namedItem = item.getAttributes().getNamedItem("xmlns")) != null && namedItem.getNodeValue().compareTo("http://ns.adobe.com/adept") == 0) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m34724c(Document doc) {
        NodeList elementsByTagName = doc.getDocumentElement().getElementsByTagName("*");
        if (elementsByTagName.getLength() == 0) {
            return false;
        }
        int length = elementsByTagName.getLength();
        for (int i = 0; i < length; i++) {
            Node item = elementsByTagName.item(i);
            Iterator<String> it2 = f44932e.iterator();
            while (it2.hasNext()) {
                if (StringKt.safelyContains(item.getNodeName(), it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    public final boolean m34725d(Document doc) {
        Node namedItem;
        boolean endsWith$default;
        NodeList elementsByTagName = doc.getDocumentElement().getElementsByTagName("*");
        if (elementsByTagName.getLength() == 0) {
            return false;
        }
        int length = elementsByTagName.getLength();
        for (int i = 0; i < length; i++) {
            Node item = elementsByTagName.item(i);
            if (StringKt.safelyContains(item.getNodeName(), "CipherReference") && (namedItem = item.getAttributes().getNamedItem("URI")) != null) {
                Debug.INSTANCE.m32035d(EpubDRMDetector.class, "CipherReference URI = " + namedItem.getNodeValue(), new Object[0]);
                for (String str : f44933f) {
                    String nodeValue = namedItem.getNodeValue();
                    Intrinsics.checkNotNullExpressionValue(nodeValue, "getNodeValue(...)");
                    String lowerCase = nodeValue.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(lowerCase, str, false, 2, null);
                    if (endsWith$default) {
                        Debug.INSTANCE.m32044e(EpubDRMDetector.class, "Important file is encrypted, " + namedItem.getNodeValue(), new Object[0]);
                        return true;
                    }
                }
            }
        }
        Debug.INSTANCE.m32059w(EpubDRMDetector.class, "Important file is decrypted, document can open.", new Object[0]);
        return false;
    }

    public final int detect(@NotNull String epubPath) {
        Intrinsics.checkNotNullParameter(epubPath, "epubPath");
        return m34722a(epubPath);
    }

    /* renamed from: e */
    public final boolean m34726e(ZipFile zipFile) throws IOException {
        ZipUtils zipUtils = ZipUtils.INSTANCE;
        String readEntryString = zipUtils.readEntryString(zipFile, f44930c);
        if (readEntryString == null || readEntryString.length() == 0) {
            return false;
        }
        return StringKt.isNotBlank(zipUtils.readEntryString(zipFile, f44931d));
    }

    /* renamed from: f */
    public final boolean m34727f(Document doc) {
        if (!m34724c(doc)) {
            return false;
        }
        Debug debug = Debug.INSTANCE;
        debug.m32044e(EpubDRMDetector.class, "containEncryptedKeyInfo", new Object[0]);
        if (this.enableImportFileDRMDetect) {
            return m34725d(doc);
        }
        debug.m32035d(EpubDRMDetector.class, "disable import file drm detect.", new Object[0]);
        return true;
    }
}
