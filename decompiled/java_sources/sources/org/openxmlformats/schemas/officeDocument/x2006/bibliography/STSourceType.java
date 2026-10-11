package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public interface STSourceType extends STString {
    public static final Enum ART;
    public static final Enum ARTICLE_IN_A_PERIODICAL;
    public static final Enum BOOK;
    public static final Enum BOOK_SECTION;
    public static final Enum CASE;
    public static final Enum CONFERENCE_PROCEEDINGS;
    public static final Enum DOCUMENT_FROM_INTERNET_SITE;
    public static final Enum ELECTRONIC_SOURCE;
    public static final Enum FILM;
    public static final SimpleTypeFactory<STSourceType> Factory;
    public static final Enum INTERNET_SITE;
    public static final Enum INTERVIEW;
    public static final int INT_ART = 9;
    public static final int INT_ARTICLE_IN_A_PERIODICAL = 1;
    public static final int INT_BOOK = 2;
    public static final int INT_BOOK_SECTION = 3;
    public static final int INT_CASE = 16;
    public static final int INT_CONFERENCE_PROCEEDINGS = 5;
    public static final int INT_DOCUMENT_FROM_INTERNET_SITE = 10;
    public static final int INT_ELECTRONIC_SOURCE = 15;
    public static final int INT_FILM = 12;
    public static final int INT_INTERNET_SITE = 11;
    public static final int INT_INTERVIEW = 13;
    public static final int INT_JOURNAL_ARTICLE = 4;
    public static final int INT_MISC = 17;
    public static final int INT_PATENT = 14;
    public static final int INT_PERFORMANCE = 8;
    public static final int INT_REPORT = 6;
    public static final int INT_SOUND_RECORDING = 7;
    public static final Enum JOURNAL_ARTICLE;
    public static final Enum MISC;
    public static final Enum PATENT;
    public static final Enum PERFORMANCE;
    public static final Enum REPORT;
    public static final Enum SOUND_RECORDING;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ART = 9;
        static final int INT_ARTICLE_IN_A_PERIODICAL = 1;
        static final int INT_BOOK = 2;
        static final int INT_BOOK_SECTION = 3;
        static final int INT_CASE = 16;
        static final int INT_CONFERENCE_PROCEEDINGS = 5;
        static final int INT_DOCUMENT_FROM_INTERNET_SITE = 10;
        static final int INT_ELECTRONIC_SOURCE = 15;
        static final int INT_FILM = 12;
        static final int INT_INTERNET_SITE = 11;
        static final int INT_INTERVIEW = 13;
        static final int INT_JOURNAL_ARTICLE = 4;
        static final int INT_MISC = 17;
        static final int INT_PATENT = 14;
        static final int INT_PERFORMANCE = 8;
        static final int INT_REPORT = 6;
        static final int INT_SOUND_RECORDING = 7;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("ArticleInAPeriodical", 1), new Enum(InternalWorkbook.OLD_WORKBOOK_DIR_ENTRY_NAME, 2), new Enum("BookSection", 3), new Enum("JournalArticle", 4), new Enum("ConferenceProceedings", 5), new Enum("Report", 6), new Enum("SoundRecording", 7), new Enum("Performance", 8), new Enum("Art", 9), new Enum("DocumentFromInternetSite", 10), new Enum("InternetSite", 11), new Enum("Film", 12), new Enum("Interview", 13), new Enum("Patent", 14), new Enum("ElectronicSource", 15), new Enum("Case", 16), new Enum("Misc", 17)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STSourceType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsourcetypee8a7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ARTICLE_IN_A_PERIODICAL = Enum.forString("ArticleInAPeriodical");
        BOOK = Enum.forString(InternalWorkbook.OLD_WORKBOOK_DIR_ENTRY_NAME);
        BOOK_SECTION = Enum.forString("BookSection");
        JOURNAL_ARTICLE = Enum.forString("JournalArticle");
        CONFERENCE_PROCEEDINGS = Enum.forString("ConferenceProceedings");
        REPORT = Enum.forString("Report");
        SOUND_RECORDING = Enum.forString("SoundRecording");
        PERFORMANCE = Enum.forString("Performance");
        ART = Enum.forString("Art");
        DOCUMENT_FROM_INTERNET_SITE = Enum.forString("DocumentFromInternetSite");
        INTERNET_SITE = Enum.forString("InternetSite");
        FILM = Enum.forString("Film");
        INTERVIEW = Enum.forString("Interview");
        PATENT = Enum.forString("Patent");
        ELECTRONIC_SOURCE = Enum.forString("ElectronicSource");
        CASE = Enum.forString("Case");
        MISC = Enum.forString("Misc");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
