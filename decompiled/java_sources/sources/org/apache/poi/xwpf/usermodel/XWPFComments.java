package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTComment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTComments;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CommentsDocument;

/* loaded from: classes13.dex */
public class XWPFComments extends POIXMLDocumentPart {
    private final List<XWPFComment> comments;
    private CTComments ctComments;
    XWPFDocument document;
    private final List<XWPFPictureData> pictures;

    public XWPFComments(POIXMLDocumentPart pOIXMLDocumentPart, PackagePart packagePart) {
        super(pOIXMLDocumentPart, packagePart);
        this.comments = new ArrayList();
        this.pictures = new ArrayList();
        if (getParent() instanceof XWPFDocument) {
            XWPFDocument xWPFDocument = (XWPFDocument) getParent();
            this.document = xWPFDocument;
            xWPFDocument.getClass();
        } else {
            throw new IllegalStateException("Parent is not a XWPFDocuemnt: " + getParent());
        }
    }

    public String addPictureData(InputStream inputStream, int i) throws InvalidFormatException, IOException {
        return addPictureData(IOUtils.toByteArrayWithMaxLength(inputStream, XWPFPictureData.getMaxImageSize()), i);
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTComments.type.getName().getNamespaceURI(), "comments"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.ctComments.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XWPFComment createComment(BigInteger bigInteger) {
        CTComment addNewComment = this.ctComments.addNewComment();
        addNewComment.setId(bigInteger);
        XWPFComment xWPFComment = new XWPFComment(addNewComment, this);
        this.comments.add(xWPFComment);
        return xWPFComment;
    }

    public List<XWPFPictureData> getAllPictures() {
        return Collections.unmodifiableList(this.pictures);
    }

    public XWPFComment getComment(int i) {
        if (i < 0 || i >= this.ctComments.sizeOfCommentArray()) {
            return null;
        }
        return getComments().get(i);
    }

    public XWPFComment getCommentByID(String str) {
        for (XWPFComment xWPFComment : this.comments) {
            if (xWPFComment.getId().equals(str)) {
                return xWPFComment;
            }
        }
        return null;
    }

    public List<XWPFComment> getComments() {
        return this.comments;
    }

    public CTComments getCtComments() {
        return this.ctComments;
    }

    public XWPFDocument getXWPFDocument() {
        XWPFDocument xWPFDocument = this.document;
        return xWPFDocument != null ? xWPFDocument : (XWPFDocument) getParent();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                CTComments comments = CommentsDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getComments();
                this.ctComments = comments;
                Iterator<CTComment> it2 = comments.getCommentList().iterator();
                while (it2.hasNext()) {
                    this.comments.add(new XWPFComment(it2.next(), this));
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
                    if (pOIXMLDocumentPart instanceof XWPFPictureData) {
                        XWPFPictureData xWPFPictureData = (XWPFPictureData) pOIXMLDocumentPart;
                        this.pictures.add(xWPFPictureData);
                        this.document.registerPackagePictureData(xWPFPictureData);
                    }
                }
            } finally {
            }
        } catch (XmlException e) {
            throw new POIXMLException("Unable to read comments", e);
        }
    }

    public boolean removeComment(int i) {
        if (i < 0 || i >= this.ctComments.sizeOfCommentArray()) {
            return false;
        }
        this.comments.remove(i);
        this.ctComments.removeComment(i);
        return true;
    }

    @Internal
    public void setCtComments(CTComments cTComments) {
        this.ctComments = cTComments;
    }

    public void setXWPFDocument(XWPFDocument xWPFDocument) {
        this.document = xWPFDocument;
    }

    public String addPictureData(InputStream inputStream, PictureType pictureType) throws InvalidFormatException, IOException {
        return addPictureData(IOUtils.toByteArrayWithMaxLength(inputStream, XWPFPictureData.getMaxImageSize()), pictureType);
    }

    public XWPFComment getComment(CTComment cTComment) {
        for (XWPFComment xWPFComment : this.comments) {
            if (xWPFComment.getCtComment() == cTComment) {
                return xWPFComment;
            }
        }
        return null;
    }

    public String addPictureData(byte[] bArr, int i) throws InvalidFormatException {
        return addPictureData(bArr, PictureType.findByOoxmlId(i));
    }

    public String addPictureData(byte[] bArr, PictureType pictureType) throws InvalidFormatException {
        if (pictureType != null) {
            XWPFPictureData findPackagePictureData = this.document.findPackagePictureData(bArr);
            POIXMLRelation pOIXMLRelation = XWPFPictureData.RELATIONS[pictureType.ooxmlId];
            if (findPackagePictureData == null) {
                XWPFPictureData xWPFPictureData = (XWPFPictureData) createRelationship(pOIXMLRelation, XWPFFactory.getInstance(), getXWPFDocument().getNextPicNameNumber(pictureType));
                try {
                    OutputStream outputStream = xWPFPictureData.getPackagePart().getOutputStream();
                    try {
                        outputStream.write(bArr);
                        outputStream.close();
                        this.document.registerPackagePictureData(xWPFPictureData);
                        this.pictures.add(xWPFPictureData);
                        return getRelationId(xWPFPictureData);
                    } finally {
                    }
                } catch (IOException e) {
                    throw new POIXMLException(e);
                }
            } else {
                if (!getRelations().contains(findPackagePictureData)) {
                    POIXMLDocumentPart.RelationPart addRelation = addRelation(null, XWPFRelation.IMAGES, findPackagePictureData);
                    this.pictures.add(findPackagePictureData);
                    return addRelation.getRelationship().getId();
                }
                return getRelationId(findPackagePictureData);
            }
        } else {
            throw new InvalidFormatException("pictureType is not supported");
        }
    }

    public XWPFComments() {
        this.comments = new ArrayList();
        this.pictures = new ArrayList();
        this.ctComments = CTComments.Factory.newInstance();
    }
}
