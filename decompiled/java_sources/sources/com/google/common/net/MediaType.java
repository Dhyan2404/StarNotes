package com.google.common.net;

import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.net.MediaType;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sunia.HTREnginev2.mnf;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

@Immutable
@mnf
@GwtCompatible
/* loaded from: classes6.dex */
public final class MediaType {

    /* renamed from: g */
    public static final String f35029g = "charset";

    /* renamed from: l */
    public static final String f35034l = "application";

    /* renamed from: m */
    public static final String f35035m = "audio";

    /* renamed from: n */
    public static final String f35036n = "image";

    /* renamed from: o */
    public static final String f35037o = "text";

    /* renamed from: p */
    public static final String f35038p = "video";

    /* renamed from: q */
    public static final String f35039q = "font";

    /* renamed from: r */
    public static final String f35040r = "*";

    /* renamed from: a */
    public final String f35043a;

    /* renamed from: b */
    public final String f35044b;

    /* renamed from: c */
    public final ImmutableListMultimap<String, String> f35045c;

    /* renamed from: d */
    @CheckForNull
    @LazyInit
    public String f35046d;

    /* renamed from: e */
    @LazyInit
    public int f35047e;

    /* renamed from: f */
    @CheckForNull
    @LazyInit
    public Optional<Charset> f35048f;

    /* renamed from: h */
    public static final ImmutableListMultimap<String, String> f35030h = ImmutableListMultimap.m26178of("charset", Ascii.toLowerCase(Charsets.UTF_8.name()));

    /* renamed from: i */
    public static final CharMatcher f35031i = CharMatcher.ascii().and(CharMatcher.javaIsoControl().negate()).and(CharMatcher.isNot(' ')).and(CharMatcher.noneOf("()<>@,;:\\\"/[]?="));

    /* renamed from: j */
    public static final CharMatcher f35032j = CharMatcher.ascii().and(CharMatcher.noneOf("\"\\\r"));

    /* renamed from: k */
    public static final CharMatcher f35033k = CharMatcher.anyOf(" \t\r\n");

    /* renamed from: s */
    public static final Map<MediaType, MediaType> f35041s = Maps.newHashMap();
    public static final MediaType ANY_TYPE = m27333g("*", "*");
    public static final MediaType ANY_TEXT_TYPE = m27333g("text", "*");
    public static final MediaType ANY_IMAGE_TYPE = m27333g("image", "*");
    public static final MediaType ANY_AUDIO_TYPE = m27333g("audio", "*");
    public static final MediaType ANY_VIDEO_TYPE = m27333g("video", "*");
    public static final MediaType ANY_APPLICATION_TYPE = m27333g("application", "*");
    public static final MediaType ANY_FONT_TYPE = m27333g("font", "*");
    public static final MediaType CACHE_MANIFEST_UTF_8 = m27334h("text", "cache-manifest");
    public static final MediaType CSS_UTF_8 = m27334h("text", "css");
    public static final MediaType CSV_UTF_8 = m27334h("text", "csv");
    public static final MediaType HTML_UTF_8 = m27334h("text", "html");
    public static final MediaType I_CALENDAR_UTF_8 = m27334h("text", SyncConstant.KCALENDAR_OSS_DIR);
    public static final MediaType PLAIN_TEXT_UTF_8 = m27334h("text", "plain");
    public static final MediaType TEXT_JAVASCRIPT_UTF_8 = m27334h("text", "javascript");
    public static final MediaType TSV_UTF_8 = m27334h("text", "tab-separated-values");
    public static final MediaType VCARD_UTF_8 = m27334h("text", "vcard");
    public static final MediaType WML_UTF_8 = m27334h("text", "vnd.wap.wml");
    public static final MediaType XML_UTF_8 = m27334h("text", "xml");
    public static final MediaType VTT_UTF_8 = m27334h("text", "vtt");
    public static final MediaType BMP = m27333g("image", FileTypeConstant.BMP);
    public static final MediaType CRW = m27333g("image", "x-canon-crw");
    public static final MediaType GIF = m27333g("image", "gif");
    public static final MediaType ICO = m27333g("image", "vnd.microsoft.icon");
    public static final MediaType JPEG = m27333g("image", "jpeg");
    public static final MediaType PNG = m27333g("image", "png");
    public static final MediaType PSD = m27333g("image", "vnd.adobe.photoshop");
    public static final MediaType SVG_UTF_8 = m27334h("image", "svg+xml");
    public static final MediaType TIFF = m27333g("image", "tiff");
    public static final MediaType WEBP = m27333g("image", "webp");
    public static final MediaType HEIF = m27333g("image", "heif");
    public static final MediaType JP2K = m27333g("image", "jp2");
    public static final MediaType MP4_AUDIO = m27333g("audio", FileTypeConstant.MP4);
    public static final MediaType MPEG_AUDIO = m27333g("audio", FileTypeConstant.MPEG);
    public static final MediaType OGG_AUDIO = m27333g("audio", "ogg");
    public static final MediaType WEBM_AUDIO = m27333g("audio", MatroskaExtractor.f23794h0);
    public static final MediaType L16_AUDIO = m27333g("audio", "l16");
    public static final MediaType L24_AUDIO = m27333g("audio", "l24");
    public static final MediaType BASIC_AUDIO = m27333g("audio", "basic");
    public static final MediaType AAC_AUDIO = m27333g("audio", "aac");
    public static final MediaType VORBIS_AUDIO = m27333g("audio", "vorbis");
    public static final MediaType WMA_AUDIO = m27333g("audio", "x-ms-wma");
    public static final MediaType WAX_AUDIO = m27333g("audio", "x-ms-wax");
    public static final MediaType VND_REAL_AUDIO = m27333g("audio", "vnd.rn-realaudio");
    public static final MediaType VND_WAVE_AUDIO = m27333g("audio", "vnd.wave");
    public static final MediaType MP4_VIDEO = m27333g("video", FileTypeConstant.MP4);
    public static final MediaType MPEG_VIDEO = m27333g("video", FileTypeConstant.MPEG);
    public static final MediaType OGG_VIDEO = m27333g("video", "ogg");
    public static final MediaType QUICKTIME = m27333g("video", "quicktime");
    public static final MediaType WEBM_VIDEO = m27333g("video", MatroskaExtractor.f23794h0);
    public static final MediaType WMV = m27333g("video", "x-ms-wmv");
    public static final MediaType FLV_VIDEO = m27333g("video", "x-flv");
    public static final MediaType THREE_GPP_VIDEO = m27333g("video", "3gpp");
    public static final MediaType THREE_GPP2_VIDEO = m27333g("video", "3gpp2");
    public static final MediaType APPLICATION_XML_UTF_8 = m27334h("application", "xml");
    public static final MediaType ATOM_UTF_8 = m27334h("application", "atom+xml");
    public static final MediaType BZIP2 = m27333g("application", "x-bzip2");
    public static final MediaType DART_UTF_8 = m27334h("application", "dart");
    public static final MediaType APPLE_PASSBOOK = m27333g("application", "vnd.apple.pkpass");
    public static final MediaType EOT = m27333g("application", "vnd.ms-fontobject");
    public static final MediaType EPUB = m27333g("application", "epub+zip");
    public static final MediaType FORM_DATA = m27333g("application", "x-www-form-urlencoded");
    public static final MediaType KEY_ARCHIVE = m27333g("application", "pkcs12");
    public static final MediaType APPLICATION_BINARY = m27333g("application", "binary");
    public static final MediaType GEO_JSON = m27333g("application", "geo+json");
    public static final MediaType GZIP = m27333g("application", "x-gzip");
    public static final MediaType HAL_JSON = m27333g("application", "hal+json");
    public static final MediaType JAVASCRIPT_UTF_8 = m27334h("application", "javascript");
    public static final MediaType JOSE = m27333g("application", "jose");
    public static final MediaType JOSE_JSON = m27333g("application", "jose+json");
    public static final MediaType JSON_UTF_8 = m27334h("application", "json");
    public static final MediaType MANIFEST_JSON_UTF_8 = m27334h("application", "manifest+json");
    public static final MediaType KML = m27333g("application", "vnd.google-earth.kml+xml");
    public static final MediaType KMZ = m27333g("application", "vnd.google-earth.kmz");
    public static final MediaType MBOX = m27333g("application", "mbox");
    public static final MediaType APPLE_MOBILE_CONFIG = m27333g("application", "x-apple-aspen-config");
    public static final MediaType MICROSOFT_EXCEL = m27333g("application", "vnd.ms-excel");
    public static final MediaType MICROSOFT_OUTLOOK = m27333g("application", "vnd.ms-outlook");
    public static final MediaType MICROSOFT_POWERPOINT = m27333g("application", "vnd.ms-powerpoint");
    public static final MediaType MICROSOFT_WORD = m27333g("application", "msword");
    public static final MediaType MEDIA_PRESENTATION_DESCRIPTION = m27333g("application", "dash+xml");
    public static final MediaType WASM_APPLICATION = m27333g("application", "wasm");
    public static final MediaType NACL_APPLICATION = m27333g("application", "x-nacl");
    public static final MediaType NACL_PORTABLE_APPLICATION = m27333g("application", "x-pnacl");
    public static final MediaType OCTET_STREAM = m27333g("application", "octet-stream");
    public static final MediaType OGG_CONTAINER = m27333g("application", "ogg");
    public static final MediaType OOXML_DOCUMENT = m27333g("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final MediaType OOXML_PRESENTATION = m27333g("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final MediaType OOXML_SHEET = m27333g("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final MediaType OPENDOCUMENT_GRAPHICS = m27333g("application", "vnd.oasis.opendocument.graphics");
    public static final MediaType OPENDOCUMENT_PRESENTATION = m27333g("application", "vnd.oasis.opendocument.presentation");
    public static final MediaType OPENDOCUMENT_SPREADSHEET = m27333g("application", "vnd.oasis.opendocument.spreadsheet");
    public static final MediaType OPENDOCUMENT_TEXT = m27333g("application", "vnd.oasis.opendocument.text");
    public static final MediaType OPENSEARCH_DESCRIPTION_UTF_8 = m27334h("application", "opensearchdescription+xml");
    public static final MediaType PDF = m27333g("application", "pdf");
    public static final MediaType POSTSCRIPT = m27333g("application", "postscript");
    public static final MediaType PROTOBUF = m27333g("application", "protobuf");
    public static final MediaType RDF_XML_UTF_8 = m27334h("application", "rdf+xml");
    public static final MediaType RTF_UTF_8 = m27334h("application", FileTypeConstant.RTF);
    public static final MediaType SFNT = m27333g("application", "font-sfnt");
    public static final MediaType SHOCKWAVE_FLASH = m27333g("application", "x-shockwave-flash");
    public static final MediaType SKETCHUP = m27333g("application", "vnd.sketchup.skp");
    public static final MediaType SOAP_XML_UTF_8 = m27334h("application", "soap+xml");
    public static final MediaType TAR = m27333g("application", "x-tar");
    public static final MediaType WOFF = m27333g("application", "font-woff");
    public static final MediaType WOFF2 = m27333g("application", "font-woff2");
    public static final MediaType XHTML_UTF_8 = m27334h("application", "xhtml+xml");
    public static final MediaType XRD_UTF_8 = m27334h("application", "xrd+xml");
    public static final MediaType ZIP = m27333g("application", "zip");
    public static final MediaType FONT_COLLECTION = m27333g("font", "collection");
    public static final MediaType FONT_OTF = m27333g("font", "otf");
    public static final MediaType FONT_SFNT = m27333g("font", "sfnt");
    public static final MediaType FONT_TTF = m27333g("font", "ttf");
    public static final MediaType FONT_WOFF = m27333g("font", "woff");
    public static final MediaType FONT_WOFF2 = m27333g("font", "woff2");

    /* renamed from: t */
    public static final Joiner.MapJoiner f35042t = Joiner.m25799on("; ").withKeyValueSeparator("=");

    /* renamed from: com.google.common.net.MediaType$a */
    /* loaded from: classes6.dex */
    public static final class C6252a {

        /* renamed from: a */
        public final String f35049a;

        /* renamed from: b */
        public int f35050b = 0;

        public C6252a(String str) {
            this.f35049a = str;
        }

        @CanIgnoreReturnValue
        /* renamed from: a */
        public char m27346a(char c) {
            Preconditions.checkState(m27350e());
            Preconditions.checkState(m27351f() == c);
            this.f35050b++;
            return c;
        }

        /* renamed from: b */
        public char m27347b(CharMatcher charMatcher) {
            Preconditions.checkState(m27350e());
            char m27351f = m27351f();
            Preconditions.checkState(charMatcher.matches(m27351f));
            this.f35050b++;
            return m27351f;
        }

        /* renamed from: c */
        public String m27348c(CharMatcher charMatcher) {
            int i = this.f35050b;
            String m27349d = m27349d(charMatcher);
            Preconditions.checkState(this.f35050b != i);
            return m27349d;
        }

        @CanIgnoreReturnValue
        /* renamed from: d */
        public String m27349d(CharMatcher charMatcher) {
            Preconditions.checkState(m27350e());
            int i = this.f35050b;
            this.f35050b = charMatcher.negate().indexIn(this.f35049a, i);
            return m27350e() ? this.f35049a.substring(i, this.f35050b) : this.f35049a.substring(i);
        }

        /* renamed from: e */
        public boolean m27350e() {
            int i = this.f35050b;
            return i >= 0 && i < this.f35049a.length();
        }

        /* renamed from: f */
        public char m27351f() {
            Preconditions.checkState(m27350e());
            return this.f35049a.charAt(this.f35050b);
        }
    }

    public MediaType(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.f35043a = str;
        this.f35044b = str2;
        this.f35045c = immutableListMultimap;
    }

    /* renamed from: b */
    public static MediaType m27329b(MediaType mediaType) {
        f35041s.put(mediaType, mediaType);
        return mediaType;
    }

    public static MediaType create(String str, String str2) {
        MediaType m27330d = m27330d(str, str2, ImmutableListMultimap.m26177of());
        m27330d.f35048f = Optional.absent();
        return m27330d;
    }

    /* renamed from: d */
    public static MediaType m27330d(String str, String str2, Multimap<String, String> multimap) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(multimap);
        String m27342p = m27342p(str);
        String m27342p2 = m27342p(str2);
        Preconditions.checkArgument(!"*".equals(m27342p) || "*".equals(m27342p2), "A wildcard type cannot be used with a non-wildcard subtype");
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        for (Map.Entry<String, String> entry : multimap.entries()) {
            String m27342p3 = m27342p(entry.getKey());
            builder.put((ImmutableListMultimap.Builder) m27342p3, m27341o(m27342p3, entry.getValue()));
        }
        MediaType mediaType = new MediaType(m27342p, m27342p2, builder.build());
        return (MediaType) MoreObjects.firstNonNull(f35041s.get(mediaType), mediaType);
    }

    /* renamed from: e */
    public static MediaType m27331e(String str) {
        return create("application", str);
    }

    /* renamed from: f */
    public static MediaType m27332f(String str) {
        return create("audio", str);
    }

    /* renamed from: g */
    public static MediaType m27333g(String str, String str2) {
        MediaType m27329b = m27329b(new MediaType(str, str2, ImmutableListMultimap.m26177of()));
        m27329b.f35048f = Optional.absent();
        return m27329b;
    }

    /* renamed from: h */
    public static MediaType m27334h(String str, String str2) {
        MediaType m27329b = m27329b(new MediaType(str, str2, f35030h));
        m27329b.f35048f = Optional.m25808of(Charsets.UTF_8);
        return m27329b;
    }

    /* renamed from: i */
    public static MediaType m27335i(String str) {
        return create("font", str);
    }

    /* renamed from: j */
    public static MediaType m27336j(String str) {
        return create("image", str);
    }

    /* renamed from: k */
    public static MediaType m27337k(String str) {
        return create("text", str);
    }

    /* renamed from: l */
    public static MediaType m27338l(String str) {
        return create("video", str);
    }

    /* renamed from: m */
    public static String m27339m(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append('\"');
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\r' || charAt == '\\' || charAt == '\"') {
                sb.append('\\');
            }
            sb.append(charAt);
        }
        sb.append('\"');
        return sb.toString();
    }

    /* renamed from: n */
    public static /* synthetic */ String m27340n(String str) {
        return (!f35031i.matchesAllOf(str) || str.isEmpty()) ? m27339m(str) : str;
    }

    /* renamed from: o */
    public static String m27341o(String str, String str2) {
        Preconditions.checkNotNull(str2);
        Preconditions.checkArgument(CharMatcher.ascii().matchesAllOf(str2), "parameter values must be ASCII: %s", str2);
        return "charset".equals(str) ? Ascii.toLowerCase(str2) : str2;
    }

    /* renamed from: p */
    public static String m27342p(String str) {
        Preconditions.checkArgument(f35031i.matchesAllOf(str));
        Preconditions.checkArgument(!str.isEmpty());
        return Ascii.toLowerCase(str);
    }

    @CanIgnoreReturnValue
    public static MediaType parse(String str) {
        String m27348c;
        Preconditions.checkNotNull(str);
        C6252a c6252a = new C6252a(str);
        try {
            CharMatcher charMatcher = f35031i;
            String m27348c2 = c6252a.m27348c(charMatcher);
            c6252a.m27346a('/');
            String m27348c3 = c6252a.m27348c(charMatcher);
            ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
            while (c6252a.m27350e()) {
                CharMatcher charMatcher2 = f35033k;
                c6252a.m27349d(charMatcher2);
                c6252a.m27346a(';');
                c6252a.m27349d(charMatcher2);
                CharMatcher charMatcher3 = f35031i;
                String m27348c4 = c6252a.m27348c(charMatcher3);
                c6252a.m27346a('=');
                if ('\"' == c6252a.m27351f()) {
                    c6252a.m27346a('\"');
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != c6252a.m27351f()) {
                        if ('\\' == c6252a.m27351f()) {
                            c6252a.m27346a('\\');
                            sb.append(c6252a.m27347b(CharMatcher.ascii()));
                        } else {
                            sb.append(c6252a.m27348c(f35032j));
                        }
                    }
                    m27348c = sb.toString();
                    c6252a.m27346a('\"');
                } else {
                    m27348c = c6252a.m27348c(charMatcher3);
                }
                builder.put((ImmutableListMultimap.Builder) m27348c4, m27348c);
            }
            return m27330d(m27348c2, m27348c3, builder.build());
        } catch (IllegalStateException e) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 18);
            sb2.append("Could not parse '");
            sb2.append(str);
            sb2.append(CloudStorageConstants.SINGLE_QUOTES);
            throw new IllegalArgumentException(sb2.toString(), e);
        }
    }

    /* renamed from: c */
    public final String m27343c() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f35043a);
        sb.append('/');
        sb.append(this.f35044b);
        if (!this.f35045c.isEmpty()) {
            sb.append("; ");
            f35042t.appendTo(sb, Multimaps.transformValues((ListMultimap) this.f35045c, new Function() { // from class: com.sunia.HTREnginev2.vlj
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    String m27340n;
                    m27340n = MediaType.m27340n((String) obj);
                    return m27340n;
                }
            }).entries());
        }
        return sb.toString();
    }

    public Optional<Charset> charset() {
        Optional<Charset> optional = this.f35048f;
        if (optional == null) {
            optional = Optional.absent();
            UnmodifiableIterator<String> it2 = this.f35045c.get((ImmutableListMultimap<String, String>) "charset").iterator();
            String str = null;
            while (it2.hasNext()) {
                String next = it2.next();
                if (str == null) {
                    optional = Optional.m25808of(Charset.forName(next));
                    str = next;
                } else if (!str.equals(next)) {
                    StringBuilder sb = new StringBuilder(str.length() + 35 + String.valueOf(next).length());
                    sb.append("Multiple charset values defined: ");
                    sb.append(str);
                    sb.append(", ");
                    sb.append(next);
                    throw new IllegalStateException(sb.toString());
                }
            }
            this.f35048f = optional;
        }
        return optional;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        return this.f35043a.equals(mediaType.f35043a) && this.f35044b.equals(mediaType.f35044b) && m27345q().equals(mediaType.m27345q());
    }

    public boolean hasWildcard() {
        return "*".equals(this.f35043a) || "*".equals(this.f35044b);
    }

    public int hashCode() {
        int i = this.f35047e;
        if (i != 0) {
            return i;
        }
        int hashCode = Objects.hashCode(this.f35043a, this.f35044b, m27345q());
        this.f35047e = hashCode;
        return hashCode;
    }

    /* renamed from: is */
    public boolean m27344is(MediaType mediaType) {
        return (mediaType.f35043a.equals("*") || mediaType.f35043a.equals(this.f35043a)) && (mediaType.f35044b.equals("*") || mediaType.f35044b.equals(this.f35044b)) && this.f35045c.entries().containsAll(mediaType.f35045c.entries());
    }

    public ImmutableListMultimap<String, String> parameters() {
        return this.f35045c;
    }

    /* renamed from: q */
    public final Map<String, ImmutableMultiset<String>> m27345q() {
        return Maps.transformValues(this.f35045c.asMap(), new Function() { // from class: com.sunia.HTREnginev2.ulj
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                return ImmutableMultiset.copyOf((Collection) obj);
            }
        });
    }

    public String subtype() {
        return this.f35044b;
    }

    public String toString() {
        String str = this.f35046d;
        if (str != null) {
            return str;
        }
        String m27343c = m27343c();
        this.f35046d = m27343c;
        return m27343c;
    }

    public String type() {
        return this.f35043a;
    }

    public MediaType withCharset(Charset charset) {
        Preconditions.checkNotNull(charset);
        MediaType withParameter = withParameter("charset", charset.name());
        withParameter.f35048f = Optional.m25808of(charset);
        return withParameter;
    }

    public MediaType withParameter(String str, String str2) {
        return withParameters(str, ImmutableSet.m26235of(str2));
    }

    public MediaType withParameters(Multimap<String, String> multimap) {
        return m27330d(this.f35043a, this.f35044b, multimap);
    }

    public MediaType withoutParameters() {
        return this.f35045c.isEmpty() ? this : create(this.f35043a, this.f35044b);
    }

    public MediaType withParameters(String str, Iterable<String> iterable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(iterable);
        String m27342p = m27342p(str);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        UnmodifiableIterator<Map.Entry<String, String>> it2 = this.f35045c.entries().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, String> next = it2.next();
            String key = next.getKey();
            if (!m27342p.equals(key)) {
                builder.put((ImmutableListMultimap.Builder) key, next.getValue());
            }
        }
        Iterator<String> it3 = iterable.iterator();
        while (it3.hasNext()) {
            builder.put((ImmutableListMultimap.Builder) m27342p, m27341o(m27342p, it3.next()));
        }
        MediaType mediaType = new MediaType(this.f35043a, this.f35044b, builder.build());
        if (!m27342p.equals("charset")) {
            mediaType.f35048f = this.f35048f;
        }
        return (MediaType) MoreObjects.firstNonNull(f35041s.get(mediaType), mediaType);
    }
}
