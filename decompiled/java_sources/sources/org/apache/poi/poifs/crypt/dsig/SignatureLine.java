package org.apache.poi.poifs.crypt.dsig;

import com.microsoft.schemas.office.office.CTSignatureLine;
import com.microsoft.schemas.vml.CTGroup;
import com.microsoft.schemas.vml.CTImageData;
import com.microsoft.schemas.vml.CTShape;
import com.microsoft.schemas.vml.STExt;
import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.font.LineBreakMeasurer;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.util.UUID;
import javax.imageio.ImageIO;
import javax.xml.namespace.QName;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.hpsf.ClassID;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes12.dex */
public abstract class SignatureLine {
    private static final String MS_OFFICE_URN = "urn:schemas-microsoft-com:office:office";
    protected static final QName QNAME_SIGNATURE_LINE = new QName(MS_OFFICE_URN, "signatureline");
    private Boolean allowComments;
    private String caption;
    private String contentType;
    private byte[] plainSignature;
    private ClassID setupId;
    private CTShape signatureShape;
    private String suggestedSigner;
    private String suggestedSigner2;
    private String suggestedSignerEmail;
    private String signingInstructions = "Before signing the document, verify that the content you are signing is correct.";
    private String invalidStamp = "invalid";

    /* loaded from: classes12.dex */
    public interface AddPictureData {
        String addPictureData(byte[] bArr, PictureType pictureType) throws InvalidFormatException;
    }

    private void determineContentType() {
        PictureType valueOf = PictureType.valueOf(FileMagic.valueOf(this.plainSignature));
        if (valueOf == PictureType.UNKNOWN) {
            throw new IllegalArgumentException("unknown image type");
        }
        this.contentType = valueOf.contentType;
    }

    public void add(XmlObject xmlObject, AddPictureData addPictureData) {
        try {
            byte[] generateImage = generateImage(false, false);
            CTGroup newInstance = CTGroup.Factory.newInstance();
            newInstance.addNewShape();
            XmlCursor newCursor = xmlObject.newCursor();
            try {
                newCursor.toEndToken();
                XmlCursor newCursor2 = newInstance.newCursor();
                try {
                    newCursor2.copyXmlContents(newCursor);
                    newCursor2.close();
                    newCursor.toPrevSibling();
                    this.signatureShape = (CTShape) newCursor.getObject();
                    newCursor.close();
                    this.signatureShape.setAlt("Microsoft Office Signature Line...");
                    this.signatureShape.setStyle("width:191.95pt;height:96.05pt");
                    this.signatureShape.setType("rect");
                    String addPictureData2 = addPictureData.addPictureData(generateImage, PictureType.PNG);
                    CTImageData addNewImagedata = this.signatureShape.addNewImagedata();
                    setRelationId(addNewImagedata, addPictureData2);
                    addNewImagedata.setTitle("");
                    CTSignatureLine addNewSignatureline = this.signatureShape.addNewSignatureline();
                    String str = this.suggestedSigner;
                    if (str != null) {
                        addNewSignatureline.setSuggestedsigner(str);
                    }
                    String str2 = this.suggestedSigner2;
                    if (str2 != null) {
                        addNewSignatureline.setSuggestedsigner2(str2);
                    }
                    String str3 = this.suggestedSignerEmail;
                    if (str3 != null) {
                        addNewSignatureline.setSuggestedsigneremail(str3);
                    }
                    if (this.setupId == null) {
                        this.setupId = new ClassID("{" + UUID.randomUUID() + "}");
                    }
                    addNewSignatureline.setId(this.setupId.toString());
                    STTrueFalse.Enum r4 = STTrueFalse.f115764T;
                    addNewSignatureline.setAllowcomments(r4);
                    addNewSignatureline.setIssignatureline(r4);
                    addNewSignatureline.setProvid("{00000000-0000-0000-0000-000000000000}");
                    addNewSignatureline.setExt(STExt.EDIT);
                    addNewSignatureline.setSigninginstructionsset(r4);
                    newCursor = addNewSignatureline.newCursor();
                    try {
                        newCursor.setAttributeText(new QName(MS_OFFICE_URN, "signinginstructions"), this.signingInstructions);
                        newCursor.close();
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (IOException | InvalidFormatException e) {
            throw new POIXMLException("Can't generate signature line image", e);
        }
    }

    public byte[] generateImage(boolean z, boolean z2) throws IOException {
        String str;
        String str2;
        BufferedImage bufferedImage = new BufferedImage(400, 150, 2);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_ALPHA_INTERPOLATION, RenderingHints.VALUE_ALPHA_INTERPOLATION_QUALITY);
        createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        String str3 = "X\n" + (new String(new char[500]).replace("\u0000", " ") + "\n") + (getCaption() == null ? getDefaultCaption() : getCaption()).replaceAll("(?m)^", MapUtils.f104930a);
        AttributedString attributedString = new AttributedString(str3);
        attributedString.addAttribute(TextAttribute.FAMILY, Font.SANS_SERIF);
        attributedString.addAttribute(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON, 2, str3.indexOf(10, 2));
        TextAttribute textAttribute = TextAttribute.SIZE;
        attributedString.addAttribute(textAttribute, 15, 0, 2);
        attributedString.addAttribute(textAttribute, 12, 2, str3.length());
        createGraphics.setColor(Color.BLACK);
        AttributedCharacterIterator iterator = attributedString.getIterator();
        LineBreakMeasurer lineBreakMeasurer = new LineBreakMeasurer(iterator, createGraphics.getFontRenderContext());
        float f = 80.0f;
        int i = 0;
        while (lineBreakMeasurer.getPosition() < iterator.getEndIndex()) {
            int indexOf = str3.indexOf(10, lineBreakMeasurer.getPosition());
            TextLayout nextLayout = lineBreakMeasurer.nextLayout(bufferedImage.getWidth() - 10.0f, indexOf == -1 ? str3.length() : indexOf + 1, false);
            if (i != 1) {
                f += nextLayout.getAscent();
            }
            nextLayout.draw(createGraphics, 5.0f, f);
            f += nextLayout.getDescent() + nextLayout.getLeading();
            i++;
        }
        if (z && this.plainSignature != null && (str2 = this.contentType) != null) {
            ImageRenderer imageRenderer = DrawPictureShape.getImageRenderer(createGraphics, str2);
            imageRenderer.loadImage(this.plainSignature, this.contentType);
            Dimension2D dimension = imageRenderer.getDimension();
            double min = Math.min((bufferedImage.getWidth() - 10.0d) / dimension.getWidth(), 95.0d / dimension.getHeight());
            double width = dimension.getWidth() * min;
            double height = dimension.getHeight() * min;
            imageRenderer.drawImage(createGraphics, new Rectangle2D.Double(((bufferedImage.getWidth() - width) / 2.0d) + 10.0d, 100.0d - height, width, height));
        }
        if (z2 && (str = this.invalidStamp) != null && !str.isEmpty()) {
            createGraphics.setFont(new Font("Lucida Bright", 2, 60));
            createGraphics.rotate(Math.toRadians(-15.0d), bufferedImage.getWidth() / 2.0d, bufferedImage.getHeight() / 2.0d);
            TextLayout textLayout = new TextLayout(this.invalidStamp, createGraphics.getFont(), createGraphics.getFontRenderContext());
            Rectangle2D bounds = textLayout.getBounds();
            float width2 = (float) (((bufferedImage.getWidth() - bounds.getWidth()) / 2.0d) - bounds.getX());
            float height2 = (float) (((bufferedImage.getHeight() - bounds.getHeight()) / 2.0d) - bounds.getY());
            Shape outline = textLayout.getOutline(AffineTransform.getTranslateInstance(2.0f + width2, 1.0f + height2));
            createGraphics.setComposite(AlphaComposite.getInstance(3, 0.3f));
            Color color = Color.RED;
            createGraphics.setPaint(color);
            createGraphics.draw(outline);
            createGraphics.setPaint(new GradientPaint(0.0f, 0.0f, color, 30.0f, 20.0f, new Color(128, 128, 255), true));
            textLayout.draw(createGraphics, width2, height2);
        }
        createGraphics.dispose();
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        ImageIO.write(bufferedImage, "PNG", unsynchronizedByteArrayOutputStream);
        return unsynchronizedByteArrayOutputStream.toByteArray();
    }

    public Boolean getAllowComments() {
        return this.allowComments;
    }

    public String getCaption() {
        return this.caption;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getDefaultCaption() {
        return this.suggestedSigner + "\n" + this.suggestedSigner2 + "\n" + this.suggestedSignerEmail;
    }

    public String getInvalidStamp() {
        return this.invalidStamp;
    }

    public byte[] getPlainSignature() {
        return this.plainSignature;
    }

    public ClassID getSetupId() {
        return this.setupId;
    }

    public CTShape getSignatureShape() {
        return this.signatureShape;
    }

    public String getSigningInstructions() {
        return this.signingInstructions;
    }

    public String getSuggestedSigner() {
        return this.suggestedSigner;
    }

    public String getSuggestedSigner2() {
        return this.suggestedSigner2;
    }

    public String getSuggestedSignerEmail() {
        return this.suggestedSignerEmail;
    }

    public void parse() {
        CTShape cTShape = this.signatureShape;
        if (cTShape == null) {
            return;
        }
        CTSignatureLine signaturelineArray = cTShape.getSignaturelineArray(0);
        setSetupId(new ClassID(signaturelineArray.getId()));
        setAllowComments(signaturelineArray.isSetAllowcomments() ? Boolean.valueOf(STTrueFalse.TRUE.equals(signaturelineArray.getAllowcomments())) : null);
        setSuggestedSigner(signaturelineArray.getSuggestedsigner());
        setSuggestedSigner2(signaturelineArray.getSuggestedsigner2());
        setSuggestedSignerEmail(signaturelineArray.getSuggestedsigneremail());
        XmlCursor newCursor = signaturelineArray.newCursor();
        try {
            setSigningInstructions(newCursor.getAttributeText(new QName(MS_OFFICE_URN, "signinginstructions")));
            newCursor.close();
        } finally {
        }
    }

    public byte[] plainPng() throws IOException {
        PictureType valueOf = PictureType.valueOf(FileMagic.valueOf(getPlainSignature()));
        if (valueOf == PictureType.UNKNOWN) {
            throw new IllegalArgumentException("Unsupported picture format");
        }
        ImageRenderer imageRenderer = DrawPictureShape.getImageRenderer(null, valueOf.contentType);
        if (imageRenderer == null) {
            throw new UnsupportedOperationException(valueOf + " can't be rendered - did you provide poi-scratchpad and its dependencies (batik et al.)");
        }
        imageRenderer.loadImage(getPlainSignature(), valueOf.contentType);
        Dimension2D dimension = imageRenderer.getDimension();
        double d = 300;
        int height = (int) ((dimension.getHeight() * d) / dimension.getWidth());
        BufferedImage bufferedImage = new BufferedImage(300, height, 2);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_ALPHA_INTERPOLATION, RenderingHints.VALUE_ALPHA_INTERPOLATION_QUALITY);
        createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        imageRenderer.drawImage(createGraphics, new Rectangle2D.Double(0.0d, 0.0d, d, height));
        createGraphics.dispose();
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        ImageIO.write(bufferedImage, "PNG", unsynchronizedByteArrayOutputStream);
        return unsynchronizedByteArrayOutputStream.toByteArray();
    }

    public void setAllowComments(Boolean bool) {
        this.allowComments = bool;
    }

    public void setCaption(String str) {
        this.caption = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setInvalidStamp(String str) {
        this.invalidStamp = str;
    }

    public void setPlainSignature(byte[] bArr) {
        this.plainSignature = bArr;
        this.contentType = null;
    }

    public abstract void setRelationId(CTImageData cTImageData, String str);

    public void setSetupId(ClassID classID) {
        this.setupId = classID;
    }

    public void setSignatureShape(CTShape cTShape) {
        this.signatureShape = cTShape;
    }

    public void setSigningInstructions(String str) {
        this.signingInstructions = str;
    }

    public void setSuggestedSigner(String str) {
        this.suggestedSigner = str;
    }

    public void setSuggestedSigner2(String str) {
        this.suggestedSigner2 = str;
    }

    public void setSuggestedSignerEmail(String str) {
        this.suggestedSignerEmail = str;
    }

    public void update() {
    }

    public void updateSignatureConfig(SignatureConfig signatureConfig) throws IOException {
        if (this.plainSignature == null) {
            throw new IllegalStateException("Plain signature not initialized");
        }
        if (this.contentType == null) {
            determineContentType();
        }
        byte[] generateImage = generateImage(true, false);
        byte[] generateImage2 = generateImage(true, true);
        signatureConfig.setSignatureImageSetupId(getSetupId());
        signatureConfig.setSignatureImage(plainPng());
        signatureConfig.setSignatureImageValid(generateImage);
        signatureConfig.setSignatureImageInvalid(generateImage2);
    }

    public void setSignatureShape(CTSignatureLine cTSignatureLine) {
        XmlCursor newCursor = cTSignatureLine.newCursor();
        try {
            newCursor.toParent();
            this.signatureShape = (CTShape) newCursor.getObject();
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
}
