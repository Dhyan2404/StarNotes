package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;

@JSONType(orders = {"type", "bbox", "coordinates"}, typeName = GeoConstant.LineString)
/* loaded from: classes3.dex */
public class LineString extends Geometry {
    private double[][] coordinates;

    public LineString() {
        super(GeoConstant.LineString);
    }

    public double[][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][] dArr) {
        this.coordinates = dArr;
    }
}
