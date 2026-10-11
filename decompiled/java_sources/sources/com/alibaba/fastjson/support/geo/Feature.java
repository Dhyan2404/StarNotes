package com.alibaba.fastjson.support.geo;

import com.alibaba.fastjson.annotation.JSONType;
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.util.LinkedHashMap;
import java.util.Map;

@JSONType(orders = {"type", "id", "bbox", "coordinates", GeoConstant.KEY_Properties}, typeName = GeoConstant.Feature)
/* loaded from: classes3.dex */
public class Feature extends Geometry {
    private Geometry geometry;

    /* renamed from: id */
    private String f12212id;
    private Map<String, String> properties;

    public Feature() {
        super(GeoConstant.Feature);
        this.properties = new LinkedHashMap();
    }

    public Geometry getGeometry() {
        return this.geometry;
    }

    public String getId() {
        return this.f12212id;
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public void setGeometry(Geometry geometry) {
        this.geometry = geometry;
    }

    public void setId(String str) {
        this.f12212id = str;
    }

    public void setProperties(Map<String, String> map) {
        this.properties = map;
    }
}
