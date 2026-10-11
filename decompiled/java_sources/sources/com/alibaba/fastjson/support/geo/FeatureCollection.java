package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.util.ArrayList;
import java.util.List;

@JSONType(orders = {"type", "bbox", "coordinates"}, typeName = GeoConstant.FeatureCollection)
/* loaded from: classes3.dex */
public class FeatureCollection extends Geometry {
    private List<Feature> features;

    public FeatureCollection() {
        super(GeoConstant.FeatureCollection);
        this.features = new ArrayList();
    }

    public List<Feature> getFeatures() {
        return this.features;
    }
}
