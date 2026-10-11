package com.sun.xml.internal.stream.events;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import javax.xml.stream.Location;
import javax.xml.stream.events.StartDocument;

/* loaded from: classes10.dex */
public class StartDocumentEvent extends DummyEvent implements StartDocument {
    protected String fEncodingScheam;
    private boolean fEncodingSchemeSet;
    protected boolean fStandalone;
    private boolean fStandaloneSet;
    protected String fSystemId;
    protected String fVersion;

    public StartDocumentEvent() {
        this("UTF-8", "1.0", true, null);
    }

    public void clear() {
        this.fEncodingScheam = "UTF-8";
        this.fStandalone = true;
        this.fVersion = "1.0";
        this.fEncodingSchemeSet = false;
        this.fStandaloneSet = false;
    }

    @Override // javax.xml.stream.events.StartDocument
    public boolean encodingSet() {
        return this.fEncodingSchemeSet;
    }

    @Override // javax.xml.stream.events.StartDocument
    public String getCharacterEncodingScheme() {
        return this.fEncodingScheam;
    }

    @Override // javax.xml.stream.events.StartDocument
    public String getSystemId() {
        Location location = this.fLocation;
        return location == null ? "" : location.getSystemId();
    }

    @Override // javax.xml.stream.events.StartDocument
    public String getVersion() {
        return this.fVersion;
    }

    public void init() {
        setEventType(7);
    }

    @Override // javax.xml.stream.events.StartDocument
    public boolean isStandalone() {
        return this.fStandalone;
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public boolean isStartDocument() {
        return true;
    }

    public void setDeclaredEncoding(boolean z) {
        this.fEncodingSchemeSet = z;
    }

    public void setEncoding(String str) {
        this.fEncodingScheam = str;
    }

    public void setStandalone(boolean z) {
        this.fStandaloneSet = true;
        this.fStandalone = z;
    }

    public void setVersion(String str) {
        this.fVersion = str;
    }

    @Override // javax.xml.stream.events.StartDocument
    public boolean standaloneSet() {
        return this.fStandaloneSet;
    }

    public String toString() {
        String str = ("<?xml version=\"" + this.fVersion + "\"") + " encoding='" + this.fEncodingScheam + CloudStorageConstants.SINGLE_QUOTES;
        if (!this.fStandaloneSet) {
            return str + "?>";
        }
        if (this.fStandalone) {
            return str + " standalone='yes'?>";
        }
        return str + " standalone='no'?>";
    }

    public StartDocumentEvent(String str) {
        this(str, "1.0", true, null);
    }

    public StartDocumentEvent(String str, String str2) {
        this(str, str2, true, null);
    }

    public void setStandalone(String str) {
        this.fStandaloneSet = true;
        if (str == null) {
            this.fStandalone = true;
        } else if (str.equals("yes")) {
            this.fStandalone = true;
        } else {
            this.fStandalone = false;
        }
    }

    public StartDocumentEvent(String str, String str2, boolean z) {
        this(str, str2, z, null);
    }

    public StartDocumentEvent(String str, String str2, boolean z, Location location) {
        init();
        this.fEncodingScheam = str;
        this.fVersion = str2;
        this.fStandalone = z;
        this.fEncodingSchemeSet = false;
        this.fStandaloneSet = false;
        this.fLocation = location;
    }
}
