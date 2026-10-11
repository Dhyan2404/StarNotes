package net.p110sf.saxon.style;

/* loaded from: classes11.dex */
public abstract class ExtensionInstruction extends StyleElement {
    @Override // net.p110sf.saxon.style.StyleElement
    public final boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public final boolean mayContainFallback() {
        return true;
    }
}
