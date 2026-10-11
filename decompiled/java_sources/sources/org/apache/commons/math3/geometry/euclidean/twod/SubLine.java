package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class SubLine extends AbstractSubHyperplane<Euclidean2D, Euclidean1D> {

    /* renamed from: c */
    public static final double f108339c = 1.0E-10d;

    public SubLine(Hyperplane<Euclidean2D> hyperplane, Region<Euclidean1D> region) {
        super(hyperplane, region);
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r9v2, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* renamed from: b */
    public static IntervalsSet m67703b(Vector2D vector2D, Vector2D vector2D2, double d) {
        Line line = new Line(vector2D, vector2D2, d);
        return new IntervalsSet(line.toSubSpace((Point<Euclidean2D>) vector2D).getX(), line.toSubSpace((Point<Euclidean2D>) vector2D2).getX(), d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane
    public AbstractSubHyperplane<Euclidean2D, Euclidean1D> buildNew(Hyperplane<Euclidean2D> hyperplane, Region<Euclidean1D> region) {
        return new SubLine(hyperplane, region);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    public List<Segment> getSegments() {
        Line line = (Line) getHyperplane();
        List<Interval> asList = ((IntervalsSet) getRemainingRegion()).asList();
        ArrayList arrayList = new ArrayList(asList.size());
        for (Interval interval : asList) {
            arrayList.add(new Segment(line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getInf())), line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getSup())), line));
        }
        return arrayList;
    }

    public Vector2D intersection(SubLine subLine, boolean z) {
        Line line = (Line) getHyperplane();
        Line line2 = (Line) subLine.getHyperplane();
        Vector2D intersection = line.intersection(line2);
        if (intersection == null) {
            return null;
        }
        Region.Location checkPoint = getRemainingRegion().checkPoint(line.toSubSpace((Point<Euclidean2D>) intersection));
        Region.Location checkPoint2 = subLine.getRemainingRegion().checkPoint(line2.toSubSpace((Point<Euclidean2D>) intersection));
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

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    @Override // org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane, org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public SubHyperplane.SplitSubHyperplane<Euclidean2D> split(Hyperplane<Euclidean2D> hyperplane) {
        Line line = (Line) getHyperplane();
        Line line2 = (Line) hyperplane;
        Vector2D intersection = line.intersection(line2);
        double tolerance = line.getTolerance();
        if (intersection == null) {
            double offset = line2.getOffset(line);
            return offset < (-tolerance) ? new SubHyperplane.SplitSubHyperplane<>(null, this) : offset > tolerance ? new SubHyperplane.SplitSubHyperplane<>(this, null) : new SubHyperplane.SplitSubHyperplane<>(null, null);
        }
        boolean z = FastMath.sin(line.getAngle() - line2.getAngle()) < 0.0d;
        ?? subSpace = line.toSubSpace((Point<Euclidean2D>) intersection);
        SubHyperplane<Euclidean1D> wholeHyperplane = new OrientedPoint(subSpace, !z, tolerance).wholeHyperplane();
        SubHyperplane<Euclidean1D> wholeHyperplane2 = new OrientedPoint(subSpace, z, tolerance).wholeHyperplane();
        BSPTree<Euclidean1D> split = getRemainingRegion().getTree(false).split(wholeHyperplane2);
        return new SubHyperplane.SplitSubHyperplane<>(new SubLine(line.copySelf(), new IntervalsSet((BSPTree<Euclidean1D>) (getRemainingRegion().isEmpty(split.getPlus()) ? new BSPTree(Boolean.FALSE) : new BSPTree(wholeHyperplane, new BSPTree(Boolean.FALSE), split.getPlus(), null)), tolerance)), new SubLine(line.copySelf(), new IntervalsSet((BSPTree<Euclidean1D>) (getRemainingRegion().isEmpty(split.getMinus()) ? new BSPTree(Boolean.FALSE) : new BSPTree(wholeHyperplane2, new BSPTree(Boolean.FALSE), split.getMinus(), null)), tolerance)));
    }

    public SubLine(Vector2D vector2D, Vector2D vector2D2, double d) {
        super(new Line(vector2D, vector2D2, d), m67703b(vector2D, vector2D2, d));
    }

    @Deprecated
    public SubLine(Vector2D vector2D, Vector2D vector2D2) {
        this(vector2D, vector2D2, 1.0E-10d);
    }

    public SubLine(Segment segment) {
        super(segment.getLine(), m67703b(segment.getStart(), segment.getEnd(), segment.getLine().getTolerance()));
    }
}
