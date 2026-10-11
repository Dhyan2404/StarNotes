package net.p110sf.saxon.lib;

import net.p110sf.saxon.s9api.XmlProcessingError;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ErrorReporter {
    void report(XmlProcessingError xmlProcessingError);
}
