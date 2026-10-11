package com.onegravity.rteditor.converter.tagsoup;

import org.xml.sax.SAXException;

/* loaded from: classes7.dex */
public interface ScanHandler {
    void adup(char[] cArr, int i, int i2) throws SAXException;

    void aname(char[] cArr, int i, int i2) throws SAXException;

    void aval(char[] cArr, int i, int i2) throws SAXException;

    void cdsect(char[] cArr, int i, int i2) throws SAXException;

    void cmnt(char[] cArr, int i, int i2) throws SAXException;

    void decl(char[] cArr, int i, int i2) throws SAXException;

    void entity(char[] cArr, int i, int i2) throws SAXException;

    void eof(char[] cArr, int i, int i2) throws SAXException;

    void etag(char[] cArr, int i, int i2) throws SAXException;

    int getEntity();

    /* renamed from: gi */
    void mo31655gi(char[] cArr, int i, int i2) throws SAXException;

    void pcdata(char[] cArr, int i, int i2) throws SAXException;

    /* renamed from: pi */
    void mo31665pi(char[] cArr, int i, int i2) throws SAXException;

    void pitarget(char[] cArr, int i, int i2) throws SAXException;

    void stagc(char[] cArr, int i, int i2) throws SAXException;

    void stage(char[] cArr, int i, int i2) throws SAXException;
}
