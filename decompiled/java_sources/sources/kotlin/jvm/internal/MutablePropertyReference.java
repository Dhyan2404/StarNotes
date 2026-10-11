package kotlin.jvm.internal;

import com.caverock.androidsvg.SVG;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import kotlin.SinceKotlin;
import kotlin.reflect.KMutableProperty;

/* loaded from: classes9.dex */
public abstract class MutablePropertyReference extends PropertyReference implements KMutableProperty {
    public MutablePropertyReference() {
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    @SinceKotlin(version = SVG.f15818g)
    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
