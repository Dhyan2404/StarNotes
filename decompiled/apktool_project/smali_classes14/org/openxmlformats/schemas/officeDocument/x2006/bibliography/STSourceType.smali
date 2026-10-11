.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;
    }
.end annotation


# static fields
.field public static final ART:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final ARTICLE_IN_A_PERIODICAL:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final BOOK:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final BOOK_SECTION:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final CASE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final CONFERENCE_PROCEEDINGS:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final DOCUMENT_FROM_INTERNET_SITE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final ELECTRONIC_SOURCE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final FILM:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNET_SITE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final INTERVIEW:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final INT_ART:I = 0x9

.field public static final INT_ARTICLE_IN_A_PERIODICAL:I = 0x1

.field public static final INT_BOOK:I = 0x2

.field public static final INT_BOOK_SECTION:I = 0x3

.field public static final INT_CASE:I = 0x10

.field public static final INT_CONFERENCE_PROCEEDINGS:I = 0x5

.field public static final INT_DOCUMENT_FROM_INTERNET_SITE:I = 0xa

.field public static final INT_ELECTRONIC_SOURCE:I = 0xf

.field public static final INT_FILM:I = 0xc

.field public static final INT_INTERNET_SITE:I = 0xb

.field public static final INT_INTERVIEW:I = 0xd

.field public static final INT_JOURNAL_ARTICLE:I = 0x4

.field public static final INT_MISC:I = 0x11

.field public static final INT_PATENT:I = 0xe

.field public static final INT_PERFORMANCE:I = 0x8

.field public static final INT_REPORT:I = 0x6

.field public static final INT_SOUND_RECORDING:I = 0x7

.field public static final JOURNAL_ARTICLE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final MISC:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final PATENT:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final PERFORMANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final REPORT:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final SOUND_RECORDING:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stsourcetypee8a7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "ArticleInAPeriodical"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->ARTICLE_IN_A_PERIODICAL:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Book"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->BOOK:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "BookSection"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->BOOK_SECTION:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "JournalArticle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->JOURNAL_ARTICLE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "ConferenceProceedings"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->CONFERENCE_PROCEEDINGS:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Report"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->REPORT:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "SoundRecording"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->SOUND_RECORDING:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Performance"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->PERFORMANCE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Art"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->ART:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "DocumentFromInternetSite"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->DOCUMENT_FROM_INTERNET_SITE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "InternetSite"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->INTERNET_SITE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Film"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->FILM:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Interview"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->INTERVIEW:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Patent"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->PATENT:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "ElectronicSource"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->ELECTRONIC_SOURCE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Case"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->CASE:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    const-string v0, "Misc"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;->MISC:Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
