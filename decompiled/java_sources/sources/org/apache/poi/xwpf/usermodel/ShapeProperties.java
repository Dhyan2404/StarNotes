package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.STStrokeArrowType;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.o6o;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.geom.Rectangle2D;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Units;

/* loaded from: classes13.dex */
public class ShapeProperties {
    public static final String FONT_SIZE_REGEX = "^(\\d+)(px|pt)*";
    boolean arrowOk;
    Color fillColor;
    boolean filled;
    String fontFamily;
    float fontSize;
    double marginLeft;
    double marginTop;
    float rotation;
    String shadow;
    String shapeId;
    double spt;
    BasicStroke stroke;
    boolean stroked;
    Color strokedColor;
    String vTextKern;
    Rectangle2D anchor = new Rectangle2D.Double();
    STStrokeArrowType.Enum arrow = STStrokeArrowType.NONE;
    Position position = Position.NONE;
    RelativeH relativeH = RelativeH.NORMAL;
    RelativeV relativeV = RelativeV.NORMAL;
    Flip flip = Flip.NONE;
    boolean allowInCell = true;

    private float parseFontSize(String str) {
        Matcher matcher = Pattern.compile(FONT_SIZE_REGEX).matcher(str);
        if (!matcher.find()) {
            return 0.0f;
        }
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        return (group2 == null || ExtUnits.UNIT_PT.equals(group2)) ? Units.pointsToPixel(r2) : Float.parseFloat(group);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x002d. Please report as an issue. */
    public void parse(String str) {
        if (str == null) {
            return;
        }
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        for (String str2 : str.split(AndroidTreeView.f47214k)) {
            String[] split = str2.split(":");
            String str3 = split[0];
            str3.hashCode();
            char c = 65535;
            switch (str3.hashCode()) {
                case -1587794059:
                    if (str3.equals("mso-position-horizontal-relative")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1586082113:
                    if (str3.equals(o6o.f79400j)) {
                        c = 1;
                        break;
                    }
                    break;
                case -1221029593:
                    if (str3.equals("height")) {
                        c = 2;
                        break;
                    }
                    break;
                case -40300674:
                    if (str3.equals("rotation")) {
                        c = 3;
                        break;
                    }
                    break;
                case -9726596:
                    if (str3.equals("mso-text-shadow")) {
                        c = 4;
                        break;
                    }
                    break;
                case 115029:
                    if (str3.equals(OneDriverConstants.TOP)) {
                        c = 5;
                        break;
                    }
                    break;
                case 3145837:
                    if (str3.equals("flip")) {
                        c = 6;
                        break;
                    }
                    break;
                case 3317767:
                    if (str3.equals("left")) {
                        c = 7;
                        break;
                    }
                    break;
                case 108532386:
                    if (str3.equals(o6o.f79398h)) {
                        c = '\b';
                        break;
                    }
                    break;
                case 113126854:
                    if (str3.equals("width")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 747804969:
                    if (str3.equals("position")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 941004998:
                    if (str3.equals("margin-left")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1370916127:
                    if (str3.equals("v-text-kern")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 1406449763:
                    if (str3.equals("mso-position-vertical-relative")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 1970025654:
                    if (str3.equals("margin-top")) {
                        c = 14;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.relativeH = RelativeH.relativeOf(split[1]);
                    break;
                case 1:
                    this.fontSize = parseFontSize(split[1]);
                    break;
                case 2:
                    d4 = XWPFWordToHtmlUtils.parseNumberValue(split[1]);
                    break;
                case 3:
                    this.rotation = Float.parseFloat(split[1]);
                    break;
                case 4:
                    this.shadow = split[1];
                    break;
                case 5:
                    d2 = XWPFWordToHtmlUtils.parseNumberValue(split[1]);
                    break;
                case 6:
                    this.flip = Flip.flipOf(split[1]);
                    break;
                case 7:
                    d = XWPFWordToHtmlUtils.parseNumberValue(split[1]);
                    break;
                case '\b':
                    this.fontFamily = split[1];
                    break;
                case '\t':
                    d3 = XWPFWordToHtmlUtils.parseNumberValue(split[1]);
                    break;
                case '\n':
                    this.position = Position.positionOf(split[1]);
                    break;
                case 11:
                    this.marginLeft = (int) XWPFWordToHtmlUtils.parseNumberValue(split[1]);
                    break;
                case '\f':
                    this.vTextKern = split[1];
                    break;
                case '\r':
                    this.relativeV = RelativeV.relativeOf(split[1]);
                    break;
                case 14:
                    this.marginTop = (int) XWPFWordToHtmlUtils.parseNumberValue(split[1]);
                    break;
            }
        }
        this.anchor.setFrame(d, d2, d3, d4);
    }

    public String toString() {
        return "ShapeProperties{shapeId='" + this.shapeId + Chars.QUOTE + ", anchor=" + this.anchor + ", arrow=" + this.arrow + ", position=" + this.position + ", flip=" + this.flip + ", fillColor=" + this.fillColor + ", strokedColor=" + this.strokedColor + ", stroke=" + this.stroke + ", fontFamily=" + this.fontFamily + ", vTextKern=" + this.vTextKern + ", shadow=" + this.shadow + ", fontSize=" + this.fontSize + ", spt=" + this.spt + ", marginLeft=" + this.marginLeft + ", marginTop=" + this.marginTop + ", arrowOk=" + this.arrowOk + ", filled=" + this.filled + ", stroked=" + this.stroked + ", allowInCell=" + this.allowInCell + '}';
    }
}
