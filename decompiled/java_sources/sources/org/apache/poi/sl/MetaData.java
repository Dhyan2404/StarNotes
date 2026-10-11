package org.apache.poi.sl;

import java.util.Date;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.POIDocument;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLProperties;

/* loaded from: classes12.dex */
public class MetaData {
    private String application;
    private String author;
    private String category;
    private String company;
    private long created;
    private String description;
    private String identifier;
    private String keywords;
    private long modified;
    private String subject;
    private String title;

    public String getApplication() {
        return this.application;
    }

    public String getAuthor() {
        return this.author;
    }

    public String getCategory() {
        return this.category;
    }

    public String getCompany() {
        return this.company;
    }

    public long getCreated() {
        return this.created;
    }

    public String getDescription() {
        return this.description;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getKeywords() {
        return this.keywords;
    }

    public long getModified() {
        return this.modified;
    }

    public String getSubject() {
        return this.subject;
    }

    public String getTitle() {
        return this.title;
    }

    public void readProperties(Object obj) {
        if (obj instanceof POIDocument) {
            readProperties((POIDocument) obj);
        } else if (obj instanceof POIXMLDocument) {
            readProperties((POIXMLDocument) obj);
        }
    }

    public void setApplication(String str) {
        this.application = str;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public void setCreated(long j) {
        this.created = j;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public void setKeywords(String str) {
        this.keywords = str;
    }

    public void setModified(long j) {
        this.modified = j;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PPTMetaData{application='" + this.application + Chars.QUOTE + ", author='" + this.author + Chars.QUOTE + ", title='" + this.title + Chars.QUOTE + ", subject='" + this.subject + Chars.QUOTE + ", category='" + this.category + Chars.QUOTE + ", company='" + this.company + Chars.QUOTE + ", keywords='" + this.keywords + Chars.QUOTE + ", description='" + this.description + Chars.QUOTE + ", identifier='" + this.identifier + Chars.QUOTE + ", created=" + this.created + ", modified=" + this.modified + '}';
    }

    public void readProperties(POIDocument pOIDocument) {
        SummaryInformation summaryInformation = pOIDocument.getSummaryInformation();
        if (summaryInformation != null) {
            this.application = summaryInformation.getApplicationName();
            this.author = summaryInformation.getAuthor();
            this.title = summaryInformation.getTitle();
            this.subject = summaryInformation.getSubject();
            this.keywords = summaryInformation.getKeywords();
            this.application = summaryInformation.getApplicationName();
            Date createDateTime = summaryInformation.getCreateDateTime();
            if (createDateTime != null) {
                this.created = createDateTime.getTime();
            }
            this.modified = summaryInformation.getEditTime();
        }
        DocumentSummaryInformation documentSummaryInformation = pOIDocument.getDocumentSummaryInformation();
        if (documentSummaryInformation != null) {
            this.category = documentSummaryInformation.getCategory();
            this.company = documentSummaryInformation.getCompany();
        }
    }

    public void readProperties(POIXMLDocument pOIXMLDocument) {
        POIXMLProperties properties = pOIXMLDocument.getProperties();
        POIXMLProperties.CoreProperties coreProperties = properties.getCoreProperties();
        if (coreProperties != null) {
            this.author = coreProperties.getCreator();
            this.title = coreProperties.getTitle();
            this.subject = coreProperties.getSubject();
            this.category = coreProperties.getCategory();
            this.keywords = coreProperties.getKeywords();
            this.description = coreProperties.getDescription();
            this.identifier = coreProperties.getIdentifier();
            Date created = coreProperties.getCreated();
            if (created != null) {
                this.created = created.getTime();
            }
            Date modified = coreProperties.getModified();
            if (modified != null) {
                this.modified = modified.getTime();
            }
        }
        POIXMLProperties.ExtendedProperties extendedProperties = properties.getExtendedProperties();
        if (extendedProperties != null) {
            this.application = extendedProperties.getApplication();
            this.company = extendedProperties.getCompany();
        }
    }
}
