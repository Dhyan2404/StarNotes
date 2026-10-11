package com.sun.org.apache.xalan.internal.xsltc.dom;

import com.sun.org.apache.xalan.internal.xsltc.CollatorFactory;
import java.text.Collator;
import java.util.Locale;

/* loaded from: classes10.dex */
public class CollatorFactoryBase implements CollatorFactory {
    public static final Locale DEFAULT_LOCALE = Locale.getDefault();
    public static final Collator DEFAULT_COLLATOR = Collator.getInstance();

    @Override // com.sun.org.apache.xalan.internal.xsltc.CollatorFactory
    public Collator getCollator(String str, String str2) {
        return Collator.getInstance(new Locale(str, str2));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.CollatorFactory
    public Collator getCollator(Locale locale) {
        if (locale == DEFAULT_LOCALE) {
            return DEFAULT_COLLATOR;
        }
        return Collator.getInstance(locale);
    }
}
