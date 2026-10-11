package org.apache.poi.hslf.usermodel;

import org.apache.poi.sl.usermodel.AutoShape;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.GroupShape;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.TextBox;

/* loaded from: classes12.dex */
public interface HSLFShapeContainer extends ShapeContainer<HSLFShape, HSLFTextParagraph> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    AutoShape<HSLFShape, HSLFTextParagraph> createAutoShape();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    ConnectorShape<HSLFShape, HSLFTextParagraph> createConnector();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    FreeformShape<HSLFShape, HSLFTextParagraph> createFreeform();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    GroupShape<HSLFShape, HSLFTextParagraph> createGroup();

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    HSLFObjectShape createOleShape(PictureData pictureData);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    PictureShape<HSLFShape, HSLFTextParagraph> createPicture(PictureData pictureData);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    TextBox<HSLFShape, HSLFTextParagraph> createTextBox();
}
