package net.p110sf.saxon.value;

import com.google.android.material.motion.MotionUtils;
import java.util.Objects;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;

/* loaded from: classes11.dex */
public class ObjectValue<T> implements AnyExternalObject {

    /* renamed from: e */
    public final T f102904e;

    public ObjectValue(T t) {
        Objects.requireNonNull(t, "External object cannot wrap a Java null");
        this.f102904e = t;
    }

    public static String displayTypeName(Object obj) {
        return "java-type:" + obj.getClass().getName();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ObjectValue)) {
            return false;
        }
        return this.f102904e.equals(((ObjectValue) obj).f102904e);
    }

    @Override // net.p110sf.saxon.om.Item
    public Genre getGenre() {
        return Genre.EXTERNAL;
    }

    @Override // net.p110sf.saxon.value.AnyExternalObject
    public ItemType getItemType(TypeHierarchy typeHierarchy) {
        return typeHierarchy.getConfiguration().getJavaExternalObjectType(this.f102904e.getClass());
    }

    public T getObject() {
        return this.f102904e;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return StringView.m63901of(this.f102904e.toString()).tidy();
    }

    @Override // net.p110sf.saxon.value.AnyExternalObject
    public Object getWrappedObject() {
        return this.f102904e;
    }

    public int hashCode() {
        return this.f102904e.hashCode();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        String obj = this.f102904e.toString();
        if (obj.startsWith(this.f102904e.getClass().getName())) {
            return obj;
        }
        return MotionUtils.f31761c + this.f102904e.getClass().getSimpleName() + MotionUtils.f31762d + Err.truncate30(StringView.tidy(this.f102904e.toString()));
    }

    @Override // net.p110sf.saxon.om.Item
    public StringValue atomize() {
        return new StringValue(getUnicodeStringValue().tidy());
    }
}
