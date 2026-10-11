package org.scribe.extractors;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.scribe.exceptions.OAuthException;
import org.scribe.model.Token;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class TokenExtractor20Impl implements AccessTokenExtractor {

    /* renamed from: a */
    public static final String f115934a = "access_token=([^&]+)";

    /* renamed from: b */
    public static final String f115935b = "";

    @Override // org.scribe.extractors.AccessTokenExtractor
    public Token extract(String str) {
        Preconditions.checkEmptyString(str, "Response body is incorrect. Can't extract a token from an empty string");
        Matcher matcher = Pattern.compile(f115934a).matcher(str);
        if (matcher.find()) {
            return new Token(OAuthEncoder.decode(matcher.group(1)), "", str);
        }
        throw new OAuthException("Response body is incorrect. Can't extract a token from this: '" + str + CloudStorageConstants.SINGLE_QUOTES, null);
    }
}
