.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctsourcetype8ab7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTSourceType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addAbbreviatedCaseNumber(Ljava/lang/String;)V
.end method

.method public abstract addAlbumTitle(Ljava/lang/String;)V
.end method

.method public abstract addBookTitle(Ljava/lang/String;)V
.end method

.method public abstract addBroadcastTitle(Ljava/lang/String;)V
.end method

.method public abstract addBroadcaster(Ljava/lang/String;)V
.end method

.method public abstract addCaseNumber(Ljava/lang/String;)V
.end method

.method public abstract addChapterNumber(Ljava/lang/String;)V
.end method

.method public abstract addCity(Ljava/lang/String;)V
.end method

.method public abstract addComments(Ljava/lang/String;)V
.end method

.method public abstract addConferenceName(Ljava/lang/String;)V
.end method

.method public abstract addCountryRegion(Ljava/lang/String;)V
.end method

.method public abstract addCourt(Ljava/lang/String;)V
.end method

.method public abstract addDay(Ljava/lang/String;)V
.end method

.method public abstract addDayAccessed(Ljava/lang/String;)V
.end method

.method public abstract addDepartment(Ljava/lang/String;)V
.end method

.method public abstract addDistributor(Ljava/lang/String;)V
.end method

.method public abstract addEdition(Ljava/lang/String;)V
.end method

.method public abstract addGuid(Ljava/lang/String;)V
.end method

.method public abstract addInstitution(Ljava/lang/String;)V
.end method

.method public abstract addInternetSiteTitle(Ljava/lang/String;)V
.end method

.method public abstract addIssue(Ljava/lang/String;)V
.end method

.method public abstract addJournalName(Ljava/lang/String;)V
.end method

.method public abstract addLCID(Ljava/lang/String;)V
.end method

.method public abstract addMedium(Ljava/lang/String;)V
.end method

.method public abstract addMonth(Ljava/lang/String;)V
.end method

.method public abstract addMonthAccessed(Ljava/lang/String;)V
.end method

.method public abstract addNewAbbreviatedCaseNumber()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewAlbumTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewAuthor()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;
.end method

.method public abstract addNewBookTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewBroadcastTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewBroadcaster()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewCaseNumber()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewChapterNumber()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewCity()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewComments()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewConferenceName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewCountryRegion()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewCourt()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewDay()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewDayAccessed()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewDepartment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewDistributor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewEdition()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewInstitution()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewInternetSiteTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewIssue()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewJournalName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewLCID()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;
.end method

.method public abstract addNewMedium()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewMonth()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewMonthAccessed()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewNumberVolumes()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewPages()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewPatentNumber()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewPeriodicalTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewProductionCompany()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewPublicationTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewPublisher()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewRecordingNumber()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewRefOrder()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewReporter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewShortTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewSourceType()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;
.end method

.method public abstract addNewStandardNumber()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewStateProvince()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewStation()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewTag()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewTheater()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewThesisType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewURL()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewVersion()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewVolume()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewYear()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewYearAccessed()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNumberVolumes(Ljava/lang/String;)V
.end method

.method public abstract addPages(Ljava/lang/String;)V
.end method

.method public abstract addPatentNumber(Ljava/lang/String;)V
.end method

.method public abstract addPeriodicalTitle(Ljava/lang/String;)V
.end method

.method public abstract addProductionCompany(Ljava/lang/String;)V
.end method

.method public abstract addPublicationTitle(Ljava/lang/String;)V
.end method

.method public abstract addPublisher(Ljava/lang/String;)V
.end method

.method public abstract addRecordingNumber(Ljava/lang/String;)V
.end method

.method public abstract addRefOrder(Ljava/lang/String;)V
.end method

.method public abstract addReporter(Ljava/lang/String;)V
.end method

.method public abstract addShortTitle(Ljava/lang/String;)V
.end method

.method public abstract addSourceType(Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;)V
.end method

.method public abstract addStandardNumber(Ljava/lang/String;)V
.end method

.method public abstract addStateProvince(Ljava/lang/String;)V
.end method

.method public abstract addStation(Ljava/lang/String;)V
.end method

.method public abstract addTag(Ljava/lang/String;)V
.end method

.method public abstract addTheater(Ljava/lang/String;)V
.end method

.method public abstract addThesisType(Ljava/lang/String;)V
.end method

.method public abstract addTitle(Ljava/lang/String;)V
.end method

.method public abstract addType(Ljava/lang/String;)V
.end method

.method public abstract addURL(Ljava/lang/String;)V
.end method

.method public abstract addVersion(Ljava/lang/String;)V
.end method

.method public abstract addVolume(Ljava/lang/String;)V
.end method

.method public abstract addYear(Ljava/lang/String;)V
.end method

.method public abstract addYearAccessed(Ljava/lang/String;)V
.end method

.method public abstract getAbbreviatedCaseNumberArray(I)Ljava/lang/String;
.end method

.method public abstract getAbbreviatedCaseNumberArray()[Ljava/lang/String;
.end method

.method public abstract getAbbreviatedCaseNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getAlbumTitleArray()[Ljava/lang/String;
.end method

.method public abstract getAlbumTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;
.end method

.method public abstract getAuthorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;
.end method

.method public abstract getAuthorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getBookTitleArray()[Ljava/lang/String;
.end method

.method public abstract getBookTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBroadcastTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getBroadcastTitleArray()[Ljava/lang/String;
.end method

.method public abstract getBroadcastTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBroadcasterArray(I)Ljava/lang/String;
.end method

.method public abstract getBroadcasterArray()[Ljava/lang/String;
.end method

.method public abstract getBroadcasterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaseNumberArray(I)Ljava/lang/String;
.end method

.method public abstract getCaseNumberArray()[Ljava/lang/String;
.end method

.method public abstract getCaseNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChapterNumberArray(I)Ljava/lang/String;
.end method

.method public abstract getChapterNumberArray()[Ljava/lang/String;
.end method

.method public abstract getChapterNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCityArray(I)Ljava/lang/String;
.end method

.method public abstract getCityArray()[Ljava/lang/String;
.end method

.method public abstract getCityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommentsArray(I)Ljava/lang/String;
.end method

.method public abstract getCommentsArray()[Ljava/lang/String;
.end method

.method public abstract getCommentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConferenceNameArray(I)Ljava/lang/String;
.end method

.method public abstract getConferenceNameArray()[Ljava/lang/String;
.end method

.method public abstract getConferenceNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCountryRegionArray(I)Ljava/lang/String;
.end method

.method public abstract getCountryRegionArray()[Ljava/lang/String;
.end method

.method public abstract getCountryRegionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCourtArray(I)Ljava/lang/String;
.end method

.method public abstract getCourtArray()[Ljava/lang/String;
.end method

.method public abstract getCourtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDayAccessedArray(I)Ljava/lang/String;
.end method

.method public abstract getDayAccessedArray()[Ljava/lang/String;
.end method

.method public abstract getDayAccessedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDayArray(I)Ljava/lang/String;
.end method

.method public abstract getDayArray()[Ljava/lang/String;
.end method

.method public abstract getDayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDepartmentArray(I)Ljava/lang/String;
.end method

.method public abstract getDepartmentArray()[Ljava/lang/String;
.end method

.method public abstract getDepartmentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDistributorArray(I)Ljava/lang/String;
.end method

.method public abstract getDistributorArray()[Ljava/lang/String;
.end method

.method public abstract getDistributorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEditionArray(I)Ljava/lang/String;
.end method

.method public abstract getEditionArray()[Ljava/lang/String;
.end method

.method public abstract getEditionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGuidArray(I)Ljava/lang/String;
.end method

.method public abstract getGuidArray()[Ljava/lang/String;
.end method

.method public abstract getGuidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstitutionArray(I)Ljava/lang/String;
.end method

.method public abstract getInstitutionArray()[Ljava/lang/String;
.end method

.method public abstract getInstitutionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInternetSiteTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getInternetSiteTitleArray()[Ljava/lang/String;
.end method

.method public abstract getInternetSiteTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIssueArray(I)Ljava/lang/String;
.end method

.method public abstract getIssueArray()[Ljava/lang/String;
.end method

.method public abstract getIssueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJournalNameArray(I)Ljava/lang/String;
.end method

.method public abstract getJournalNameArray()[Ljava/lang/String;
.end method

.method public abstract getJournalNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLCIDArray(I)Ljava/lang/String;
.end method

.method public abstract getLCIDArray()[Ljava/lang/String;
.end method

.method public abstract getLCIDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediumArray(I)Ljava/lang/String;
.end method

.method public abstract getMediumArray()[Ljava/lang/String;
.end method

.method public abstract getMediumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonthAccessedArray(I)Ljava/lang/String;
.end method

.method public abstract getMonthAccessedArray()[Ljava/lang/String;
.end method

.method public abstract getMonthAccessedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonthArray(I)Ljava/lang/String;
.end method

.method public abstract getMonthArray()[Ljava/lang/String;
.end method

.method public abstract getMonthList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumberVolumesArray(I)Ljava/lang/String;
.end method

.method public abstract getNumberVolumesArray()[Ljava/lang/String;
.end method

.method public abstract getNumberVolumesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPagesArray(I)Ljava/lang/String;
.end method

.method public abstract getPagesArray()[Ljava/lang/String;
.end method

.method public abstract getPagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPatentNumberArray(I)Ljava/lang/String;
.end method

.method public abstract getPatentNumberArray()[Ljava/lang/String;
.end method

.method public abstract getPatentNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPeriodicalTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getPeriodicalTitleArray()[Ljava/lang/String;
.end method

.method public abstract getPeriodicalTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProductionCompanyArray(I)Ljava/lang/String;
.end method

.method public abstract getProductionCompanyArray()[Ljava/lang/String;
.end method

.method public abstract getProductionCompanyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicationTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getPublicationTitleArray()[Ljava/lang/String;
.end method

.method public abstract getPublicationTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublisherArray(I)Ljava/lang/String;
.end method

.method public abstract getPublisherArray()[Ljava/lang/String;
.end method

.method public abstract getPublisherList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecordingNumberArray(I)Ljava/lang/String;
.end method

.method public abstract getRecordingNumberArray()[Ljava/lang/String;
.end method

.method public abstract getRecordingNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefOrderArray(I)Ljava/lang/String;
.end method

.method public abstract getRefOrderArray()[Ljava/lang/String;
.end method

.method public abstract getRefOrderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReporterArray(I)Ljava/lang/String;
.end method

.method public abstract getReporterArray()[Ljava/lang/String;
.end method

.method public abstract getReporterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShortTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getShortTitleArray()[Ljava/lang/String;
.end method

.method public abstract getShortTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourceTypeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;
.end method

.method public abstract getSourceTypeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;
.end method

.method public abstract getSourceTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStandardNumberArray(I)Ljava/lang/String;
.end method

.method public abstract getStandardNumberArray()[Ljava/lang/String;
.end method

.method public abstract getStandardNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStateProvinceArray(I)Ljava/lang/String;
.end method

.method public abstract getStateProvinceArray()[Ljava/lang/String;
.end method

.method public abstract getStateProvinceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStationArray(I)Ljava/lang/String;
.end method

.method public abstract getStationArray()[Ljava/lang/String;
.end method

.method public abstract getStationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagArray(I)Ljava/lang/String;
.end method

.method public abstract getTagArray()[Ljava/lang/String;
.end method

.method public abstract getTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTheaterArray(I)Ljava/lang/String;
.end method

.method public abstract getTheaterArray()[Ljava/lang/String;
.end method

.method public abstract getTheaterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThesisTypeArray(I)Ljava/lang/String;
.end method

.method public abstract getThesisTypeArray()[Ljava/lang/String;
.end method

.method public abstract getThesisTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitleArray(I)Ljava/lang/String;
.end method

.method public abstract getTitleArray()[Ljava/lang/String;
.end method

.method public abstract getTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeArray(I)Ljava/lang/String;
.end method

.method public abstract getTypeArray()[Ljava/lang/String;
.end method

.method public abstract getTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getURLArray(I)Ljava/lang/String;
.end method

.method public abstract getURLArray()[Ljava/lang/String;
.end method

.method public abstract getURLList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersionArray(I)Ljava/lang/String;
.end method

.method public abstract getVersionArray()[Ljava/lang/String;
.end method

.method public abstract getVersionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVolumeArray(I)Ljava/lang/String;
.end method

.method public abstract getVolumeArray()[Ljava/lang/String;
.end method

.method public abstract getVolumeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getYearAccessedArray(I)Ljava/lang/String;
.end method

.method public abstract getYearAccessedArray()[Ljava/lang/String;
.end method

.method public abstract getYearAccessedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getYearArray(I)Ljava/lang/String;
.end method

.method public abstract getYearArray()[Ljava/lang/String;
.end method

.method public abstract getYearList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAbbreviatedCaseNumber(ILjava/lang/String;)V
.end method

.method public abstract insertAlbumTitle(ILjava/lang/String;)V
.end method

.method public abstract insertBookTitle(ILjava/lang/String;)V
.end method

.method public abstract insertBroadcastTitle(ILjava/lang/String;)V
.end method

.method public abstract insertBroadcaster(ILjava/lang/String;)V
.end method

.method public abstract insertCaseNumber(ILjava/lang/String;)V
.end method

.method public abstract insertChapterNumber(ILjava/lang/String;)V
.end method

.method public abstract insertCity(ILjava/lang/String;)V
.end method

.method public abstract insertComments(ILjava/lang/String;)V
.end method

.method public abstract insertConferenceName(ILjava/lang/String;)V
.end method

.method public abstract insertCountryRegion(ILjava/lang/String;)V
.end method

.method public abstract insertCourt(ILjava/lang/String;)V
.end method

.method public abstract insertDay(ILjava/lang/String;)V
.end method

.method public abstract insertDayAccessed(ILjava/lang/String;)V
.end method

.method public abstract insertDepartment(ILjava/lang/String;)V
.end method

.method public abstract insertDistributor(ILjava/lang/String;)V
.end method

.method public abstract insertEdition(ILjava/lang/String;)V
.end method

.method public abstract insertGuid(ILjava/lang/String;)V
.end method

.method public abstract insertInstitution(ILjava/lang/String;)V
.end method

.method public abstract insertInternetSiteTitle(ILjava/lang/String;)V
.end method

.method public abstract insertIssue(ILjava/lang/String;)V
.end method

.method public abstract insertJournalName(ILjava/lang/String;)V
.end method

.method public abstract insertLCID(ILjava/lang/String;)V
.end method

.method public abstract insertMedium(ILjava/lang/String;)V
.end method

.method public abstract insertMonth(ILjava/lang/String;)V
.end method

.method public abstract insertMonthAccessed(ILjava/lang/String;)V
.end method

.method public abstract insertNewAbbreviatedCaseNumber(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewAlbumTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewAuthor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;
.end method

.method public abstract insertNewBookTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewBroadcastTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewBroadcaster(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewCaseNumber(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewChapterNumber(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewCity(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewComments(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewConferenceName(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewCountryRegion(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewCourt(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewDay(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewDayAccessed(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewDepartment(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewDistributor(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewEdition(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewGuid(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewInstitution(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewInternetSiteTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewIssue(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewJournalName(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewLCID(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;
.end method

.method public abstract insertNewMedium(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewMonth(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewMonthAccessed(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewNumberVolumes(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewPages(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewPatentNumber(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewPeriodicalTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewProductionCompany(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewPublicationTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewPublisher(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewRecordingNumber(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewRefOrder(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewReporter(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewShortTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewSourceType(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;
.end method

.method public abstract insertNewStandardNumber(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewStateProvince(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewStation(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewTag(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewTheater(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewThesisType(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewTitle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewType(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewURL(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewVersion(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewVolume(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewYear(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewYearAccessed(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNumberVolumes(ILjava/lang/String;)V
.end method

.method public abstract insertPages(ILjava/lang/String;)V
.end method

.method public abstract insertPatentNumber(ILjava/lang/String;)V
.end method

.method public abstract insertPeriodicalTitle(ILjava/lang/String;)V
.end method

.method public abstract insertProductionCompany(ILjava/lang/String;)V
.end method

.method public abstract insertPublicationTitle(ILjava/lang/String;)V
.end method

.method public abstract insertPublisher(ILjava/lang/String;)V
.end method

.method public abstract insertRecordingNumber(ILjava/lang/String;)V
.end method

.method public abstract insertRefOrder(ILjava/lang/String;)V
.end method

.method public abstract insertReporter(ILjava/lang/String;)V
.end method

.method public abstract insertShortTitle(ILjava/lang/String;)V
.end method

.method public abstract insertSourceType(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;)V
.end method

.method public abstract insertStandardNumber(ILjava/lang/String;)V
.end method

.method public abstract insertStateProvince(ILjava/lang/String;)V
.end method

.method public abstract insertStation(ILjava/lang/String;)V
.end method

.method public abstract insertTag(ILjava/lang/String;)V
.end method

.method public abstract insertTheater(ILjava/lang/String;)V
.end method

.method public abstract insertThesisType(ILjava/lang/String;)V
.end method

.method public abstract insertTitle(ILjava/lang/String;)V
.end method

.method public abstract insertType(ILjava/lang/String;)V
.end method

.method public abstract insertURL(ILjava/lang/String;)V
.end method

.method public abstract insertVersion(ILjava/lang/String;)V
.end method

.method public abstract insertVolume(ILjava/lang/String;)V
.end method

.method public abstract insertYear(ILjava/lang/String;)V
.end method

.method public abstract insertYearAccessed(ILjava/lang/String;)V
.end method

.method public abstract removeAbbreviatedCaseNumber(I)V
.end method

.method public abstract removeAlbumTitle(I)V
.end method

.method public abstract removeAuthor(I)V
.end method

.method public abstract removeBookTitle(I)V
.end method

.method public abstract removeBroadcastTitle(I)V
.end method

.method public abstract removeBroadcaster(I)V
.end method

.method public abstract removeCaseNumber(I)V
.end method

.method public abstract removeChapterNumber(I)V
.end method

.method public abstract removeCity(I)V
.end method

.method public abstract removeComments(I)V
.end method

.method public abstract removeConferenceName(I)V
.end method

.method public abstract removeCountryRegion(I)V
.end method

.method public abstract removeCourt(I)V
.end method

.method public abstract removeDay(I)V
.end method

.method public abstract removeDayAccessed(I)V
.end method

.method public abstract removeDepartment(I)V
.end method

.method public abstract removeDistributor(I)V
.end method

.method public abstract removeEdition(I)V
.end method

.method public abstract removeGuid(I)V
.end method

.method public abstract removeInstitution(I)V
.end method

.method public abstract removeInternetSiteTitle(I)V
.end method

.method public abstract removeIssue(I)V
.end method

.method public abstract removeJournalName(I)V
.end method

.method public abstract removeLCID(I)V
.end method

.method public abstract removeMedium(I)V
.end method

.method public abstract removeMonth(I)V
.end method

.method public abstract removeMonthAccessed(I)V
.end method

.method public abstract removeNumberVolumes(I)V
.end method

.method public abstract removePages(I)V
.end method

.method public abstract removePatentNumber(I)V
.end method

.method public abstract removePeriodicalTitle(I)V
.end method

.method public abstract removeProductionCompany(I)V
.end method

.method public abstract removePublicationTitle(I)V
.end method

.method public abstract removePublisher(I)V
.end method

.method public abstract removeRecordingNumber(I)V
.end method

.method public abstract removeRefOrder(I)V
.end method

.method public abstract removeReporter(I)V
.end method

.method public abstract removeShortTitle(I)V
.end method

.method public abstract removeSourceType(I)V
.end method

.method public abstract removeStandardNumber(I)V
.end method

.method public abstract removeStateProvince(I)V
.end method

.method public abstract removeStation(I)V
.end method

.method public abstract removeTag(I)V
.end method

.method public abstract removeTheater(I)V
.end method

.method public abstract removeThesisType(I)V
.end method

.method public abstract removeTitle(I)V
.end method

.method public abstract removeType(I)V
.end method

.method public abstract removeURL(I)V
.end method

.method public abstract removeVersion(I)V
.end method

.method public abstract removeVolume(I)V
.end method

.method public abstract removeYear(I)V
.end method

.method public abstract removeYearAccessed(I)V
.end method

.method public abstract setAbbreviatedCaseNumberArray(ILjava/lang/String;)V
.end method

.method public abstract setAbbreviatedCaseNumberArray([Ljava/lang/String;)V
.end method

.method public abstract setAlbumTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setAlbumTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setAuthorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;)V
.end method

.method public abstract setAuthorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTAuthorType;)V
.end method

.method public abstract setBookTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setBookTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setBroadcastTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setBroadcastTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setBroadcasterArray(ILjava/lang/String;)V
.end method

.method public abstract setBroadcasterArray([Ljava/lang/String;)V
.end method

.method public abstract setCaseNumberArray(ILjava/lang/String;)V
.end method

.method public abstract setCaseNumberArray([Ljava/lang/String;)V
.end method

.method public abstract setChapterNumberArray(ILjava/lang/String;)V
.end method

.method public abstract setChapterNumberArray([Ljava/lang/String;)V
.end method

.method public abstract setCityArray(ILjava/lang/String;)V
.end method

.method public abstract setCityArray([Ljava/lang/String;)V
.end method

.method public abstract setCommentsArray(ILjava/lang/String;)V
.end method

.method public abstract setCommentsArray([Ljava/lang/String;)V
.end method

.method public abstract setConferenceNameArray(ILjava/lang/String;)V
.end method

.method public abstract setConferenceNameArray([Ljava/lang/String;)V
.end method

.method public abstract setCountryRegionArray(ILjava/lang/String;)V
.end method

.method public abstract setCountryRegionArray([Ljava/lang/String;)V
.end method

.method public abstract setCourtArray(ILjava/lang/String;)V
.end method

.method public abstract setCourtArray([Ljava/lang/String;)V
.end method

.method public abstract setDayAccessedArray(ILjava/lang/String;)V
.end method

.method public abstract setDayAccessedArray([Ljava/lang/String;)V
.end method

.method public abstract setDayArray(ILjava/lang/String;)V
.end method

.method public abstract setDayArray([Ljava/lang/String;)V
.end method

.method public abstract setDepartmentArray(ILjava/lang/String;)V
.end method

.method public abstract setDepartmentArray([Ljava/lang/String;)V
.end method

.method public abstract setDistributorArray(ILjava/lang/String;)V
.end method

.method public abstract setDistributorArray([Ljava/lang/String;)V
.end method

.method public abstract setEditionArray(ILjava/lang/String;)V
.end method

.method public abstract setEditionArray([Ljava/lang/String;)V
.end method

.method public abstract setGuidArray(ILjava/lang/String;)V
.end method

.method public abstract setGuidArray([Ljava/lang/String;)V
.end method

.method public abstract setInstitutionArray(ILjava/lang/String;)V
.end method

.method public abstract setInstitutionArray([Ljava/lang/String;)V
.end method

.method public abstract setInternetSiteTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setInternetSiteTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setIssueArray(ILjava/lang/String;)V
.end method

.method public abstract setIssueArray([Ljava/lang/String;)V
.end method

.method public abstract setJournalNameArray(ILjava/lang/String;)V
.end method

.method public abstract setJournalNameArray([Ljava/lang/String;)V
.end method

.method public abstract setLCIDArray(ILjava/lang/String;)V
.end method

.method public abstract setLCIDArray([Ljava/lang/String;)V
.end method

.method public abstract setMediumArray(ILjava/lang/String;)V
.end method

.method public abstract setMediumArray([Ljava/lang/String;)V
.end method

.method public abstract setMonthAccessedArray(ILjava/lang/String;)V
.end method

.method public abstract setMonthAccessedArray([Ljava/lang/String;)V
.end method

.method public abstract setMonthArray(ILjava/lang/String;)V
.end method

.method public abstract setMonthArray([Ljava/lang/String;)V
.end method

.method public abstract setNumberVolumesArray(ILjava/lang/String;)V
.end method

.method public abstract setNumberVolumesArray([Ljava/lang/String;)V
.end method

.method public abstract setPagesArray(ILjava/lang/String;)V
.end method

.method public abstract setPagesArray([Ljava/lang/String;)V
.end method

.method public abstract setPatentNumberArray(ILjava/lang/String;)V
.end method

.method public abstract setPatentNumberArray([Ljava/lang/String;)V
.end method

.method public abstract setPeriodicalTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setPeriodicalTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setProductionCompanyArray(ILjava/lang/String;)V
.end method

.method public abstract setProductionCompanyArray([Ljava/lang/String;)V
.end method

.method public abstract setPublicationTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setPublicationTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setPublisherArray(ILjava/lang/String;)V
.end method

.method public abstract setPublisherArray([Ljava/lang/String;)V
.end method

.method public abstract setRecordingNumberArray(ILjava/lang/String;)V
.end method

.method public abstract setRecordingNumberArray([Ljava/lang/String;)V
.end method

.method public abstract setRefOrderArray(ILjava/lang/String;)V
.end method

.method public abstract setRefOrderArray([Ljava/lang/String;)V
.end method

.method public abstract setReporterArray(ILjava/lang/String;)V
.end method

.method public abstract setReporterArray([Ljava/lang/String;)V
.end method

.method public abstract setShortTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setShortTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setSourceTypeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;)V
.end method

.method public abstract setSourceTypeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType$Enum;)V
.end method

.method public abstract setStandardNumberArray(ILjava/lang/String;)V
.end method

.method public abstract setStandardNumberArray([Ljava/lang/String;)V
.end method

.method public abstract setStateProvinceArray(ILjava/lang/String;)V
.end method

.method public abstract setStateProvinceArray([Ljava/lang/String;)V
.end method

.method public abstract setStationArray(ILjava/lang/String;)V
.end method

.method public abstract setStationArray([Ljava/lang/String;)V
.end method

.method public abstract setTagArray(ILjava/lang/String;)V
.end method

.method public abstract setTagArray([Ljava/lang/String;)V
.end method

.method public abstract setTheaterArray(ILjava/lang/String;)V
.end method

.method public abstract setTheaterArray([Ljava/lang/String;)V
.end method

.method public abstract setThesisTypeArray(ILjava/lang/String;)V
.end method

.method public abstract setThesisTypeArray([Ljava/lang/String;)V
.end method

.method public abstract setTitleArray(ILjava/lang/String;)V
.end method

.method public abstract setTitleArray([Ljava/lang/String;)V
.end method

.method public abstract setTypeArray(ILjava/lang/String;)V
.end method

.method public abstract setTypeArray([Ljava/lang/String;)V
.end method

.method public abstract setURLArray(ILjava/lang/String;)V
.end method

.method public abstract setURLArray([Ljava/lang/String;)V
.end method

.method public abstract setVersionArray(ILjava/lang/String;)V
.end method

.method public abstract setVersionArray([Ljava/lang/String;)V
.end method

.method public abstract setVolumeArray(ILjava/lang/String;)V
.end method

.method public abstract setVolumeArray([Ljava/lang/String;)V
.end method

.method public abstract setYearAccessedArray(ILjava/lang/String;)V
.end method

.method public abstract setYearAccessedArray([Ljava/lang/String;)V
.end method

.method public abstract setYearArray(ILjava/lang/String;)V
.end method

.method public abstract setYearArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfAbbreviatedCaseNumberArray()I
.end method

.method public abstract sizeOfAlbumTitleArray()I
.end method

.method public abstract sizeOfAuthorArray()I
.end method

.method public abstract sizeOfBookTitleArray()I
.end method

.method public abstract sizeOfBroadcastTitleArray()I
.end method

.method public abstract sizeOfBroadcasterArray()I
.end method

.method public abstract sizeOfCaseNumberArray()I
.end method

.method public abstract sizeOfChapterNumberArray()I
.end method

.method public abstract sizeOfCityArray()I
.end method

.method public abstract sizeOfCommentsArray()I
.end method

.method public abstract sizeOfConferenceNameArray()I
.end method

.method public abstract sizeOfCountryRegionArray()I
.end method

.method public abstract sizeOfCourtArray()I
.end method

.method public abstract sizeOfDayAccessedArray()I
.end method

.method public abstract sizeOfDayArray()I
.end method

.method public abstract sizeOfDepartmentArray()I
.end method

.method public abstract sizeOfDistributorArray()I
.end method

.method public abstract sizeOfEditionArray()I
.end method

.method public abstract sizeOfGuidArray()I
.end method

.method public abstract sizeOfInstitutionArray()I
.end method

.method public abstract sizeOfInternetSiteTitleArray()I
.end method

.method public abstract sizeOfIssueArray()I
.end method

.method public abstract sizeOfJournalNameArray()I
.end method

.method public abstract sizeOfLCIDArray()I
.end method

.method public abstract sizeOfMediumArray()I
.end method

.method public abstract sizeOfMonthAccessedArray()I
.end method

.method public abstract sizeOfMonthArray()I
.end method

.method public abstract sizeOfNumberVolumesArray()I
.end method

.method public abstract sizeOfPagesArray()I
.end method

.method public abstract sizeOfPatentNumberArray()I
.end method

.method public abstract sizeOfPeriodicalTitleArray()I
.end method

.method public abstract sizeOfProductionCompanyArray()I
.end method

.method public abstract sizeOfPublicationTitleArray()I
.end method

.method public abstract sizeOfPublisherArray()I
.end method

.method public abstract sizeOfRecordingNumberArray()I
.end method

.method public abstract sizeOfRefOrderArray()I
.end method

.method public abstract sizeOfReporterArray()I
.end method

.method public abstract sizeOfShortTitleArray()I
.end method

.method public abstract sizeOfSourceTypeArray()I
.end method

.method public abstract sizeOfStandardNumberArray()I
.end method

.method public abstract sizeOfStateProvinceArray()I
.end method

.method public abstract sizeOfStationArray()I
.end method

.method public abstract sizeOfTagArray()I
.end method

.method public abstract sizeOfTheaterArray()I
.end method

.method public abstract sizeOfThesisTypeArray()I
.end method

.method public abstract sizeOfTitleArray()I
.end method

.method public abstract sizeOfTypeArray()I
.end method

.method public abstract sizeOfURLArray()I
.end method

.method public abstract sizeOfVersionArray()I
.end method

.method public abstract sizeOfVolumeArray()I
.end method

.method public abstract sizeOfYearAccessedArray()I
.end method

.method public abstract sizeOfYearArray()I
.end method

.method public abstract xgetAbbreviatedCaseNumberArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAbbreviatedCaseNumberArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAbbreviatedCaseNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetAlbumTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAlbumTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAlbumTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetBookTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetBookTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetBookTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetBroadcastTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetBroadcastTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetBroadcastTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetBroadcasterArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetBroadcasterArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetBroadcasterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCaseNumberArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCaseNumberArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCaseNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetChapterNumberArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetChapterNumberArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetChapterNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCityArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCityArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCommentsArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCommentsArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCommentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetConferenceNameArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetConferenceNameArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetConferenceNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCountryRegionArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCountryRegionArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCountryRegionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCourtArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCourtArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCourtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDayAccessedArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDayAccessedArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDayAccessedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDayArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDayArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDepartmentArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDepartmentArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDepartmentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDistributorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDistributorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetDistributorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetEditionArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetEditionArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetEditionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetGuidArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetGuidArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetGuidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetInstitutionArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetInstitutionArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetInstitutionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetInternetSiteTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetInternetSiteTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetInternetSiteTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetIssueArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetIssueArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetIssueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetJournalNameArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetJournalNameArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetJournalNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLCIDArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;
.end method

.method public abstract xgetLCIDArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;
.end method

.method public abstract xgetLCIDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMediumArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMediumArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMediumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMonthAccessedArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMonthAccessedArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMonthAccessedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMonthArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMonthArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMonthList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetNumberVolumesArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetNumberVolumesArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetNumberVolumesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetPagesArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPagesArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetPatentNumberArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPatentNumberArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPatentNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetPeriodicalTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPeriodicalTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPeriodicalTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetProductionCompanyArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetProductionCompanyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetProductionCompanyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetPublicationTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPublicationTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPublicationTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetPublisherArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPublisherArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetPublisherList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetRecordingNumberArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetRecordingNumberArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetRecordingNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetRefOrderArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetRefOrderArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetRefOrderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetReporterArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetReporterArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetReporterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetShortTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetShortTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetShortTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSourceTypeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;
.end method

.method public abstract xgetSourceTypeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;
.end method

.method public abstract xgetSourceTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetStandardNumberArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStandardNumberArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStandardNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetStateProvinceArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStateProvinceArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStateProvinceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetStationArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStationArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetStationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetTagArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTagArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetTheaterArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTheaterArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTheaterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetThesisTypeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetThesisTypeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetThesisTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetTitleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTitleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetTypeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTypeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetURLArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetURLArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetURLList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetVersionArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetVersionArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetVersionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetVolumeArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetVolumeArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetVolumeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetYearAccessedArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetYearAccessedArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetYearAccessedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetYearArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetYearArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetYearList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetAbbreviatedCaseNumberArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetAbbreviatedCaseNumberArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetAlbumTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetAlbumTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetBookTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetBookTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetBroadcastTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetBroadcastTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetBroadcasterArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetBroadcasterArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCaseNumberArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCaseNumberArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetChapterNumberArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetChapterNumberArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCityArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCityArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCommentsArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCommentsArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetConferenceNameArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetConferenceNameArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCountryRegionArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCountryRegionArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCourtArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCourtArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDayAccessedArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDayAccessedArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDayArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDayArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDepartmentArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDepartmentArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDistributorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetDistributorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetEditionArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetEditionArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetGuidArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetGuidArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetInstitutionArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetInstitutionArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetInternetSiteTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetInternetSiteTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetIssueArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetIssueArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetJournalNameArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetJournalNameArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetLCIDArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;)V
.end method

.method public abstract xsetLCIDArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;)V
.end method

.method public abstract xsetMediumArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMediumArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMonthAccessedArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMonthAccessedArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMonthArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMonthArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetNumberVolumesArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetNumberVolumesArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPagesArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPagesArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPatentNumberArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPatentNumberArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPeriodicalTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPeriodicalTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetProductionCompanyArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetProductionCompanyArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPublicationTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPublicationTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPublisherArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetPublisherArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetRecordingNumberArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetRecordingNumberArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetRefOrderArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetRefOrderArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetReporterArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetReporterArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetShortTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetShortTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetSourceTypeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;)V
.end method

.method public abstract xsetSourceTypeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/STSourceType;)V
.end method

.method public abstract xsetStandardNumberArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetStandardNumberArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetStateProvinceArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetStateProvinceArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetStationArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetStationArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTagArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTagArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTheaterArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTheaterArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetThesisTypeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetThesisTypeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTitleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTitleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTypeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetTypeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetURLArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetURLArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetVersionArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetVersionArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetVolumeArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetVolumeArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetYearAccessedArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetYearAccessedArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetYearArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetYearArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
