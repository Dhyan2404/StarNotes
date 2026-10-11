package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;

@JSONType(orders = {"type", "bbox", "coordinates"}, typeName = GeoConstant.MultiLineString)
/* loaded from: classes3.dex */
public class MultiLineString extends Geometry {
    private double[][][] coordinates;

    public MultiLineString() {
        super(GeoConstant.MultiLineString);
    }

    public double[][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][] dArr) {
        this.coordinates = dArr;
    }
}
