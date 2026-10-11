package org.xml.sax.helpers;

import org.xml.sax.Parser;

/* loaded from: classes16.dex */
public class ParserFactory {
    private ParserFactory() {
    }

    public static Parser makeParser() throws ClassNotFoundException, IllegalAccessException, InstantiationException, NullPointerException, ClassCastException {
        String systemProperty = SecuritySupport.getSystemProperty("org.xml.sax.parser");
        if (systemProperty != null) {
            return makeParser(systemProperty);
        }
        throw new NullPointerException("No value for sax.parser property");
    }

    public static Parser makeParser(String str) throws ClassNotFoundException, IllegalAccessException, InstantiationException, ClassCastException {
        return (Parser) NewInstance.newInstance(NewInstance.getClassLoader(), str);
    }
}
