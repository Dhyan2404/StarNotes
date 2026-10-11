package com.sunia.HTREnginev2;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.apache.xmlbeans.SchemaComponent;
import org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl;

/* loaded from: classes13.dex */
public final /* synthetic */ class h5m implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Map buildAttributeTypeMap;
        buildAttributeTypeMap = SchemaTypeSystemImpl.buildAttributeTypeMap((List<? extends SchemaComponent>) obj);
        return buildAttributeTypeMap;
    }
}
