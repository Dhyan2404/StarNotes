package org.scribe.extractors;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.scribe.exceptions.OAuthException;
import org.scribe.model.Token;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class JsonTokenExtractor implements AccessTokenExtractor {

    /* renamed from: a */
    public Pattern f115933a = Pattern.compile("\"access_token\":\\s*\"(\\S*?)\"");

    @Override // org.scribe.extractors.AccessTokenExtractor
    public Token extract(String str) {
        Preconditions.checkEmptyString(str, "Cannot extract a token from a null or empty String");
        Matcher matcher = this.f115933a.matcher(str);
        if (matcher.find()) {
            return new Token(matcher.group(1), "", str);
        }
        throw new OAuthException("Cannot extract an access token. Response was: " + str);
    }
}
