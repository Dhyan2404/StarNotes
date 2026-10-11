package kotlin.jvm.internal;

import com.caverock.androidsvg.SVG;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.SinceKotlin;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;

/* loaded from: classes9.dex */
public abstract class CallableReference implements KCallable, Serializable {

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public static final Object NO_RECEIVER = NoReceiver.INSTANCE;

    @SinceKotlin(version = SVG.f15818g)
    private final boolean isTopLevel;

    @SinceKotlin(version = SVG.f15818g)
    private final String name;

    @SinceKotlin(version = SVG.f15818g)
    private final Class owner;

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    protected final Object receiver;
    private transient KCallable reflected;

    @SinceKotlin(version = SVG.f15818g)
    private final String signature;

    @SinceKotlin(version = "1.2")
    /* loaded from: classes9.dex */
    public static class NoReceiver implements Serializable {
        private static final NoReceiver INSTANCE = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() throws ObjectStreamException {
            return INSTANCE;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    @Override // kotlin.reflect.KCallable
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // kotlin.reflect.KCallable
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public KCallable compute() {
        KCallable kCallable = this.reflected;
        if (kCallable != null) {
            return kCallable;
        }
        KCallable computeReflected = computeReflected();
        this.reflected = computeReflected;
        return computeReflected;
    }

    public abstract KCallable computeReflected();

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.name;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? Reflection.getOrCreateKotlinPackage(cls) : Reflection.getOrCreateKotlinClass(cls);
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        return getReflected().getParameters();
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public KCallable getReflected() {
        KCallable compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public List<KTypeParameter> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.3")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    @SinceKotlin(version = SerializerConstants.XMLVERSION11)
    public CallableReference(Object obj) {
        this(obj, null, null, null, false);
    }

    @SinceKotlin(version = SVG.f15818g)
    public CallableReference(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }
}
