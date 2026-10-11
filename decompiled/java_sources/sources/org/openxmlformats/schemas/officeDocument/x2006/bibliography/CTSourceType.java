package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.bibliography.STSourceType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STLang;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public interface CTSourceType extends XmlObject {
    public static final DocumentFactory<CTSourceType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSourceType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsourcetype8ab7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addAbbreviatedCaseNumber(String str);

    void addAlbumTitle(String str);

    void addBookTitle(String str);

    void addBroadcastTitle(String str);

    void addBroadcaster(String str);

    void addCaseNumber(String str);

    void addChapterNumber(String str);

    void addCity(String str);

    void addComments(String str);

    void addConferenceName(String str);

    void addCountryRegion(String str);

    void addCourt(String str);

    void addDay(String str);

    void addDayAccessed(String str);

    void addDepartment(String str);

    void addDistributor(String str);

    void addEdition(String str);

    void addGuid(String str);

    void addInstitution(String str);

    void addInternetSiteTitle(String str);

    void addIssue(String str);

    void addJournalName(String str);

    void addLCID(String str);

    void addMedium(String str);

    void addMonth(String str);

    void addMonthAccessed(String str);

    STString addNewAbbreviatedCaseNumber();

    STString addNewAlbumTitle();

    CTAuthorType addNewAuthor();

    STString addNewBookTitle();

    STString addNewBroadcastTitle();

    STString addNewBroadcaster();

    STString addNewCaseNumber();

    STString addNewChapterNumber();

    STString addNewCity();

    STString addNewComments();

    STString addNewConferenceName();

    STString addNewCountryRegion();

    STString addNewCourt();

    STString addNewDay();

    STString addNewDayAccessed();

    STString addNewDepartment();

    STString addNewDistributor();

    STString addNewEdition();

    STString addNewGuid();

    STString addNewInstitution();

    STString addNewInternetSiteTitle();

    STString addNewIssue();

    STString addNewJournalName();

    STLang addNewLCID();

    STString addNewMedium();

    STString addNewMonth();

    STString addNewMonthAccessed();

    STString addNewNumberVolumes();

    STString addNewPages();

    STString addNewPatentNumber();

    STString addNewPeriodicalTitle();

    STString addNewProductionCompany();

    STString addNewPublicationTitle();

    STString addNewPublisher();

    STString addNewRecordingNumber();

    STString addNewRefOrder();

    STString addNewReporter();

    STString addNewShortTitle();

    STSourceType addNewSourceType();

    STString addNewStandardNumber();

    STString addNewStateProvince();

    STString addNewStation();

    STString addNewTag();

    STString addNewTheater();

    STString addNewThesisType();

    STString addNewTitle();

    STString addNewType();

    STString addNewURL();

    STString addNewVersion();

    STString addNewVolume();

    STString addNewYear();

    STString addNewYearAccessed();

    void addNumberVolumes(String str);

    void addPages(String str);

    void addPatentNumber(String str);

    void addPeriodicalTitle(String str);

    void addProductionCompany(String str);

    void addPublicationTitle(String str);

    void addPublisher(String str);

    void addRecordingNumber(String str);

    void addRefOrder(String str);

    void addReporter(String str);

    void addShortTitle(String str);

    void addSourceType(STSourceType.Enum r1);

    void addStandardNumber(String str);

    void addStateProvince(String str);

    void addStation(String str);

    void addTag(String str);

    void addTheater(String str);

    void addThesisType(String str);

    void addTitle(String str);

    void addType(String str);

    void addURL(String str);

    void addVersion(String str);

    void addVolume(String str);

    void addYear(String str);

    void addYearAccessed(String str);

    String getAbbreviatedCaseNumberArray(int i);

    String[] getAbbreviatedCaseNumberArray();

    List<String> getAbbreviatedCaseNumberList();

    String getAlbumTitleArray(int i);

    String[] getAlbumTitleArray();

    List<String> getAlbumTitleList();

    CTAuthorType getAuthorArray(int i);

    CTAuthorType[] getAuthorArray();

    List<CTAuthorType> getAuthorList();

    String getBookTitleArray(int i);

    String[] getBookTitleArray();

    List<String> getBookTitleList();

    String getBroadcastTitleArray(int i);

    String[] getBroadcastTitleArray();

    List<String> getBroadcastTitleList();

    String getBroadcasterArray(int i);

    String[] getBroadcasterArray();

    List<String> getBroadcasterList();

    String getCaseNumberArray(int i);

    String[] getCaseNumberArray();

    List<String> getCaseNumberList();

    String getChapterNumberArray(int i);

    String[] getChapterNumberArray();

    List<String> getChapterNumberList();

    String getCityArray(int i);

    String[] getCityArray();

    List<String> getCityList();

    String getCommentsArray(int i);

    String[] getCommentsArray();

    List<String> getCommentsList();

    String getConferenceNameArray(int i);

    String[] getConferenceNameArray();

    List<String> getConferenceNameList();

    String getCountryRegionArray(int i);

    String[] getCountryRegionArray();

    List<String> getCountryRegionList();

    String getCourtArray(int i);

    String[] getCourtArray();

    List<String> getCourtList();

    String getDayAccessedArray(int i);

    String[] getDayAccessedArray();

    List<String> getDayAccessedList();

    String getDayArray(int i);

    String[] getDayArray();

    List<String> getDayList();

    String getDepartmentArray(int i);

    String[] getDepartmentArray();

    List<String> getDepartmentList();

    String getDistributorArray(int i);

    String[] getDistributorArray();

    List<String> getDistributorList();

    String getEditionArray(int i);

    String[] getEditionArray();

    List<String> getEditionList();

    String getGuidArray(int i);

    String[] getGuidArray();

    List<String> getGuidList();

    String getInstitutionArray(int i);

    String[] getInstitutionArray();

    List<String> getInstitutionList();

    String getInternetSiteTitleArray(int i);

    String[] getInternetSiteTitleArray();

    List<String> getInternetSiteTitleList();

    String getIssueArray(int i);

    String[] getIssueArray();

    List<String> getIssueList();

    String getJournalNameArray(int i);

    String[] getJournalNameArray();

    List<String> getJournalNameList();

    String getLCIDArray(int i);

    String[] getLCIDArray();

    List<String> getLCIDList();

    String getMediumArray(int i);

    String[] getMediumArray();

    List<String> getMediumList();

    String getMonthAccessedArray(int i);

    String[] getMonthAccessedArray();

    List<String> getMonthAccessedList();

    String getMonthArray(int i);

    String[] getMonthArray();

    List<String> getMonthList();

    String getNumberVolumesArray(int i);

    String[] getNumberVolumesArray();

    List<String> getNumberVolumesList();

    String getPagesArray(int i);

    String[] getPagesArray();

    List<String> getPagesList();

    String getPatentNumberArray(int i);

    String[] getPatentNumberArray();

    List<String> getPatentNumberList();

    String getPeriodicalTitleArray(int i);

    String[] getPeriodicalTitleArray();

    List<String> getPeriodicalTitleList();

    String getProductionCompanyArray(int i);

    String[] getProductionCompanyArray();

    List<String> getProductionCompanyList();

    String getPublicationTitleArray(int i);

    String[] getPublicationTitleArray();

    List<String> getPublicationTitleList();

    String getPublisherArray(int i);

    String[] getPublisherArray();

    List<String> getPublisherList();

    String getRecordingNumberArray(int i);

    String[] getRecordingNumberArray();

    List<String> getRecordingNumberList();

    String getRefOrderArray(int i);

    String[] getRefOrderArray();

    List<String> getRefOrderList();

    String getReporterArray(int i);

    String[] getReporterArray();

    List<String> getReporterList();

    String getShortTitleArray(int i);

    String[] getShortTitleArray();

    List<String> getShortTitleList();

    STSourceType.Enum getSourceTypeArray(int i);

    STSourceType.Enum[] getSourceTypeArray();

    List<STSourceType.Enum> getSourceTypeList();

    String getStandardNumberArray(int i);

    String[] getStandardNumberArray();

    List<String> getStandardNumberList();

    String getStateProvinceArray(int i);

    String[] getStateProvinceArray();

    List<String> getStateProvinceList();

    String getStationArray(int i);

    String[] getStationArray();

    List<String> getStationList();

    String getTagArray(int i);

    String[] getTagArray();

    List<String> getTagList();

    String getTheaterArray(int i);

    String[] getTheaterArray();

    List<String> getTheaterList();

    String getThesisTypeArray(int i);

    String[] getThesisTypeArray();

    List<String> getThesisTypeList();

    String getTitleArray(int i);

    String[] getTitleArray();

    List<String> getTitleList();

    String getTypeArray(int i);

    String[] getTypeArray();

    List<String> getTypeList();

    String getURLArray(int i);

    String[] getURLArray();

    List<String> getURLList();

    String getVersionArray(int i);

    String[] getVersionArray();

    List<String> getVersionList();

    String getVolumeArray(int i);

    String[] getVolumeArray();

    List<String> getVolumeList();

    String getYearAccessedArray(int i);

    String[] getYearAccessedArray();

    List<String> getYearAccessedList();

    String getYearArray(int i);

    String[] getYearArray();

    List<String> getYearList();

    void insertAbbreviatedCaseNumber(int i, String str);

    void insertAlbumTitle(int i, String str);

    void insertBookTitle(int i, String str);

    void insertBroadcastTitle(int i, String str);

    void insertBroadcaster(int i, String str);

    void insertCaseNumber(int i, String str);

    void insertChapterNumber(int i, String str);

    void insertCity(int i, String str);

    void insertComments(int i, String str);

    void insertConferenceName(int i, String str);

    void insertCountryRegion(int i, String str);

    void insertCourt(int i, String str);

    void insertDay(int i, String str);

    void insertDayAccessed(int i, String str);

    void insertDepartment(int i, String str);

    void insertDistributor(int i, String str);

    void insertEdition(int i, String str);

    void insertGuid(int i, String str);

    void insertInstitution(int i, String str);

    void insertInternetSiteTitle(int i, String str);

    void insertIssue(int i, String str);

    void insertJournalName(int i, String str);

    void insertLCID(int i, String str);

    void insertMedium(int i, String str);

    void insertMonth(int i, String str);

    void insertMonthAccessed(int i, String str);

    STString insertNewAbbreviatedCaseNumber(int i);

    STString insertNewAlbumTitle(int i);

    CTAuthorType insertNewAuthor(int i);

    STString insertNewBookTitle(int i);

    STString insertNewBroadcastTitle(int i);

    STString insertNewBroadcaster(int i);

    STString insertNewCaseNumber(int i);

    STString insertNewChapterNumber(int i);

    STString insertNewCity(int i);

    STString insertNewComments(int i);

    STString insertNewConferenceName(int i);

    STString insertNewCountryRegion(int i);

    STString insertNewCourt(int i);

    STString insertNewDay(int i);

    STString insertNewDayAccessed(int i);

    STString insertNewDepartment(int i);

    STString insertNewDistributor(int i);

    STString insertNewEdition(int i);

    STString insertNewGuid(int i);

    STString insertNewInstitution(int i);

    STString insertNewInternetSiteTitle(int i);

    STString insertNewIssue(int i);

    STString insertNewJournalName(int i);

    STLang insertNewLCID(int i);

    STString insertNewMedium(int i);

    STString insertNewMonth(int i);

    STString insertNewMonthAccessed(int i);

    STString insertNewNumberVolumes(int i);

    STString insertNewPages(int i);

    STString insertNewPatentNumber(int i);

    STString insertNewPeriodicalTitle(int i);

    STString insertNewProductionCompany(int i);

    STString insertNewPublicationTitle(int i);

    STString insertNewPublisher(int i);

    STString insertNewRecordingNumber(int i);

    STString insertNewRefOrder(int i);

    STString insertNewReporter(int i);

    STString insertNewShortTitle(int i);

    STSourceType insertNewSourceType(int i);

    STString insertNewStandardNumber(int i);

    STString insertNewStateProvince(int i);

    STString insertNewStation(int i);

    STString insertNewTag(int i);

    STString insertNewTheater(int i);

    STString insertNewThesisType(int i);

    STString insertNewTitle(int i);

    STString insertNewType(int i);

    STString insertNewURL(int i);

    STString insertNewVersion(int i);

    STString insertNewVolume(int i);

    STString insertNewYear(int i);

    STString insertNewYearAccessed(int i);

    void insertNumberVolumes(int i, String str);

    void insertPages(int i, String str);

    void insertPatentNumber(int i, String str);

    void insertPeriodicalTitle(int i, String str);

    void insertProductionCompany(int i, String str);

    void insertPublicationTitle(int i, String str);

    void insertPublisher(int i, String str);

    void insertRecordingNumber(int i, String str);

    void insertRefOrder(int i, String str);

    void insertReporter(int i, String str);

    void insertShortTitle(int i, String str);

    void insertSourceType(int i, STSourceType.Enum r2);

    void insertStandardNumber(int i, String str);

    void insertStateProvince(int i, String str);

    void insertStation(int i, String str);

    void insertTag(int i, String str);

    void insertTheater(int i, String str);

    void insertThesisType(int i, String str);

    void insertTitle(int i, String str);

    void insertType(int i, String str);

    void insertURL(int i, String str);

    void insertVersion(int i, String str);

    void insertVolume(int i, String str);

    void insertYear(int i, String str);

    void insertYearAccessed(int i, String str);

    void removeAbbreviatedCaseNumber(int i);

    void removeAlbumTitle(int i);

    void removeAuthor(int i);

    void removeBookTitle(int i);

    void removeBroadcastTitle(int i);

    void removeBroadcaster(int i);

    void removeCaseNumber(int i);

    void removeChapterNumber(int i);

    void removeCity(int i);

    void removeComments(int i);

    void removeConferenceName(int i);

    void removeCountryRegion(int i);

    void removeCourt(int i);

    void removeDay(int i);

    void removeDayAccessed(int i);

    void removeDepartment(int i);

    void removeDistributor(int i);

    void removeEdition(int i);

    void removeGuid(int i);

    void removeInstitution(int i);

    void removeInternetSiteTitle(int i);

    void removeIssue(int i);

    void removeJournalName(int i);

    void removeLCID(int i);

    void removeMedium(int i);

    void removeMonth(int i);

    void removeMonthAccessed(int i);

    void removeNumberVolumes(int i);

    void removePages(int i);

    void removePatentNumber(int i);

    void removePeriodicalTitle(int i);

    void removeProductionCompany(int i);

    void removePublicationTitle(int i);

    void removePublisher(int i);

    void removeRecordingNumber(int i);

    void removeRefOrder(int i);

    void removeReporter(int i);

    void removeShortTitle(int i);

    void removeSourceType(int i);

    void removeStandardNumber(int i);

    void removeStateProvince(int i);

    void removeStation(int i);

    void removeTag(int i);

    void removeTheater(int i);

    void removeThesisType(int i);

    void removeTitle(int i);

    void removeType(int i);

    void removeURL(int i);

    void removeVersion(int i);

    void removeVolume(int i);

    void removeYear(int i);

    void removeYearAccessed(int i);

    void setAbbreviatedCaseNumberArray(int i, String str);

    void setAbbreviatedCaseNumberArray(String[] strArr);

    void setAlbumTitleArray(int i, String str);

    void setAlbumTitleArray(String[] strArr);

    void setAuthorArray(int i, CTAuthorType cTAuthorType);

    void setAuthorArray(CTAuthorType[] cTAuthorTypeArr);

    void setBookTitleArray(int i, String str);

    void setBookTitleArray(String[] strArr);

    void setBroadcastTitleArray(int i, String str);

    void setBroadcastTitleArray(String[] strArr);

    void setBroadcasterArray(int i, String str);

    void setBroadcasterArray(String[] strArr);

    void setCaseNumberArray(int i, String str);

    void setCaseNumberArray(String[] strArr);

    void setChapterNumberArray(int i, String str);

    void setChapterNumberArray(String[] strArr);

    void setCityArray(int i, String str);

    void setCityArray(String[] strArr);

    void setCommentsArray(int i, String str);

    void setCommentsArray(String[] strArr);

    void setConferenceNameArray(int i, String str);

    void setConferenceNameArray(String[] strArr);

    void setCountryRegionArray(int i, String str);

    void setCountryRegionArray(String[] strArr);

    void setCourtArray(int i, String str);

    void setCourtArray(String[] strArr);

    void setDayAccessedArray(int i, String str);

    void setDayAccessedArray(String[] strArr);

    void setDayArray(int i, String str);

    void setDayArray(String[] strArr);

    void setDepartmentArray(int i, String str);

    void setDepartmentArray(String[] strArr);

    void setDistributorArray(int i, String str);

    void setDistributorArray(String[] strArr);

    void setEditionArray(int i, String str);

    void setEditionArray(String[] strArr);

    void setGuidArray(int i, String str);

    void setGuidArray(String[] strArr);

    void setInstitutionArray(int i, String str);

    void setInstitutionArray(String[] strArr);

    void setInternetSiteTitleArray(int i, String str);

    void setInternetSiteTitleArray(String[] strArr);

    void setIssueArray(int i, String str);

    void setIssueArray(String[] strArr);

    void setJournalNameArray(int i, String str);

    void setJournalNameArray(String[] strArr);

    void setLCIDArray(int i, String str);

    void setLCIDArray(String[] strArr);

    void setMediumArray(int i, String str);

    void setMediumArray(String[] strArr);

    void setMonthAccessedArray(int i, String str);

    void setMonthAccessedArray(String[] strArr);

    void setMonthArray(int i, String str);

    void setMonthArray(String[] strArr);

    void setNumberVolumesArray(int i, String str);

    void setNumberVolumesArray(String[] strArr);

    void setPagesArray(int i, String str);

    void setPagesArray(String[] strArr);

    void setPatentNumberArray(int i, String str);

    void setPatentNumberArray(String[] strArr);

    void setPeriodicalTitleArray(int i, String str);

    void setPeriodicalTitleArray(String[] strArr);

    void setProductionCompanyArray(int i, String str);

    void setProductionCompanyArray(String[] strArr);

    void setPublicationTitleArray(int i, String str);

    void setPublicationTitleArray(String[] strArr);

    void setPublisherArray(int i, String str);

    void setPublisherArray(String[] strArr);

    void setRecordingNumberArray(int i, String str);

    void setRecordingNumberArray(String[] strArr);

    void setRefOrderArray(int i, String str);

    void setRefOrderArray(String[] strArr);

    void setReporterArray(int i, String str);

    void setReporterArray(String[] strArr);

    void setShortTitleArray(int i, String str);

    void setShortTitleArray(String[] strArr);

    void setSourceTypeArray(int i, STSourceType.Enum r2);

    void setSourceTypeArray(STSourceType.Enum[] enumArr);

    void setStandardNumberArray(int i, String str);

    void setStandardNumberArray(String[] strArr);

    void setStateProvinceArray(int i, String str);

    void setStateProvinceArray(String[] strArr);

    void setStationArray(int i, String str);

    void setStationArray(String[] strArr);

    void setTagArray(int i, String str);

    void setTagArray(String[] strArr);

    void setTheaterArray(int i, String str);

    void setTheaterArray(String[] strArr);

    void setThesisTypeArray(int i, String str);

    void setThesisTypeArray(String[] strArr);

    void setTitleArray(int i, String str);

    void setTitleArray(String[] strArr);

    void setTypeArray(int i, String str);

    void setTypeArray(String[] strArr);

    void setURLArray(int i, String str);

    void setURLArray(String[] strArr);

    void setVersionArray(int i, String str);

    void setVersionArray(String[] strArr);

    void setVolumeArray(int i, String str);

    void setVolumeArray(String[] strArr);

    void setYearAccessedArray(int i, String str);

    void setYearAccessedArray(String[] strArr);

    void setYearArray(int i, String str);

    void setYearArray(String[] strArr);

    int sizeOfAbbreviatedCaseNumberArray();

    int sizeOfAlbumTitleArray();

    int sizeOfAuthorArray();

    int sizeOfBookTitleArray();

    int sizeOfBroadcastTitleArray();

    int sizeOfBroadcasterArray();

    int sizeOfCaseNumberArray();

    int sizeOfChapterNumberArray();

    int sizeOfCityArray();

    int sizeOfCommentsArray();

    int sizeOfConferenceNameArray();

    int sizeOfCountryRegionArray();

    int sizeOfCourtArray();

    int sizeOfDayAccessedArray();

    int sizeOfDayArray();

    int sizeOfDepartmentArray();

    int sizeOfDistributorArray();

    int sizeOfEditionArray();

    int sizeOfGuidArray();

    int sizeOfInstitutionArray();

    int sizeOfInternetSiteTitleArray();

    int sizeOfIssueArray();

    int sizeOfJournalNameArray();

    int sizeOfLCIDArray();

    int sizeOfMediumArray();

    int sizeOfMonthAccessedArray();

    int sizeOfMonthArray();

    int sizeOfNumberVolumesArray();

    int sizeOfPagesArray();

    int sizeOfPatentNumberArray();

    int sizeOfPeriodicalTitleArray();

    int sizeOfProductionCompanyArray();

    int sizeOfPublicationTitleArray();

    int sizeOfPublisherArray();

    int sizeOfRecordingNumberArray();

    int sizeOfRefOrderArray();

    int sizeOfReporterArray();

    int sizeOfShortTitleArray();

    int sizeOfSourceTypeArray();

    int sizeOfStandardNumberArray();

    int sizeOfStateProvinceArray();

    int sizeOfStationArray();

    int sizeOfTagArray();

    int sizeOfTheaterArray();

    int sizeOfThesisTypeArray();

    int sizeOfTitleArray();

    int sizeOfTypeArray();

    int sizeOfURLArray();

    int sizeOfVersionArray();

    int sizeOfVolumeArray();

    int sizeOfYearAccessedArray();

    int sizeOfYearArray();

    STString xgetAbbreviatedCaseNumberArray(int i);

    STString[] xgetAbbreviatedCaseNumberArray();

    List<STString> xgetAbbreviatedCaseNumberList();

    STString xgetAlbumTitleArray(int i);

    STString[] xgetAlbumTitleArray();

    List<STString> xgetAlbumTitleList();

    STString xgetBookTitleArray(int i);

    STString[] xgetBookTitleArray();

    List<STString> xgetBookTitleList();

    STString xgetBroadcastTitleArray(int i);

    STString[] xgetBroadcastTitleArray();

    List<STString> xgetBroadcastTitleList();

    STString xgetBroadcasterArray(int i);

    STString[] xgetBroadcasterArray();

    List<STString> xgetBroadcasterList();

    STString xgetCaseNumberArray(int i);

    STString[] xgetCaseNumberArray();

    List<STString> xgetCaseNumberList();

    STString xgetChapterNumberArray(int i);

    STString[] xgetChapterNumberArray();

    List<STString> xgetChapterNumberList();

    STString xgetCityArray(int i);

    STString[] xgetCityArray();

    List<STString> xgetCityList();

    STString xgetCommentsArray(int i);

    STString[] xgetCommentsArray();

    List<STString> xgetCommentsList();

    STString xgetConferenceNameArray(int i);

    STString[] xgetConferenceNameArray();

    List<STString> xgetConferenceNameList();

    STString xgetCountryRegionArray(int i);

    STString[] xgetCountryRegionArray();

    List<STString> xgetCountryRegionList();

    STString xgetCourtArray(int i);

    STString[] xgetCourtArray();

    List<STString> xgetCourtList();

    STString xgetDayAccessedArray(int i);

    STString[] xgetDayAccessedArray();

    List<STString> xgetDayAccessedList();

    STString xgetDayArray(int i);

    STString[] xgetDayArray();

    List<STString> xgetDayList();

    STString xgetDepartmentArray(int i);

    STString[] xgetDepartmentArray();

    List<STString> xgetDepartmentList();

    STString xgetDistributorArray(int i);

    STString[] xgetDistributorArray();

    List<STString> xgetDistributorList();

    STString xgetEditionArray(int i);

    STString[] xgetEditionArray();

    List<STString> xgetEditionList();

    STString xgetGuidArray(int i);

    STString[] xgetGuidArray();

    List<STString> xgetGuidList();

    STString xgetInstitutionArray(int i);

    STString[] xgetInstitutionArray();

    List<STString> xgetInstitutionList();

    STString xgetInternetSiteTitleArray(int i);

    STString[] xgetInternetSiteTitleArray();

    List<STString> xgetInternetSiteTitleList();

    STString xgetIssueArray(int i);

    STString[] xgetIssueArray();

    List<STString> xgetIssueList();

    STString xgetJournalNameArray(int i);

    STString[] xgetJournalNameArray();

    List<STString> xgetJournalNameList();

    STLang xgetLCIDArray(int i);

    STLang[] xgetLCIDArray();

    List<STLang> xgetLCIDList();

    STString xgetMediumArray(int i);

    STString[] xgetMediumArray();

    List<STString> xgetMediumList();

    STString xgetMonthAccessedArray(int i);

    STString[] xgetMonthAccessedArray();

    List<STString> xgetMonthAccessedList();

    STString xgetMonthArray(int i);

    STString[] xgetMonthArray();

    List<STString> xgetMonthList();

    STString xgetNumberVolumesArray(int i);

    STString[] xgetNumberVolumesArray();

    List<STString> xgetNumberVolumesList();

    STString xgetPagesArray(int i);

    STString[] xgetPagesArray();

    List<STString> xgetPagesList();

    STString xgetPatentNumberArray(int i);

    STString[] xgetPatentNumberArray();

    List<STString> xgetPatentNumberList();

    STString xgetPeriodicalTitleArray(int i);

    STString[] xgetPeriodicalTitleArray();

    List<STString> xgetPeriodicalTitleList();

    STString xgetProductionCompanyArray(int i);

    STString[] xgetProductionCompanyArray();

    List<STString> xgetProductionCompanyList();

    STString xgetPublicationTitleArray(int i);

    STString[] xgetPublicationTitleArray();

    List<STString> xgetPublicationTitleList();

    STString xgetPublisherArray(int i);

    STString[] xgetPublisherArray();

    List<STString> xgetPublisherList();

    STString xgetRecordingNumberArray(int i);

    STString[] xgetRecordingNumberArray();

    List<STString> xgetRecordingNumberList();

    STString xgetRefOrderArray(int i);

    STString[] xgetRefOrderArray();

    List<STString> xgetRefOrderList();

    STString xgetReporterArray(int i);

    STString[] xgetReporterArray();

    List<STString> xgetReporterList();

    STString xgetShortTitleArray(int i);

    STString[] xgetShortTitleArray();

    List<STString> xgetShortTitleList();

    STSourceType xgetSourceTypeArray(int i);

    STSourceType[] xgetSourceTypeArray();

    List<STSourceType> xgetSourceTypeList();

    STString xgetStandardNumberArray(int i);

    STString[] xgetStandardNumberArray();

    List<STString> xgetStandardNumberList();

    STString xgetStateProvinceArray(int i);

    STString[] xgetStateProvinceArray();

    List<STString> xgetStateProvinceList();

    STString xgetStationArray(int i);

    STString[] xgetStationArray();

    List<STString> xgetStationList();

    STString xgetTagArray(int i);

    STString[] xgetTagArray();

    List<STString> xgetTagList();

    STString xgetTheaterArray(int i);

    STString[] xgetTheaterArray();

    List<STString> xgetTheaterList();

    STString xgetThesisTypeArray(int i);

    STString[] xgetThesisTypeArray();

    List<STString> xgetThesisTypeList();

    STString xgetTitleArray(int i);

    STString[] xgetTitleArray();

    List<STString> xgetTitleList();

    STString xgetTypeArray(int i);

    STString[] xgetTypeArray();

    List<STString> xgetTypeList();

    STString xgetURLArray(int i);

    STString[] xgetURLArray();

    List<STString> xgetURLList();

    STString xgetVersionArray(int i);

    STString[] xgetVersionArray();

    List<STString> xgetVersionList();

    STString xgetVolumeArray(int i);

    STString[] xgetVolumeArray();

    List<STString> xgetVolumeList();

    STString xgetYearAccessedArray(int i);

    STString[] xgetYearAccessedArray();

    List<STString> xgetYearAccessedList();

    STString xgetYearArray(int i);

    STString[] xgetYearArray();

    List<STString> xgetYearList();

    void xsetAbbreviatedCaseNumberArray(int i, STString sTString);

    void xsetAbbreviatedCaseNumberArray(STString[] sTStringArr);

    void xsetAlbumTitleArray(int i, STString sTString);

    void xsetAlbumTitleArray(STString[] sTStringArr);

    void xsetBookTitleArray(int i, STString sTString);

    void xsetBookTitleArray(STString[] sTStringArr);

    void xsetBroadcastTitleArray(int i, STString sTString);

    void xsetBroadcastTitleArray(STString[] sTStringArr);

    void xsetBroadcasterArray(int i, STString sTString);

    void xsetBroadcasterArray(STString[] sTStringArr);

    void xsetCaseNumberArray(int i, STString sTString);

    void xsetCaseNumberArray(STString[] sTStringArr);

    void xsetChapterNumberArray(int i, STString sTString);

    void xsetChapterNumberArray(STString[] sTStringArr);

    void xsetCityArray(int i, STString sTString);

    void xsetCityArray(STString[] sTStringArr);

    void xsetCommentsArray(int i, STString sTString);

    void xsetCommentsArray(STString[] sTStringArr);

    void xsetConferenceNameArray(int i, STString sTString);

    void xsetConferenceNameArray(STString[] sTStringArr);

    void xsetCountryRegionArray(int i, STString sTString);

    void xsetCountryRegionArray(STString[] sTStringArr);

    void xsetCourtArray(int i, STString sTString);

    void xsetCourtArray(STString[] sTStringArr);

    void xsetDayAccessedArray(int i, STString sTString);

    void xsetDayAccessedArray(STString[] sTStringArr);

    void xsetDayArray(int i, STString sTString);

    void xsetDayArray(STString[] sTStringArr);

    void xsetDepartmentArray(int i, STString sTString);

    void xsetDepartmentArray(STString[] sTStringArr);

    void xsetDistributorArray(int i, STString sTString);

    void xsetDistributorArray(STString[] sTStringArr);

    void xsetEditionArray(int i, STString sTString);

    void xsetEditionArray(STString[] sTStringArr);

    void xsetGuidArray(int i, STString sTString);

    void xsetGuidArray(STString[] sTStringArr);

    void xsetInstitutionArray(int i, STString sTString);

    void xsetInstitutionArray(STString[] sTStringArr);

    void xsetInternetSiteTitleArray(int i, STString sTString);

    void xsetInternetSiteTitleArray(STString[] sTStringArr);

    void xsetIssueArray(int i, STString sTString);

    void xsetIssueArray(STString[] sTStringArr);

    void xsetJournalNameArray(int i, STString sTString);

    void xsetJournalNameArray(STString[] sTStringArr);

    void xsetLCIDArray(int i, STLang sTLang);

    void xsetLCIDArray(STLang[] sTLangArr);

    void xsetMediumArray(int i, STString sTString);

    void xsetMediumArray(STString[] sTStringArr);

    void xsetMonthAccessedArray(int i, STString sTString);

    void xsetMonthAccessedArray(STString[] sTStringArr);

    void xsetMonthArray(int i, STString sTString);

    void xsetMonthArray(STString[] sTStringArr);

    void xsetNumberVolumesArray(int i, STString sTString);

    void xsetNumberVolumesArray(STString[] sTStringArr);

    void xsetPagesArray(int i, STString sTString);

    void xsetPagesArray(STString[] sTStringArr);

    void xsetPatentNumberArray(int i, STString sTString);

    void xsetPatentNumberArray(STString[] sTStringArr);

    void xsetPeriodicalTitleArray(int i, STString sTString);

    void xsetPeriodicalTitleArray(STString[] sTStringArr);

    void xsetProductionCompanyArray(int i, STString sTString);

    void xsetProductionCompanyArray(STString[] sTStringArr);

    void xsetPublicationTitleArray(int i, STString sTString);

    void xsetPublicationTitleArray(STString[] sTStringArr);

    void xsetPublisherArray(int i, STString sTString);

    void xsetPublisherArray(STString[] sTStringArr);

    void xsetRecordingNumberArray(int i, STString sTString);

    void xsetRecordingNumberArray(STString[] sTStringArr);

    void xsetRefOrderArray(int i, STString sTString);

    void xsetRefOrderArray(STString[] sTStringArr);

    void xsetReporterArray(int i, STString sTString);

    void xsetReporterArray(STString[] sTStringArr);

    void xsetShortTitleArray(int i, STString sTString);

    void xsetShortTitleArray(STString[] sTStringArr);

    void xsetSourceTypeArray(int i, STSourceType sTSourceType);

    void xsetSourceTypeArray(STSourceType[] sTSourceTypeArr);

    void xsetStandardNumberArray(int i, STString sTString);

    void xsetStandardNumberArray(STString[] sTStringArr);

    void xsetStateProvinceArray(int i, STString sTString);

    void xsetStateProvinceArray(STString[] sTStringArr);

    void xsetStationArray(int i, STString sTString);

    void xsetStationArray(STString[] sTStringArr);

    void xsetTagArray(int i, STString sTString);

    void xsetTagArray(STString[] sTStringArr);

    void xsetTheaterArray(int i, STString sTString);

    void xsetTheaterArray(STString[] sTStringArr);

    void xsetThesisTypeArray(int i, STString sTString);

    void xsetThesisTypeArray(STString[] sTStringArr);

    void xsetTitleArray(int i, STString sTString);

    void xsetTitleArray(STString[] sTStringArr);

    void xsetTypeArray(int i, STString sTString);

    void xsetTypeArray(STString[] sTStringArr);

    void xsetURLArray(int i, STString sTString);

    void xsetURLArray(STString[] sTStringArr);

    void xsetVersionArray(int i, STString sTString);

    void xsetVersionArray(STString[] sTStringArr);

    void xsetVolumeArray(int i, STString sTString);

    void xsetVolumeArray(STString[] sTStringArr);

    void xsetYearAccessedArray(int i, STString sTString);

    void xsetYearAccessedArray(STString[] sTStringArr);

    void xsetYearArray(int i, STString sTString);

    void xsetYearArray(STString[] sTStringArr);
}
