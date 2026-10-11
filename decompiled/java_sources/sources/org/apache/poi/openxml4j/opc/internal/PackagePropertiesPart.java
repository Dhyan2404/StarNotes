package org.apache.poi.openxml4j.opc.internal;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Optional;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.InvalidOperationException;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageProperties;
import org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public final class PackagePropertiesPart extends PackagePart implements PackageProperties {
    private static final String[] DATE_FORMATS = {"yyyy-MM-dd'T'HH:mm:ss'Z'", "yyyy-MM-dd'T'HH:mm:ss.SS'Z'", "yyyy-MM-dd"};
    private static final String DEFAULT_DATEFORMAT = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    public static final String NAMESPACE_CP_URI = "http://schemas.openxmlformats.org/package/2006/metadata/core-properties";
    public static final String NAMESPACE_DCTERMS_URI = "http://purl.org/dc/terms/";
    public static final String NAMESPACE_DC_URI = "http://purl.org/dc/elements/1.1/";
    private final Pattern TIME_ZONE_PAT;
    private final String[] TZ_DATE_FORMATS;
    protected Optional<String> category;
    protected Optional<String> contentStatus;
    protected Optional<String> contentType;
    protected Optional<Date> created;
    protected Optional<String> creator;
    protected Optional<String> description;
    protected Optional<String> identifier;
    protected Optional<String> keywords;
    protected Optional<String> language;
    protected Optional<String> lastModifiedBy;
    protected Optional<Date> lastPrinted;
    protected Optional<Date> modified;
    protected Optional<String> revision;
    protected Optional<String> subject;
    protected Optional<String> title;
    protected Optional<String> version;

    public PackagePropertiesPart(OPCPackage oPCPackage, PackagePartName packagePartName) throws InvalidFormatException {
        super(oPCPackage, packagePartName, ContentTypes.CORE_PROPERTIES_PART);
        this.TZ_DATE_FORMATS = new String[]{"yyyy-MM-dd'T'HH:mm:ssz", "yyyy-MM-dd'T'HH:mm:ss.Sz", "yyyy-MM-dd'T'HH:mm:ss.SSz", "yyyy-MM-dd'T'HH:mm:ss.SSSz"};
        this.TIME_ZONE_PAT = Pattern.compile("([-+]\\d\\d):?(\\d\\d)");
        this.category = Optional.empty();
        this.contentStatus = Optional.empty();
        this.contentType = Optional.empty();
        this.created = Optional.empty();
        this.creator = Optional.empty();
        this.description = Optional.empty();
        this.identifier = Optional.empty();
        this.keywords = Optional.empty();
        this.language = Optional.empty();
        this.lastModifiedBy = Optional.empty();
        this.lastPrinted = Optional.empty();
        this.modified = Optional.empty();
        this.revision = Optional.empty();
        this.subject = Optional.empty();
        this.title = Optional.empty();
        this.version = Optional.empty();
    }

    private static String getDateValue(Optional<Date> optional) {
        return (String) optional.map(new Function() { // from class: com.sunia.HTREnginev2.qrk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String dateValue;
                dateValue = PackagePropertiesPart.getDateValue((Date) obj);
                return dateValue;
            }
        }).orElse("");
    }

    private static Date parseDateFormat(String[] strArr, String str) {
        for (String str2 : strArr) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2, Locale.ROOT);
            simpleDateFormat.setTimeZone(LocaleUtil.TIMEZONE_UTC);
            Date parse = simpleDateFormat.parse(str, new ParsePosition(0));
            if (parse != null) {
                return parse;
            }
        }
        return null;
    }

    private Optional<Date> parseDateValue(String str) throws InvalidFormatException {
        Date date;
        String str2;
        if (str == null || str.isEmpty()) {
            return Optional.empty();
        }
        Matcher matcher = this.TIME_ZONE_PAT.matcher(str);
        if (matcher.find()) {
            date = parseDateFormat(this.TZ_DATE_FORMATS, str.substring(0, matcher.start()) + matcher.group(1) + matcher.group(2));
        } else {
            date = null;
        }
        if (date == null) {
            if (str.endsWith(Constants.HASIDCALL_INDEX_SIG)) {
                str2 = str;
            } else {
                str2 = str + Constants.HASIDCALL_INDEX_SIG;
            }
            date = parseDateFormat(DATE_FORMATS, str2);
        }
        if (date != null) {
            return Optional.of(date);
        }
        throw new InvalidFormatException("Date " + str + " not well formatted, expected format in: " + ((String) Stream.of((Object[]) new String[][]{this.TZ_DATE_FORMATS, DATE_FORMATS}).flatMap(new Function() { // from class: com.sunia.HTREnginev2.rrk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Stream.of((Object[]) obj);
            }
        }).collect(Collectors.joining(", "))));
    }

    private Optional<String> parseStringValue(String str) {
        return (str == null || str.isEmpty()) ? Optional.empty() : Optional.of(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void close() {
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public void flush() {
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getCategoryProperty() {
        return this.category;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getContentStatusProperty() {
        return this.contentStatus;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getContentTypeProperty() {
        return this.contentType;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<Date> getCreatedProperty() {
        return this.created;
    }

    public String getCreatedPropertyString() {
        return getDateValue(this.created);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getCreatorProperty() {
        return this.creator;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getDescriptionProperty() {
        return this.description;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getIdentifierProperty() {
        return this.identifier;
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public InputStream getInputStreamImpl() {
        throw new InvalidOperationException("Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart");
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getKeywordsProperty() {
        return this.keywords;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getLanguageProperty() {
        return this.language;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getLastModifiedByProperty() {
        return this.lastModifiedBy;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<Date> getLastPrintedProperty() {
        return this.lastPrinted;
    }

    public String getLastPrintedPropertyString() {
        return getDateValue(this.lastPrinted);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<Date> getModifiedProperty() {
        return this.modified;
    }

    public String getModifiedPropertyString() {
        return getDateValue(this.modified);
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public OutputStream getOutputStreamImpl() {
        throw new InvalidOperationException("Can't use output stream to set properties !");
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getRevisionProperty() {
        return this.revision;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getSubjectProperty() {
        return this.subject;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getTitleProperty() {
        return this.title;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public Optional<String> getVersionProperty() {
        return this.version;
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public boolean load(InputStream inputStream) {
        throw new InvalidOperationException("Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart");
    }

    @Override // org.apache.poi.openxml4j.opc.PackagePart
    public boolean save(OutputStream outputStream) {
        throw new InvalidOperationException("Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart");
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setCategoryProperty(String str) {
        this.category = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setContentStatusProperty(String str) {
        this.contentStatus = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setContentTypeProperty(String str) {
        this.contentType = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setCreatedProperty(String str) throws InvalidFormatException {
        this.created = parseDateValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setCreatorProperty(String str) {
        this.creator = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setDescriptionProperty(String str) {
        this.description = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setIdentifierProperty(String str) {
        this.identifier = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setKeywordsProperty(String str) {
        this.keywords = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setLanguageProperty(String str) {
        this.language = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setLastModifiedByProperty(String str) {
        this.lastModifiedBy = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setLastPrintedProperty(String str) throws InvalidFormatException {
        this.lastPrinted = parseDateValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setModifiedProperty(String str) throws InvalidFormatException {
        this.modified = parseDateValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setRevisionProperty(Optional<String> optional) {
        this.revision = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setSubjectProperty(String str) {
        this.subject = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setTitleProperty(String str) {
        this.title = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setVersionProperty(String str) {
        this.version = parseStringValue(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getDateValue(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ROOT);
        simpleDateFormat.setTimeZone(LocaleUtil.TIMEZONE_UTC);
        return simpleDateFormat.format(date);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setCategoryProperty(Optional<String> optional) {
        this.category = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setContentStatusProperty(Optional<String> optional) {
        this.contentStatus = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setContentTypeProperty(Optional<String> optional) {
        this.contentType = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setCreatedProperty(Optional<Date> optional) {
        this.created = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setCreatorProperty(Optional<String> optional) {
        this.creator = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setDescriptionProperty(Optional<String> optional) {
        this.description = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setIdentifierProperty(Optional<String> optional) {
        this.identifier = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setKeywordsProperty(Optional<String> optional) {
        this.keywords = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setLanguageProperty(Optional<String> optional) {
        this.language = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setLastModifiedByProperty(Optional<String> optional) {
        this.lastModifiedBy = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setLastPrintedProperty(Optional<Date> optional) {
        this.lastPrinted = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setModifiedProperty(Optional<Date> optional) {
        this.modified = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setRevisionProperty(String str) {
        this.revision = parseStringValue(str);
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setSubjectProperty(Optional<String> optional) {
        this.subject = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setTitleProperty(Optional<String> optional) {
        this.title = optional;
    }

    @Override // org.apache.poi.openxml4j.opc.PackageProperties
    public void setVersionProperty(Optional<String> optional) {
        this.version = optional;
    }
}
