package com.sun.org.apache.xerces.internal.jaxp.validation;

import java.io.IOException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
interface ValidatorHelper {
    void validate(Source source, Result result) throws SAXException, IOException;
}
