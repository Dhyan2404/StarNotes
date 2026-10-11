package org.apache.http;

/* loaded from: classes12.dex */
public interface Header extends NameValuePair {
    HeaderElement[] getElements() throws ParseException;
}
