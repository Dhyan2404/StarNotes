package net.p110sf.saxon.s9api;

import javax.xml.transform.SourceLocator;
import org.xml.sax.Locator;

/* loaded from: classes11.dex */
public interface Location extends SourceLocator, Locator {
    @Override // javax.xml.transform.SourceLocator
    int getColumnNumber();

    @Override // javax.xml.transform.SourceLocator
    int getLineNumber();

    @Override // javax.xml.transform.SourceLocator
    String getPublicId();

    @Override // javax.xml.transform.SourceLocator
    String getSystemId();

    Location saveLocation();
}
