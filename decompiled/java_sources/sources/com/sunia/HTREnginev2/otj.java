package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.Line;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.SubLine;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;

/* loaded from: classes12.dex */
public class otj {

    /* renamed from: a */
    public Vector2D[] f80137a;

    /* renamed from: b */
    public List<otj> f80138b;

    /* renamed from: c */
    public Region<Euclidean2D> f80139c;

    /* renamed from: d */
    public boolean f80140d;

    /* renamed from: e */
    public final double f80141e;

    public otj(double d) {
        this.f80138b = new ArrayList();
        this.f80141e = d;
    }

    /* renamed from: a */
    public final void m56154a(otj otjVar) throws MathIllegalArgumentException {
        for (otj otjVar2 : this.f80138b) {
            if (otjVar2.f80139c.contains(otjVar.f80139c)) {
                otjVar2.m56154a(otjVar);
                return;
            }
        }
        Iterator<otj> it2 = this.f80138b.iterator();
        while (it2.hasNext()) {
            otj next = it2.next();
            if (otjVar.f80139c.contains(next.f80139c)) {
                otjVar.f80138b.add(next);
                it2.remove();
            }
        }
        RegionFactory regionFactory = new RegionFactory();
        Iterator<otj> it3 = this.f80138b.iterator();
        while (it3.hasNext()) {
            if (!regionFactory.intersection(otjVar.f80139c, it3.next().f80139c).isEmpty()) {
                throw new MathIllegalArgumentException(LocalizedFormats.CROSSING_BOUNDARY_LOOPS, new Object[0]);
            }
        }
        this.f80138b.add(otjVar);
    }

    /* renamed from: b */
    public void m56155b(Vector2D[] vector2DArr) throws MathIllegalArgumentException {
        m56154a(new otj(vector2DArr, this.f80141e));
    }

    /* renamed from: c */
    public void m56156c() {
        Iterator<otj> it2 = this.f80138b.iterator();
        while (it2.hasNext()) {
            it2.next().m56157d(true);
        }
    }

    /* renamed from: d */
    public final void m56157d(boolean z) {
        if (this.f80140d ^ z) {
            int length = this.f80137a.length;
            int i = -1;
            while (true) {
                i++;
                length--;
                if (i >= length) {
                    break;
                }
                Vector2D[] vector2DArr = this.f80137a;
                Vector2D vector2D = vector2DArr[i];
                vector2DArr[i] = vector2DArr[length];
                vector2DArr[length] = vector2D;
            }
        }
        Iterator<otj> it2 = this.f80138b.iterator();
        while (it2.hasNext()) {
            it2.next().m56157d(!z);
        }
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r2v9, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    public otj(Vector2D[] vector2DArr, double d) throws MathIllegalArgumentException {
        if (vector2DArr[0] != null) {
            this.f80137a = vector2DArr;
            this.f80138b = new ArrayList();
            this.f80141e = d;
            ArrayList arrayList = new ArrayList();
            Vector2D vector2D = vector2DArr[vector2DArr.length - 1];
            int i = 0;
            while (i < vector2DArr.length) {
                Vector2D vector2D2 = vector2DArr[i];
                Line line = new Line(vector2D, vector2D2, d);
                arrayList.add(new SubLine(line, new IntervalsSet(line.toSubSpace((Point<Euclidean2D>) vector2D).getX(), line.toSubSpace((Point<Euclidean2D>) vector2D2).getX(), d)));
                i++;
                vector2D = vector2D2;
            }
            PolygonsSet polygonsSet = new PolygonsSet(arrayList, d);
            this.f80139c = polygonsSet;
            if (Double.isInfinite(polygonsSet.getSize())) {
                this.f80139c = new RegionFactory().getComplement(this.f80139c);
                this.f80140d = false;
                return;
            } else {
                this.f80140d = true;
                return;
            }
        }
        throw new MathIllegalArgumentException(LocalizedFormats.OUTLINE_BOUNDARY_LOOP_OPEN, new Object[0]);
    }
}
