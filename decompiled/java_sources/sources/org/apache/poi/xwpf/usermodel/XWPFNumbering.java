package org.apache.poi.xwpf.usermodel;

import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTAbstractNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNum;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.NumberingDocument;

/* loaded from: classes13.dex */
public class XWPFNumbering extends POIXMLDocumentPart {
    protected List<XWPFAbstractNum> abstractNums;
    private CTNumbering ctNumbering;
    boolean isNew;
    protected List<XWPFNum> nums;

    public XWPFNumbering(PackagePart packagePart) {
        super(packagePart);
        this.abstractNums = new ArrayList();
        this.nums = new ArrayList();
        this.isNew = true;
    }

    private BigInteger findNextAbstractNumberingId() {
        Iterator<XWPFAbstractNum> it2 = this.abstractNums.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j = Math.max(j, it2.next().getAbstractNum().getAbstractNumId().longValue());
        }
        return BigInteger.valueOf(j + 1);
    }

    public BigInteger addAbstractNum(XWPFAbstractNum xWPFAbstractNum) {
        int size = this.abstractNums.size();
        if (xWPFAbstractNum.getAbstractNum() != null) {
            CTAbstractNum addNewAbstractNum = this.ctNumbering.addNewAbstractNum();
            addNewAbstractNum.set(xWPFAbstractNum.getAbstractNum());
            xWPFAbstractNum.setCtAbstractNum(addNewAbstractNum);
        } else {
            xWPFAbstractNum.setCtAbstractNum(this.ctNumbering.addNewAbstractNum());
            xWPFAbstractNum.getAbstractNum().setAbstractNumId(findNextAbstractNumberingId());
            this.ctNumbering.setAbstractNumArray(size, xWPFAbstractNum.getAbstractNum());
            xWPFAbstractNum.setCtAbstractNum(this.ctNumbering.getAbstractNumArray(size));
        }
        this.abstractNums.add(xWPFAbstractNum);
        return xWPFAbstractNum.getCTAbstractNum().getAbstractNumId();
    }

    public BigInteger addNum(XWPFNum xWPFNum) {
        this.ctNumbering.addNewNum();
        this.ctNumbering.setNumArray(this.ctNumbering.sizeOfNumArray() - 1, xWPFNum.getCTNum());
        this.nums.add(xWPFNum);
        return xWPFNum.getCTNum().getNumId();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTNumbering.type.getName().getNamespaceURI(), XResourceBundle.LANG_NUMBERING));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.ctNumbering.save(outputStream, xmlOptions);
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

    public XWPFAbstractNum getAbstractNum(BigInteger bigInteger) {
        for (XWPFAbstractNum xWPFAbstractNum : this.abstractNums) {
            if (xWPFAbstractNum.getAbstractNum().getAbstractNumId().equals(bigInteger)) {
                return xWPFAbstractNum;
            }
        }
        return null;
    }

    public BigInteger getAbstractNumID(BigInteger bigInteger) {
        XWPFNum num = getNum(bigInteger);
        if (num == null || num.getCTNum() == null || num.getCTNum().getAbstractNumId() == null) {
            return null;
        }
        return num.getCTNum().getAbstractNumId().getVal();
    }

    public List<XWPFAbstractNum> getAbstractNums() {
        return Collections.unmodifiableList(this.abstractNums);
    }

    public BigInteger getIdOfAbstractNum(XWPFAbstractNum xWPFAbstractNum) {
        XWPFAbstractNum xWPFAbstractNum2 = new XWPFAbstractNum((CTAbstractNum) xWPFAbstractNum.getCTAbstractNum().copy(), this);
        for (int i = 0; i < this.abstractNums.size(); i++) {
            xWPFAbstractNum2.getCTAbstractNum().setAbstractNumId(BigInteger.valueOf(i));
            xWPFAbstractNum2.setNumbering(this);
            if (xWPFAbstractNum2.getCTAbstractNum().valueEquals(this.abstractNums.get(i).getCTAbstractNum())) {
                return xWPFAbstractNum2.getCTAbstractNum().getAbstractNumId();
            }
        }
        return null;
    }

    public XWPFNum getNum(BigInteger bigInteger) {
        for (XWPFNum xWPFNum : this.nums) {
            if (xWPFNum.getCTNum().getNumId().equals(bigInteger)) {
                return xWPFNum;
            }
        }
        return null;
    }

    public List<XWPFNum> getNums() {
        return Collections.unmodifiableList(this.nums);
    }

    public boolean numExist(BigInteger bigInteger) {
        Iterator<XWPFNum> it2 = this.nums.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCTNum().getNumId().equals(bigInteger)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        InputStream inputStream = getPackagePart().getInputStream();
        try {
            try {
                CTNumbering numbering = NumberingDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getNumbering();
                this.ctNumbering = numbering;
                for (CTNum cTNum : numbering.getNumArray()) {
                    this.nums.add(new XWPFNum(cTNum, this));
                }
                for (CTAbstractNum cTAbstractNum : this.ctNumbering.getAbstractNumArray()) {
                    this.abstractNums.add(new XWPFAbstractNum(cTAbstractNum, this));
                }
                this.isNew = false;
            } catch (XmlException unused) {
                throw new POIXMLException();
            }
        } finally {
            inputStream.close();
        }
    }

    public boolean removeAbstractNum(BigInteger bigInteger) {
        Iterator<XWPFAbstractNum> it2 = this.abstractNums.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            XWPFAbstractNum next = it2.next();
            if (bigInteger.equals(next.getAbstractNum().getAbstractNumId())) {
                this.abstractNums.remove(next);
                break;
            }
        }
        for (int i = 0; i < this.ctNumbering.sizeOfAbstractNumArray(); i++) {
            if (bigInteger.equals(this.ctNumbering.getAbstractNumArray(i).getAbstractNumId())) {
                this.ctNumbering.removeAbstractNum(i);
                return true;
            }
        }
        return false;
    }

    public void setNumbering(CTNumbering cTNumbering) {
        this.ctNumbering = cTNumbering;
    }

    public XWPFNumbering() {
        this.abstractNums = new ArrayList();
        this.nums = new ArrayList();
        this.abstractNums = new ArrayList();
        this.nums = new ArrayList();
        this.isNew = true;
    }

    public BigInteger addNum(BigInteger bigInteger) {
        CTNum addNewNum = this.ctNumbering.addNewNum();
        addNewNum.addNewAbstractNumId();
        addNewNum.getAbstractNumId().setVal(bigInteger);
        addNewNum.setNumId(BigInteger.valueOf(this.nums.size() + 1));
        this.nums.add(new XWPFNum(addNewNum, this));
        return addNewNum.getNumId();
    }

    public void addNum(BigInteger bigInteger, BigInteger bigInteger2) {
        CTNum addNewNum = this.ctNumbering.addNewNum();
        addNewNum.addNewAbstractNumId();
        addNewNum.getAbstractNumId().setVal(bigInteger);
        addNewNum.setNumId(bigInteger2);
        this.nums.add(new XWPFNum(addNewNum, this));
    }
}
