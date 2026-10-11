package org.scribe.extractors;

import org.scribe.exceptions.OAuthParametersMissingException;
import org.scribe.model.OAuthRequest;
import org.scribe.model.ParameterList;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class BaseStringExtractorImpl implements BaseStringExtractor {

    /* renamed from: a */
    public static final String f115930a = "%s&%s&%s";

    /* renamed from: a */
    public final void m71870a(OAuthRequest oAuthRequest) {
        Preconditions.checkNotNull(oAuthRequest, "Cannot extract base string from a null object");
        if (oAuthRequest.getOauthParameters() == null || oAuthRequest.getOauthParameters().size() <= 0) {
            throw new OAuthParametersMissingException(oAuthRequest);
        }
    }

    /* renamed from: b */
    public final String m71871b(OAuthRequest oAuthRequest) {
        ParameterList parameterList = new ParameterList();
        parameterList.addAll(oAuthRequest.getQueryStringParams());
        parameterList.addAll(oAuthRequest.getBodyParams());
        parameterList.addAll(new ParameterList(oAuthRequest.getOauthParameters()));
        return parameterList.sort().asOauthBaseString();
    }

    @Override // org.scribe.extractors.BaseStringExtractor
    public String extract(OAuthRequest oAuthRequest) {
        m71870a(oAuthRequest);
        return String.format(f115930a, OAuthEncoder.encode(oAuthRequest.getVerb().name()), OAuthEncoder.encode(oAuthRequest.getSanitizedUrl()), m71871b(oAuthRequest));
    }
}
