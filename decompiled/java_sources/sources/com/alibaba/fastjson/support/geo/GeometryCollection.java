package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.util.ArrayList;
import java.util.List;

@JSONType(orders = {"type", "bbox", GeoConstant.KEY_Geometrys}, typeName = GeoConstant.GeometryCollection)
/* loaded from: classes3.dex */
public class GeometryCollection extends Geometry {
    private List<Geometry> geometries;

    public GeometryCollection() {
        super(GeoConstant.GeometryCollection);
        this.geometries = new ArrayList();
    }

    public List<Geometry> getGeometries() {
        return this.geometries;
    }
}
