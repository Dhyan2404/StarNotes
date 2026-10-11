package org.apache.http.impl.cookie;

import java.io.IOException;
import java.io.Reader;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.util.PublicSuffixList;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class PublicSuffixListParser {

    /* renamed from: a */
    public final PublicSuffixFilter f110874a;

    /* renamed from: b */
    public final org.apache.http.conn.util.PublicSuffixListParser f110875b = new org.apache.http.conn.util.PublicSuffixListParser();

    public PublicSuffixListParser(PublicSuffixFilter publicSuffixFilter) {
        this.f110874a = publicSuffixFilter;
    }

    public void parse(Reader reader) throws IOException {
        PublicSuffixList parse = this.f110875b.parse(reader);
        this.f110874a.setPublicSuffixes(parse.getRules());
        this.f110874a.setExceptions(parse.getExceptions());
    }
}
