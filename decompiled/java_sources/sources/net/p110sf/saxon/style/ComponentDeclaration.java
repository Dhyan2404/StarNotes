package net.p110sf.saxon.style;

/* loaded from: classes11.dex */
public class ComponentDeclaration {

    /* renamed from: a */
    public final StyleElement f101750a;

    /* renamed from: b */
    public final StylesheetModule f101751b;

    public ComponentDeclaration(StylesheetModule stylesheetModule, StyleElement styleElement) {
        this.f101751b = stylesheetModule;
        this.f101750a = styleElement;
    }

    public StylesheetModule getModule() {
        return this.f101751b;
    }

    public int getPrecedence() {
        return this.f101751b.getPrecedence();
    }

    public StyleElement getSourceElement() {
        return this.f101750a;
    }
}
