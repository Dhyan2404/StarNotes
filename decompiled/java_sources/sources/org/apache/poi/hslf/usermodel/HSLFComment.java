package org.apache.poi.hslf.usermodel;

import java.awt.geom.Point2D;
import java.util.Date;
import org.apache.poi.hslf.record.Comment2000;
import org.apache.poi.sl.usermodel.Comment;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class HSLFComment implements Comment {
    private final Comment2000 _comment2000;

    public HSLFComment(Comment2000 comment2000) {
        this._comment2000 = comment2000;
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public String getAuthor() {
        return this._comment2000.getAuthor();
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public String getAuthorInitials() {
        return this._comment2000.getAuthorInitials();
    }

    public Comment2000 getComment2000() {
        return this._comment2000;
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public Date getDate() {
        return this._comment2000.getComment2000Atom().getDate();
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public Point2D getOffset() {
        return new Point2D.Double(Units.masterToPoints(this._comment2000.getComment2000Atom().getXOffset()), Units.masterToPoints(this._comment2000.getComment2000Atom().getYOffset()));
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public String getText() {
        return this._comment2000.getText();
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public void setAuthor(String str) {
        this._comment2000.setAuthor(str);
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public void setAuthorInitials(String str) {
        this._comment2000.setAuthorInitials(str);
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public void setDate(Date date) {
        this._comment2000.getComment2000Atom().setDate(date);
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public void setOffset(Point2D point2D) {
        int pointsToMaster = Units.pointsToMaster(point2D.getX());
        int pointsToMaster2 = Units.pointsToMaster(point2D.getY());
        this._comment2000.getComment2000Atom().setXOffset(pointsToMaster);
        this._comment2000.getComment2000Atom().setYOffset(pointsToMaster2);
    }

    @Override // org.apache.poi.sl.usermodel.Comment
    public void setText(String str) {
        this._comment2000.setText(str);
    }
}
