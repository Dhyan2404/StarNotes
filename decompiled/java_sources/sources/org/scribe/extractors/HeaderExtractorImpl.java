package org.scribe.extractors;

import java.util.Map;
import org.scribe.exceptions.OAuthParametersMissingException;
import org.scribe.model.OAuthConstants;
import org.scribe.model.OAuthRequest;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class HeaderExtractorImpl implements HeaderExtractor {
    public static final int ESTIMATED_PARAM_LENGTH = 20;

    /* renamed from: a */
    public static final String f115931a = ", ";

    /* renamed from: b */
    public static final String f115932b = "OAuth ";

    /* renamed from: a */
    public final void m71872a(OAuthRequest oAuthRequest) {
        Preconditions.checkNotNull(oAuthRequest, "Cannot extract a header from a null object");
        if (oAuthRequest.getOauthParameters() == null || oAuthRequest.getOauthParameters().size() <= 0) {
            throw new OAuthParametersMissingException(oAuthRequest);
        }
    }

    @Override // org.scribe.extractors.HeaderExtractor
    public String extract(OAuthRequest oAuthRequest) {
        m71872a(oAuthRequest);
        Map<String, String> oauthParameters = oAuthRequest.getOauthParameters();
        StringBuilder sb = new StringBuilder(oauthParameters.size() * 20);
        sb.append(f115932b);
        for (Map.Entry<String, String> entry : oauthParameters.entrySet()) {
            if (sb.length() > 6) {
                sb.append(", ");
            }
            sb.append(String.format("%s=\"%s\"", entry.getKey(), OAuthEncoder.encode(entry.getValue())));
        }
        if (oAuthRequest.getRealm() != null && !oAuthRequest.getRealm().isEmpty()) {
            sb.append(", ");
            sb.append(String.format("%s=\"%s\"", OAuthConstants.REALM, oAuthRequest.getRealm()));
        }
        return sb.toString();
    }
}
