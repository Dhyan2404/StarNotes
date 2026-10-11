package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;

@JSONType(orders = {"type", "bbox", "coordinates"}, typeName = GeoConstant.MultiPolygon)
/* loaded from: classes3.dex */
public class MultiPolygon extends Geometry {
    private double[][][][] coordinates;

    public MultiPolygon() {
        super(GeoConstant.MultiPolygon);
    }

    public double[][][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][][] dArr) {
        this.coordinates = dArr;
    }
}
