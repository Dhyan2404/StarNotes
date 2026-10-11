package org.apache.poi.xssf.usermodel;

import com.microsoft.schemas.office.excel.CTClientData;
import com.microsoft.schemas.office.excel.STObjectType;
import com.microsoft.schemas.office.office.CTIdMap;
import com.microsoft.schemas.office.office.CTShapeLayout;
import com.microsoft.schemas.office.office.STConnectType;
import com.microsoft.schemas.office.office.STInsetMode;
import com.microsoft.schemas.office.office.ShapelayoutDocument;
import com.microsoft.schemas.vml.CTGroup;
import com.microsoft.schemas.vml.CTPath;
import com.microsoft.schemas.vml.CTShadow;
import com.microsoft.schemas.vml.CTShape;
import com.microsoft.schemas.vml.CTShapetype;
import com.microsoft.schemas.vml.STExt;
import com.microsoft.schemas.vml.STStrokeJoinStyle;
import com.onegravity.rteditor.utils.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.schemas.vmldrawing.XmlDocument;
import org.apache.poi.util.Internal;
import org.apache.poi.util.ReplacingInputStream;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes13.dex */
public final class XSSFVMLDrawing extends POIXMLDocumentPart {
    private static final String COMMENT_SHAPE_TYPE_ID = "_x0000_t202";
    public static final QName QNAME_VMLDRAWING = new QName("urn:schemas-poi-apache-org:vmldrawing", "xml");
    private static final Pattern ptrn_shapeId = Pattern.compile("_x0000_s(\\d+)");
    private int _shapeId;
    private String _shapeTypeId;
    private XmlDocument root;

    public XSSFVMLDrawing() {
        this._shapeId = 1024;
        newDrawing();
    }

    private boolean matchCommentShape(XmlObject xmlObject, int i, int i2) {
        if (!(xmlObject instanceof CTShape)) {
            return false;
        }
        CTShape cTShape = (CTShape) xmlObject;
        if (cTShape.sizeOfClientDataArray() == 0) {
            return false;
        }
        CTClientData clientDataArray = cTShape.getClientDataArray(0);
        if (clientDataArray.getObjectType() != STObjectType.NOTE) {
            return false;
        }
        return clientDataArray.getRowArray(0).intValue() == i && clientDataArray.getColumnArray(0).intValue() == i2;
    }

    private void newDrawing() {
        XmlDocument newInstance = XmlDocument.Factory.newInstance();
        this.root = newInstance;
        XmlCursor newCursor = newInstance.addNewXml().newCursor();
        try {
            ShapelayoutDocument newInstance2 = ShapelayoutDocument.Factory.newInstance();
            CTShapeLayout addNewShapelayout = newInstance2.addNewShapelayout();
            STExt.Enum r3 = STExt.EDIT;
            addNewShapelayout.setExt(r3);
            CTIdMap addNewIdmap = addNewShapelayout.addNewIdmap();
            addNewIdmap.setExt(r3);
            addNewIdmap.setData("1");
            newCursor.toEndToken();
            XmlCursor newCursor2 = newInstance2.newCursor();
            try {
                newCursor2.copyXmlContents(newCursor);
                newCursor2.close();
                CTGroup newInstance3 = CTGroup.Factory.newInstance();
                CTShapetype addNewShapetype = newInstance3.addNewShapetype();
                this._shapeTypeId = COMMENT_SHAPE_TYPE_ID;
                addNewShapetype.setId(COMMENT_SHAPE_TYPE_ID);
                addNewShapetype.setCoordsize("21600,21600");
                addNewShapetype.setSpt(202.0f);
                addNewShapetype.setPath2("m,l,21600r21600,l21600,xe");
                addNewShapetype.addNewStroke().setJoinstyle(STStrokeJoinStyle.MITER);
                CTPath addNewPath = addNewShapetype.addNewPath();
                addNewPath.setGradientshapeok(STTrueFalse.f115764T);
                addNewPath.setConnecttype(STConnectType.RECT);
                newCursor.toEndToken();
                newCursor2 = newInstance3.newCursor();
                try {
                    newCursor2.copyXmlContents(newCursor);
                    newCursor2.close();
                    newCursor.close();
                } finally {
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            write(outputStream);
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

    public CTShape findCommentShape(int i, int i2) {
        XmlCursor newCursor = this.root.getXml().newCursor();
        try {
            for (boolean firstChild = newCursor.toFirstChild(); firstChild; firstChild = newCursor.toNextSibling()) {
                XmlObject object = newCursor.getObject();
                if (matchCommentShape(object, i, i2)) {
                    CTShape cTShape = (CTShape) object;
                    newCursor.close();
                    return cTShape;
                }
            }
            newCursor.close();
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XmlDocument getDocument() {
        return this.root;
    }

    public List<XmlObject> getItems() {
        ArrayList arrayList = new ArrayList();
        XmlCursor newCursor = this.root.getXml().newCursor();
        try {
            for (boolean firstChild = newCursor.toFirstChild(); firstChild; firstChild = newCursor.toNextSibling()) {
                arrayList.add(newCursor.getObject());
            }
            newCursor.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Internal
    public CTShape newCommentShape() {
        CTGroup newInstance = CTGroup.Factory.newInstance();
        CTShape addNewShape = newInstance.addNewShape();
        StringBuilder sb = new StringBuilder();
        sb.append("_x0000_s");
        int i = this._shapeId + 1;
        this._shapeId = i;
        sb.append(i);
        addNewShape.setId(sb.toString());
        addNewShape.setType("#" + this._shapeTypeId);
        addNewShape.setStyle("position:absolute; visibility:hidden");
        addNewShape.setFillcolor("#ffffe1");
        addNewShape.setInsetmode(STInsetMode.AUTO);
        addNewShape.addNewFill().setColor("#ffffe1");
        CTShadow addNewShadow = addNewShape.addNewShadow();
        STTrueFalse.Enum r3 = STTrueFalse.f115764T;
        addNewShadow.setOn(r3);
        addNewShadow.setColor("black");
        addNewShadow.setObscured(r3);
        addNewShape.addNewPath().setConnecttype(STConnectType.NONE);
        addNewShape.addNewTextbox().setStyle("mso-direction-alt:auto");
        CTClientData addNewClientData = addNewShape.addNewClientData();
        addNewClientData.setObjectType(STObjectType.NOTE);
        addNewClientData.addNewMoveWithCells();
        addNewClientData.addNewSizeWithCells();
        addNewClientData.addNewAnchor().setStringValue("1, 15, 0, 2, 3, 15, 3, 16");
        addNewClientData.addNewAutoFill().setStringValue("False");
        addNewClientData.addNewRow().setBigIntegerValue(BigInteger.valueOf(0L));
        addNewClientData.addNewColumn().setBigIntegerValue(BigInteger.valueOf(0L));
        XmlCursor newCursor = this.root.getXml().newCursor();
        try {
            newCursor.toEndToken();
            XmlCursor newCursor2 = newInstance.newCursor();
            try {
                newCursor2.copyXmlContents(newCursor);
                newCursor.toPrevSibling();
                CTShape cTShape = (CTShape) newCursor.getObject();
                newCursor2.close();
                newCursor.close();
                return cTShape;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void read(InputStream inputStream) throws IOException, XmlException {
        String id;
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setLoadSubstituteNamespaces(Collections.singletonMap("", QNAME_VMLDRAWING.getNamespaceURI()));
        xmlOptions.setDocumentType(XmlDocument.type);
        XmlDocument parse = XmlDocument.Factory.parse(new ReplacingInputStream(new ReplacingInputStream(inputStream, Constants.TAG_BR_INVALID, "<br/>"), " xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\"", ""), xmlOptions);
        this.root = parse;
        XmlCursor newCursor = parse.getXml().newCursor();
        try {
            for (boolean firstChild = newCursor.toFirstChild(); firstChild; firstChild = newCursor.toNextSibling()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTShapetype) {
                    this._shapeTypeId = ((CTShapetype) object).getId();
                } else if ((object instanceof CTShape) && (id = ((CTShape) object).getId()) != null) {
                    Matcher matcher = ptrn_shapeId.matcher(id);
                    if (matcher.find()) {
                        this._shapeId = Math.max(this._shapeId, Integer.parseInt(matcher.group(1)));
                    }
                }
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public boolean removeCommentShape(int i, int i2) {
        XmlCursor newCursor = this.root.getXml().newCursor();
        try {
            for (boolean firstChild = newCursor.toFirstChild(); firstChild; firstChild = newCursor.toNextSibling()) {
                if (matchCommentShape(newCursor.getObject(), i, i2)) {
                    newCursor.removeXml();
                    newCursor.close();
                    return true;
                }
            }
            newCursor.close();
            return false;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void write(OutputStream outputStream) throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveImplicitNamespaces(Collections.singletonMap("", QNAME_VMLDRAWING.getNamespaceURI()));
        this.root.save(outputStream, xmlOptions);
    }

    public XSSFVMLDrawing(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        this._shapeId = 1024;
        InputStream inputStream = getPackagePart().getInputStream();
        try {
            read(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
