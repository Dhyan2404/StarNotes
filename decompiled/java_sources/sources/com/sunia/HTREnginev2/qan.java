package com.sunia.HTREnginev2;

import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public class qan implements XMLDocumentFilter {

    /* renamed from: e */
    public XMLDocumentHandler f81821e;

    /* renamed from: f */
    public XMLDocumentHandler f81822f;

    /* renamed from: g */
    public XMLDocumentSource f81823g;

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f81822f.characters(xMLString, augmentations);
        this.f81821e.characters(xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f81822f.comment(xMLString, augmentations);
        this.f81821e.comment(xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        this.f81822f.doctypeDecl(str, str2, str3, augmentations);
        this.f81821e.doctypeDecl(str, str2, str3, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        this.f81822f.emptyElement(qName, xMLAttributes, augmentations);
        this.f81821e.emptyElement(qName, xMLAttributes, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.f81822f.endCDATA(augmentations);
        this.f81821e.endCDATA(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        this.f81822f.endDocument(augmentations);
        this.f81821e.endDocument(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        this.f81822f.endElement(qName, augmentations);
        this.f81821e.endElement(qName, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        this.f81822f.endGeneralEntity(str, augmentations);
        this.f81821e.endGeneralEntity(str, augmentations);
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.f81821e;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.f81823g;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f81822f.ignorableWhitespace(xMLString, augmentations);
        this.f81821e.ignorableWhitespace(xMLString, augmentations);
    }

    /* renamed from: o */
    public XMLDocumentHandler m56663o() {
        return this.f81822f;
    }

    /* renamed from: p */
    public void m56664p(XMLDocumentHandler xMLDocumentHandler) {
        this.f81822f = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f81822f.processingInstruction(str, xMLString, augmentations);
        this.f81821e.processingInstruction(str, xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.f81821e = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.f81823g = xMLDocumentSource;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.f81822f.startCDATA(augmentations);
        this.f81821e.startCDATA(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.f81822f.startDocument(xMLLocator, str, namespaceContext, augmentations);
        this.f81821e.startDocument(xMLLocator, str, namespaceContext, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        this.f81822f.startElement(qName, xMLAttributes, augmentations);
        this.f81821e.startElement(qName, xMLAttributes, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        this.f81822f.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
        this.f81821e.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        this.f81822f.textDecl(str, str2, augmentations);
        this.f81821e.textDecl(str, str2, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        this.f81822f.xmlDecl(str, str2, str3, augmentations);
        this.f81821e.xmlDecl(str, str2, str3, augmentations);
    }
}
