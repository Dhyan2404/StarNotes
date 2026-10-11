package org.apache.poi.xssf.binary;

import com.microsoft.schemas.vml.CTShape;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.model.CommentsTable;
import org.apache.poi.xssf.usermodel.XSSFComment;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment;

@Internal
/* loaded from: classes13.dex */
class XSSFBComment extends XSSFComment {
    private final String author;
    private final CellAddress cellAddress;
    private final XSSFBRichTextString comment;
    private boolean visible;

    public XSSFBComment(CellAddress cellAddress, String str, String str2) {
        super((CommentsTable) null, (CTComment) null, (CTShape) null);
        this.visible = true;
        this.cellAddress = cellAddress;
        this.author = str;
        this.comment = new XSSFBRichTextString(str2);
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public CellAddress getAddress() {
        return this.cellAddress;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public String getAuthor() {
        return this.author;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public ClientAnchor getClientAnchor() {
        return null;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public int getColumn() {
        return this.cellAddress.getColumn();
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public int getRow() {
        return this.cellAddress.getRow();
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public boolean isVisible() {
        return this.visible;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setAddress(CellAddress cellAddress) {
        throw new IllegalArgumentException("XSSFBComment is read only");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setAuthor(String str) {
        throw new IllegalArgumentException("XSSFBComment is read only");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setColumn(int i) {
        throw new IllegalArgumentException("XSSFBComment is read only");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setRow(int i) {
        throw new IllegalArgumentException("XSSFBComment is read only");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setString(RichTextString richTextString) {
        throw new IllegalArgumentException("XSSFBComment is read only");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setVisible(boolean z) {
        throw new IllegalArgumentException("XSSFBComment is read only.");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public void setAddress(int i, int i2) {
        throw new IllegalArgumentException("XSSFBComment is read only");
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.ss.usermodel.Comment
    public XSSFBRichTextString getString() {
        return this.comment;
    }
}
