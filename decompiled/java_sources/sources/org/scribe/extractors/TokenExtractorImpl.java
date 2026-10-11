package org.scribe.extractors;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.scribe.exceptions.OAuthException;
import org.scribe.model.Token;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class TokenExtractorImpl implements RequestTokenExtractor, AccessTokenExtractor {

    /* renamed from: a */
    public static final Pattern f115936a = Pattern.compile("oauth_token=([^&]+)");

    /* renamed from: b */
    public static final Pattern f115937b = Pattern.compile("oauth_token_secret=([^&]*)");

    /* renamed from: a */
    public final String m71873a(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() >= 1) {
            return OAuthEncoder.decode(matcher.group(1));
        }
        throw new OAuthException("Response body is incorrect. Can't extract token and secret from this: '" + str + CloudStorageConstants.SINGLE_QUOTES, null);
    }

    @Override // org.scribe.extractors.RequestTokenExtractor, org.scribe.extractors.AccessTokenExtractor
    public Token extract(String str) {
        Preconditions.checkEmptyString(str, "Response body is incorrect. Can't extract a token from an empty string");
        return new Token(m71873a(str, f115936a), m71873a(str, f115937b), str);
    }
}
