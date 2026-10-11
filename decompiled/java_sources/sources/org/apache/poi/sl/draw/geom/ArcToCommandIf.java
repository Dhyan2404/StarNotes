package org.apache.poi.sl.draw.geom;

import java.awt.Shape;
import java.awt.geom.Arc2D;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;

/* loaded from: classes12.dex */
public interface ArcToCommandIf extends PathCommand {
    @Override // org.apache.poi.sl.draw.geom.PathCommand
    default void execute(Path2D.Double r29, Context context) {
        double value = context.getValue(getWR());
        double value2 = context.getValue(getHR());
        double value3 = context.getValue(getStAng()) / 60000.0d;
        double value4 = context.getValue(getSwAng()) / 60000.0d;
        double convertOoxml2AwtAngle = ArcToCommand.convertOoxml2AwtAngle(value3, value, value2);
        double convertOoxml2AwtAngle2 = ArcToCommand.convertOoxml2AwtAngle(value3 + value4, value, value2) - convertOoxml2AwtAngle;
        double radians = Math.toRadians(value3);
        double atan2 = Math.atan2(Math.sin(radians) * value, Math.cos(radians) * value2);
        Point2D currentPoint = r29.getCurrentPoint();
        r29.append((Shape) new Arc2D.Double((currentPoint.getX() - (Math.cos(atan2) * value)) - value, (currentPoint.getY() - (Math.sin(atan2) * value2)) - value2, value * 2.0d, value2 * 2.0d, convertOoxml2AwtAngle, convertOoxml2AwtAngle2, 0), true);
    }

    String getHR();

    String getStAng();

    String getSwAng();

    String getWR();

    void setHR(String str);

    void setStAng(String str);

    void setSwAng(String str);

    void setWR(String str);
}
