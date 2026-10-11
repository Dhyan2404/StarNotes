package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;

@JSONType(orders = {"type", "bbox", "coordinates"}, typeName = GeoConstant.MultiPoint)
/* loaded from: classes3.dex */
public class MultiPoint extends Geometry {
    private double[][] coordinates;

    public MultiPoint() {
        super(GeoConstant.MultiPoint);
    }

    public double[][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][] dArr) {
        this.coordinates = dArr;
    }
}
