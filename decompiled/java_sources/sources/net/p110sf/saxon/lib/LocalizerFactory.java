package net.p110sf.saxon.lib;

import java.util.Properties;

/* loaded from: classes11.dex */
public abstract class LocalizerFactory {
    public LocalizerFactory copy() {
        return this;
    }

    public abstract Numberer getNumberer(String str, String str2);

    public void setLanguageProperties(String str, Properties properties) {
    }
}
