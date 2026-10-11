package org.apache.commons.math3.geometry.euclidean.threed;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.Region;

/* loaded from: classes12.dex */
public class SubLine {

    /* renamed from: c */
    public static final double f108294c = 1.0E-10d;

    /* renamed from: a */
    public final Line f108295a;

    /* renamed from: b */
    public final IntervalsSet f108296b;

    public SubLine(Line line, IntervalsSet intervalsSet) {
        this.f108295a = line;
        this.f108296b = intervalsSet;
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r9v2, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* renamed from: a */
    public static IntervalsSet m67659a(Vector3D vector3D, Vector3D vector3D2, double d) throws MathIllegalArgumentException {
        Line line = new Line(vector3D, vector3D2, d);
        return new IntervalsSet(line.toSubSpace((Point<Euclidean3D>) vector3D).getX(), line.toSubSpace((Point<Euclidean3D>) vector3D2).getX(), d);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public List<Segment> getSegments() {
        List<Interval> asList = this.f108296b.asList();
        ArrayList arrayList = new ArrayList(asList.size());
        for (Interval interval : asList) {
            arrayList.add(new Segment(this.f108295a.toSpace((Point<Euclidean1D>) new Vector1D(interval.getInf())), this.f108295a.toSpace((Point<Euclidean1D>) new Vector1D(interval.getSup())), this.f108295a));
        }
        return arrayList;
    }

    public Vector3D intersection(SubLine subLine, boolean z) {
        Vector3D intersection = this.f108295a.intersection(subLine.f108295a);
        if (intersection == null) {
            return null;
        }
        Region.Location checkPoint = this.f108296b.checkPoint(this.f108295a.toSubSpace((Point<Euclidean3D>) intersection));
        Region.Location checkPoint2 = subLine.f108296b.checkPoint(subLine.f108295a.toSubSpace((Point<Euclidean3D>) intersection));
        if (z) {
            Region.Location location = Region.Location.OUTSIDE;
            if (checkPoint == location || checkPoint2 == location) {
                return null;
            }
            return intersection;
        }
        Region.Location location2 = Region.Location.INSIDE;
        if (checkPoint == location2 && checkPoint2 == location2) {
            return intersection;
        }
        return null;
    }

    public SubLine(Vector3D vector3D, Vector3D vector3D2, double d) throws MathIllegalArgumentException {
        this(new Line(vector3D, vector3D2, d), m67659a(vector3D, vector3D2, d));
    }

    public SubLine(Vector3D vector3D, Vector3D vector3D2) throws MathIllegalArgumentException {
        this(vector3D, vector3D2, 1.0E-10d);
    }

    public SubLine(Segment segment) throws MathIllegalArgumentException {
        this(segment.getLine(), m67659a(segment.getStart(), segment.getEnd(), segment.getLine().getTolerance()));
    }
}
