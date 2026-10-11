package net.p110sf.saxon.expr.parser;

import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.s9api.Location;
import org.xml.sax.Locator;

/* loaded from: classes11.dex */
public class Loc implements Location {
    public static Loc NONE = new Loc(null, -1, -1);

    /* renamed from: e */
    public final String f99923e;

    /* renamed from: f */
    public final int f99924f;

    /* renamed from: g */
    public int f99925g;

    public Loc(SourceLocator sourceLocator) {
        this.f99925g = -1;
        this.f99923e = sourceLocator.getSystemId();
        this.f99924f = sourceLocator.getLineNumber();
        this.f99925g = sourceLocator.getColumnNumber();
    }

    public static boolean isUnknown(Location location) {
        return location == null || ((location.getSystemId() == null || location.getSystemId().isEmpty()) && location.getLineNumber() == -1);
    }

    public static Loc makeFromSax(Locator locator) {
        return new Loc(locator.getSystemId(), locator.getLineNumber(), locator.getColumnNumber());
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f99925g;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f99924f;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return null;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f99923e;
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public Loc(String str, int i, int i2) {
        this.f99923e = str;
        this.f99924f = i;
        this.f99925g = i2;
    }
}
