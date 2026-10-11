package org.apache.poi.xdgf.usermodel.section;

import com.microsoft.schemas.office.visio.x2012.main.RowType;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.geometry.data.GeometryType;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.util.Internal;
import org.apache.poi.xdgf.usermodel.section.geometry.ArcTo;
import org.apache.poi.xdgf.usermodel.section.geometry.Ellipse;
import org.apache.poi.xdgf.usermodel.section.geometry.EllipticalArcTo;
import org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow;
import org.apache.poi.xdgf.usermodel.section.geometry.InfiniteLine;
import org.apache.poi.xdgf.usermodel.section.geometry.LineTo;
import org.apache.poi.xdgf.usermodel.section.geometry.MoveTo;
import org.apache.poi.xdgf.usermodel.section.geometry.NURBSTo;
import org.apache.poi.xdgf.usermodel.section.geometry.PolyLineTo;
import org.apache.poi.xdgf.usermodel.section.geometry.RelCubBezTo;
import org.apache.poi.xdgf.usermodel.section.geometry.RelEllipticalArcTo;
import org.apache.poi.xdgf.usermodel.section.geometry.RelLineTo;
import org.apache.poi.xdgf.usermodel.section.geometry.RelMoveTo;
import org.apache.poi.xdgf.usermodel.section.geometry.RelQuadBezTo;
import org.apache.poi.xdgf.usermodel.section.geometry.SplineKnot;
import org.apache.poi.xdgf.usermodel.section.geometry.SplineStart;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes13.dex */
public enum GeometryRowTypes {
    ARC_TO("ArcTo", new Function() { // from class: com.sunia.HTREnginev2.s1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new ArcTo((RowType) obj);
        }
    }),
    ELLIPSE(GeometryType.ELLIPSE, new Function() { // from class: com.sunia.HTREnginev2.e2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new Ellipse((RowType) obj);
        }
    }),
    ELLIPTICAL_ARC_TO("EllipticalArcTo", new Function() { // from class: com.sunia.HTREnginev2.f2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new EllipticalArcTo((RowType) obj);
        }
    }),
    INFINITE_LINE("InfiniteLine", new Function() { // from class: com.sunia.HTREnginev2.g2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new InfiniteLine((RowType) obj);
        }
    }),
    LINE_TO("LineTo", new Function() { // from class: com.sunia.HTREnginev2.t1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new LineTo((RowType) obj);
        }
    }),
    MOVE_TO("MoveTo", new Function() { // from class: com.sunia.HTREnginev2.u1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new MoveTo((RowType) obj);
        }
    }),
    NURBS_TO("NURBSTo", new Function() { // from class: com.sunia.HTREnginev2.v1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new NURBSTo((RowType) obj);
        }
    }),
    POLYLINE_TO("PolylineTo", new Function() { // from class: com.sunia.HTREnginev2.w1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new PolyLineTo((RowType) obj);
        }
    }),
    REL_CUB_BEZ_TO("RelCubBezTo", new Function() { // from class: com.sunia.HTREnginev2.x1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new RelCubBezTo((RowType) obj);
        }
    }),
    REL_ELLIPTICAL_ARC_TO("RelEllipticalArcTo", new Function() { // from class: com.sunia.HTREnginev2.y1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new RelEllipticalArcTo((RowType) obj);
        }
    }),
    REL_LINE_TO("RelLineTo", new Function() { // from class: com.sunia.HTREnginev2.z1h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new RelLineTo((RowType) obj);
        }
    }),
    REL_MOVE_TO("RelMoveTo", new Function() { // from class: com.sunia.HTREnginev2.a2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new RelMoveTo((RowType) obj);
        }
    }),
    REL_QUAD_BEZ_TO("RelQuadBezTo", new Function() { // from class: com.sunia.HTREnginev2.b2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new RelQuadBezTo((RowType) obj);
        }
    }),
    SPLINE_KNOT("SplineKnot", new Function() { // from class: com.sunia.HTREnginev2.c2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new SplineKnot((RowType) obj);
        }
    }),
    SPLINE_START("SplineStart", new Function() { // from class: com.sunia.HTREnginev2.d2h
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return new SplineStart((RowType) obj);
        }
    });

    private static final Map<String, GeometryRowTypes> LOOKUP = (Map) Stream.of((Object[]) values()).collect(Collectors.toMap(new Function() { // from class: org.apache.poi.xdgf.usermodel.section.a
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return ((GeometryRowTypes) obj).getRowType();
        }
    }, Function.identity()));
    private final Function<RowType, ? extends GeometryRow> constructor;
    private final String rowType;

    GeometryRowTypes(String str, Function function) {
        this.rowType = str;
        this.constructor = function;
    }

    public static GeometryRow load(RowType rowType) {
        String t = rowType.getT();
        GeometryRowTypes geometryRowTypes = LOOKUP.get(t);
        if (geometryRowTypes != null) {
            return geometryRowTypes.constructor.apply(rowType);
        }
        throw new POIXMLException("Invalid '" + rowType.schemaType().getName().getLocalPart() + "' name '" + t + CloudStorageConstants.SINGLE_QUOTES);
    }

    public String getRowType() {
        return this.rowType;
    }
}
